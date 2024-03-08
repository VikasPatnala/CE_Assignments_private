#include "llvm/ADT/SetVector.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Demangle/Demangle.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Type.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

static cl::opt<std::string>
    varName("var-name", cl::Hidden,
            cl::desc("variable name to get the foot print"));

namespace {

struct varftprint {
  Value* v;
  std::string vName;
  std::pair<int, int> scope;
  std::set<int> ftprints;
  SetVector<Value*> aliases;
  int reads;
  int writes;

  varftprint(Value *v, std::string vName)
      : v(v), vName(vName), reads(0), writes(0) {}
  
  void printFTP() {
    errs() << "Variable Name: " << vName << "\n";
    // errs() << "Variable Scope: " << scope.first << ":" << scope.second << "\n";
    errs() << "Footprint: ";

    int sz = ftprints.size();
    for (auto i : ftprints) {
      errs() << i;
      sz--;
      if (sz) errs() << ", ";
      else errs() << "\n";
    }

    errs() << "Number of Reads: " << reads << "\n";
    errs() << "Number of Writes: " << writes << "\n";
  }
};

typedef SetVector<std::pair<Value *, Value *>> AAPairs;

AAPairs doAliasAnalysis(Function &F, FunctionAnalysisManager &FAM) {
  const DataLayout &DL = F.getParent()->getDataLayout();

  AAPairs Aliases;

  SetVector<std::pair<Value *, Type *>> Pointers;

  AAResults &AA = FAM.getResult<AAManager>(F);

  for (Instruction &I : instructions(F)) {
    if (auto *LI = dyn_cast<LoadInst>(&I)) {
      Pointers.insert({LI->getPointerOperand(), LI->getType()});
    } else if (auto *SI = dyn_cast<StoreInst>(&I)) {
      Pointers.insert(
          {SI->getPointerOperand(), SI->getValueOperand()->getType()});
    }
  }

  for (auto I1 = Pointers.begin(), E = Pointers.end(); I1 != E; ++I1) {
    LocationSize Size1 = LocationSize::precise(DL.getTypeStoreSize(I1->second));
    for (auto I2 = Pointers.begin(); I2 != I1; ++I2) {
      LocationSize Size2 =
          LocationSize::precise(DL.getTypeStoreSize(I2->second));
      AliasResult AR = AA.alias(I1->first, Size1, I2->first, Size2);
      if (AR != AliasResult::NoAlias) {
        Aliases.insert({I1->first, I2->first});
      }
    }
  }

  return Aliases;
}

void getAliases(varftprint &ft, AAPairs &Aliases) {
  for (auto A : Aliases) {
    if (A.first == ft.v) {
      (ft.aliases).insert(A.second);
    } else if (A.second == ft.v) {
      (ft.aliases).insert(A.first);
    }
  }
}

bool getInstEqual(Value* V, varftprint &ft) {
  if (V == ft.v) return true;
  for (auto i : ft.aliases) {
    if (i == V) {
      return true;
    }
  }
  return false;
}

int getNumIters(Loop *L, Value *V, ScalarEvolution &SE) {
  if (auto *I = dyn_cast<Instruction>(V)) {
    if (L) {
      if (L->contains(I)) {
        errs() << *SE.getBackedgeTakenCount(L) << "\n";
        errs() << "HAI\n";
        return 100;
      }
    }
  }
  return 0;
}

int getLoopInfo(LoopInfo &LI, Value *V, ScalarEvolution &SE) {
  for (Loop *L : LI) {
    int res = getNumIters(L, V, SE);
    if (res != 0) {
      return res;
    }
  }
  return 0;
}

void getReadWrites(Instruction *currI, Instruction *prevI, varftprint &ft,
                   LoopInfo &LoopI, ScalarEvolution &SE) {
  errs() << *currI << "\n";
  if (auto *SI = dyn_cast<StoreInst>(currI)) {
    if (SI->getValueOperand() == prevI) {
      ft.reads++;
      errs() << getLoopInfo(LoopI, SI->getValueOperand(), SE) << "\n";
      errs() << "read\n";
    } else if (SI->getPointerOperand() == prevI) {
      ft.writes++;
      errs() << getLoopInfo(LoopI, SI->getPointerOperand(), SE) << "\n";
      errs() << "write\n";
    }
    errs() << "_________\n";
    return;
  }

  if (dyn_cast<ReturnInst>(currI)) {
    ft.reads++;
    errs() << getLoopInfo(LoopI, currI, SE) << "\n";
    errs() << "read\n";
    errs() << "_________\n";
    return;
  }

  if (dyn_cast<ICmpInst>(currI) || dyn_cast<FCmpInst>(currI)) {
    ft.reads++;
    errs() << getLoopInfo(LoopI, currI, SE) << "\n";
    errs() << "read\n";
    errs() << "_________\n";
    return;
  }

  Value *use;

  if (auto *LI = dyn_cast<LoadInst>(currI)) {
    use = LI;
    for (auto *U : use->users()) {
      if (auto *II = dyn_cast<Instruction>(U)) {
        getReadWrites(II, currI, ft, LoopI, SE);
      }
    }
  }

  if (auto *BI = dyn_cast<BinaryOperator>(currI)) {
    use = BI;
    for (auto *U : use->users()) {
      if (auto *II = dyn_cast<Instruction>(U)) {
        getReadWrites(II, currI, ft, LoopI, SE);
      }
    }
  }
}

void visitor(Function &F, FunctionAnalysisManager &FAM) {

  errs() << "Function Name: " << F.getName() << "\n";

  LoopInfo &LoopI = FAM.getResult<LoopAnalysis>(F);
  ScalarEvolution &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);

