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
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

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

; Function Attrs: norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca %class.Circle, align 8
  %2 = alloca %class.Rectangle, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV6Circle, i64 0, inrange i32 0, i64 2), ptr %1, align 8, !tbaa !5
  %3 = getelementptr inbounds %class.Circle, ptr %1, i64 0, i32 1
  store double 5.000000e+00, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV9Rectangle, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %class.Rectangle, ptr %2, i64 0, i32 1
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, ptr %4, align 8, !tbaa !13
  call void @_ZNK6Circle4drawEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef double %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %9)
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = getelementptr inbounds %"class.std::basic_ios", ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %31, %0
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

19:                                               ; preds = %0
  %20 = getelementptr inbounds %"class.std::ctype", ptr %16, i64 0, i32 8
  %21 = load i8, ptr %20, align 8, !tbaa !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.std::ctype", ptr %16, i64 0, i32 9, i64 10
  %25 = load i8, ptr %24, align 1, !tbaa !28
  br label %31

26:                                               ; preds = %19
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %27 = load ptr, ptr %16, align 8, !tbaa !5
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef signext i8 %29(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i8 [ %25, %23 ], [ %30, %26 ]
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext %32)
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %33)
  call void @_ZNK9Rectangle4drawEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  %36 = load ptr, ptr %2, align 8, !tbaa !5
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef double %38(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %39)
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = getelementptr i8, ptr %41, i64 -24
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  %45 = getelementptr inbounds %"class.std::basic_ios", ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %18, label %48

48:                                               ; preds = %31
  %49 = getelementptr inbounds %"class.std::ctype", ptr %46, i64 0, i32 8
  %50 = load i8, ptr %49, align 8, !tbaa !25
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.std::ctype", ptr %46, i64 0, i32 9, i64 10
  %54 = load i8, ptr %53, align 1, !tbaa !28
  br label %60

55:                                               ; preds = %48
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %46)
  %56 = load ptr, ptr %46, align 8, !tbaa !5
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef signext i8 %58(ptr noundef nonnull align 8 dereferenceable(570) %46, i8 noundef signext 10)
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i8 [ %54, %52 ], [ %59, %55 ]
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %40, i8 noundef signext %61)
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %62)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6Circle4drawEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 16)
  %3 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %4 = getelementptr i8, ptr %3, i64 -24
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %5
  %7 = getelementptr inbounds %"class.std::basic_ios", ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #7
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 9, i64 10
  %17 = load i8, ptr %16, align 1, !tbaa !28
  br label %23

18:                                               ; preds = %11
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %8)
  %19 = load ptr, ptr %8, align 8, !tbaa !5
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef signext i8 %21(ptr noundef nonnull align 8 dereferenceable(570) %8, i8 noundef signext 10)
  br label %23

23:                                               ; preds = %15, %18
  %24 = phi i8 [ %17, %15 ], [ %22, %18 ]
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %24)
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %25)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK6Circle4areaEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %class.Circle, ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !8
  %4 = fmul double %3, 3.140000e+00
  %5 = fmul double %3, %4
  ret double %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK9Rectangle4drawEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 19)
  %3 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %4 = getelementptr i8, ptr %3, i64 -24
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %5
  %7 = getelementptr inbounds %"class.std::basic_ios", ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #7
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 9, i64 10
  %17 = load i8, ptr %16, align 1, !tbaa !28
  br label %23

18:                                               ; preds = %11
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %8)
  %19 = load ptr, ptr %8, align 8, !tbaa !5
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef signext i8 %21(ptr noundef nonnull align 8 dereferenceable(570) %8, i8 noundef signext 10)
  br label %23

23:                                               ; preds = %15, %18
  %24 = phi i8 [ %17, %15 ], [ %22, %18 ]
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %24)
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %25)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK9Rectangle4areaEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %class.Rectangle, ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !29
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !31
  %6 = fmul double %3, %5
  ret double %6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

attributes #0 = { norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!14 = !{!15, !20, i64 240}
!15 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0, !20, i64 216, !12, i64 224, !24, i64 225, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !21, i64 48, !12, i64 64, !22, i64 192, !20, i64 200, !23, i64 208}
!17 = !{!"long", !12, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!20 = !{!"any pointer", !12, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !17, i64 8}
!22 = !{!"int", !12, i64 0}
!23 = !{!"_ZTSSt6locale", !20, i64 0}
!24 = !{!"bool", !12, i64 0}
!25 = !{!26, !12, i64 56}
!26 = !{!"_ZTSSt5ctypeIcE", !27, i64 0, !20, i64 16, !24, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!27 = !{!"_ZTSNSt6locale5facetE", !22, i64 8}
!28 = !{!12, !12, i64 0}
!29 = !{!30, !11, i64 8}
!30 = !{!"_ZTS9Rectangle", !10, i64 0, !11, i64 8, !11, i64 16}
!31 = !{!30, !11, i64 16}
