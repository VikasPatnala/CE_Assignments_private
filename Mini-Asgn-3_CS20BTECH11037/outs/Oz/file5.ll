; ModuleID = './inp/file5.cpp'
source_filename = "./inp/file5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.Circle = type { %class.Shape, double }
%class.Shape = type { ptr }
%class.Rectangle = type { %class.Shape, double, double }

$_ZNK6Circle4drawEv = comdat any

$_ZNK6Circle4areaEv = comdat any

$_ZNK9Rectangle4drawEv = comdat any

$_ZNK9Rectangle4areaEv = comdat any

$_ZTV6Circle = comdat any

$_ZTS6Circle = comdat any

$_ZTS5Shape = comdat any

$_ZTI5Shape = comdat any

$_ZTI6Circle = comdat any

$_ZTV9Rectangle = comdat any

$_ZTS9Rectangle = comdat any

$_ZTI9Rectangle = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [7 x i8] c"Area: \00", align 1
@_ZTV6Circle = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI6Circle, ptr @_ZNK6Circle4drawEv, ptr @_ZNK6Circle4areaEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS6Circle = linkonce_odr dso_local constant [8 x i8] c"6Circle\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS5Shape = linkonce_odr dso_local constant [7 x i8] c"5Shape\00", comdat, align 1
@_ZTI5Shape = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS5Shape }, comdat, align 8
@_ZTI6Circle = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS6Circle, ptr @_ZTI5Shape }, comdat, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Drawing a circle\00", align 1
@_ZTV9Rectangle = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI9Rectangle, ptr @_ZNK9Rectangle4drawEv, ptr @_ZNK9Rectangle4areaEv] }, comdat, align 8
@_ZTS9Rectangle = linkonce_odr dso_local constant [11 x i8] c"9Rectangle\00", comdat, align 1
@_ZTI9Rectangle = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9Rectangle, ptr @_ZTI5Shape }, comdat, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Drawing a rectangle\00", align 1

; Function Attrs: minsize norecurse optsize uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca %class.Circle, align 8
  %2 = alloca %class.Rectangle, align 8
  %3 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV6Circle, i64 0, inrange i32 0, i64 2), ptr %1, align 8, !tbaa !5
  %4 = getelementptr inbounds %class.Circle, ptr %1, i64 0, i32 1
  store double 5.000000e+00, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV9Rectangle, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !5
  %5 = getelementptr inbounds %class.Rectangle, ptr %2, i64 0, i32 1
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  store ptr %1, ptr %3, align 16, !tbaa !14
  %6 = getelementptr inbounds ptr, ptr %3, i64 1
  store ptr %2, ptr %6, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %11, %0
  %8 = phi i64 [ %23, %11 ], [ 0, %0 ]
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #6
  ret i32 0

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str) #7
  %17 = load ptr, ptr %13, align 8, !tbaa !5
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef double %19(ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef %20) #7
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %21) #7
  %23 = add nuw nsw i64 %8, 1
  br label %7, !llvm.loop !16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint minsize mustprogress optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint minsize mustprogress optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: minsize mustprogress optsize uwtable
define linkonce_odr dso_local void @_ZNK6Circle4drawEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2) #7
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  ret void
}

; Function Attrs: minsize mustprogress nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6Circle4areaEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Circle, ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !8
  %4 = fmul double %3, 3.140000e+00
  %5 = fmul double %3, %4
  ret double %5
}

; Function Attrs: minsize mustprogress optsize uwtable
define linkonce_odr dso_local void @_ZNK9Rectangle4drawEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3) #7
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  ret void
}

; Function Attrs: minsize mustprogress nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK9Rectangle4areaEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Rectangle, ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !20
  %6 = fmul double %3, %5
  ret double %6
}

; Function Attrs: minsize optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

attributes #0 = { minsize norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint minsize mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { minsize optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 8}
!9 = !{!"_ZTS6Circle", !10, i64 0, !11, i64 8}
!10 = !{!"_ZTS5Shape"}
!11 = !{!"double", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !12, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !11, i64 8}
!19 = !{!"_ZTS9Rectangle", !10, i64 0, !11, i64 8, !11, i64 16}
!20 = !{!19, !11, i64 16}
