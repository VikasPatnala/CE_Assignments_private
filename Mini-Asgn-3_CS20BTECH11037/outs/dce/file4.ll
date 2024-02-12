; ModuleID = './outs/lls/file4.ll'
source_filename = "./inp/file4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.Rectangle = type { i32, i32 }

$_ZN9RectangleC2Ev = comdat any

$_ZN9RectangleC2Eii = comdat any

$_ZN9Rectangle4areaEv = comdat any

$_ZN9Rectangle9perimeterEv = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [16 x i8] c"Area of rect1: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Perimeter of rect1: \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Area of rect2: \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Perimeter of rect2: \00", align 1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #0 {
  %1 = alloca %class.Rectangle, align 4
  %2 = alloca %class.Rectangle, align 4
  call void @_ZN9RectangleC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %1)
  call void @_ZN9RectangleC2Eii(ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 5, i32 noundef 3)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %4 = call noundef i32 @_ZN9Rectangle4areaEv(ptr noundef nonnull align 4 dereferenceable(8) %1)
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %8 = call noundef i32 @_ZN9Rectangle9perimeterEv(ptr noundef nonnull align 4 dereferenceable(8) %1)
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %8)
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %12 = call noundef i32 @_ZN9Rectangle4areaEv(ptr noundef nonnull align 4 dereferenceable(8) %2)
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %12)
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3)
  %16 = call noundef i32 @_ZN9Rectangle9perimeterEv(ptr noundef nonnull align 4 dereferenceable(8) %2)
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %16)
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9RectangleC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 0
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9RectangleC2Eii(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 0
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 1
  store i32 %2, ptr %5, align 4
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Rectangle4areaEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 0
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul nsw i32 %3, %5
  ret i32 %6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Rectangle9perimeterEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 0
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add nsw i32 %3, %5
  %7 = mul nsw i32 2, %6
  ret i32 %7
}

attributes #0 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