  std::vector<varftprint> vars;

  for (auto &BB : F) {
    for (auto &I : BB) {
      if (auto *D = dyn_cast<DbgDeclareInst>(&I)) {
        if (D->getVariable()->getName() == varName) {
          Value *V = D->getAddress();
          vars.push_back(varftprint(V, varName));
          errs() << *V << "\n";
        }
      }
    }
  }

  AAPairs AA = doAliasAnalysis(F, FAM);

  for (auto ft : vars) {

    getAliases(ft, AA);

    std::vector<Value*> worklist;
    for (auto *U : (ft.v)->users()) {
      worklist.push_back(U);
    }

    for (auto *Aliases : (ft.aliases)) {
        worklist.push_back(Aliases);
    }

    while (!worklist.empty()) {
      auto *itr = worklist.front();
      worklist.erase(worklist.begin());
      if (auto *I = dyn_cast<Instruction>(itr)) {
        // add the line no of the instruction to the ftprints array
        if (I->getDebugLoc())
          (ft.ftprints).insert(I->getDebugLoc().getLine());

        if (auto *SI = dyn_cast<StoreInst>(I)) {
          if (getInstEqual(SI->getValueOperand(), ft)) {
            errs() << getLoopInfo(LoopI, SI->getValueOperand(), SE) << "\n";
            ft.reads++;
            errs() << "read\n";
          } else if (getInstEqual(SI->getPointerOperand(), ft)) {
            errs() << getLoopInfo(LoopI, SI->getPointerOperand(), SE) << "\n";
            ft.writes++;
            errs() << "write\n";
          }
          errs() << *SI << "\n";
          errs() << "_________\n";
        } else {
          getReadWrites(I, NULL, ft, LoopI, SE);
        }        
      }
    }
    ft.printFTP();
  }
}

struct Footprint : PassInfoMixin<Footprint> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    visitor(F, FAM);
    return PreservedAnalyses::all();
  }
  static bool isRequired() { return true; }
};
}

llvm::PassPluginLibraryInfo getFootprintPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "Footprint", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "ftprint") {
                    FPM.addPass(Footprint());
                    return true;
                  }
                  return false;
                });
          }};
}

extern "C" LLVM_ATTRIBUTE_WEAK::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getFootprintPluginInfo();
}