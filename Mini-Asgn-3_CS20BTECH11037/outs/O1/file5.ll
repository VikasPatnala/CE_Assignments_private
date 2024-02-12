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
  %3 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV6Circle, i64 0, inrange i32 0, i64 2), ptr %1, align 8, !tbaa !5
  %4 = getelementptr inbounds %class.Circle, ptr %1, i64 0, i32 1
  store double 5.000000e+00, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV9Rectangle, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !5
  %5 = getelementptr inbounds %class.Rectangle, ptr %2, i64 0, i32 1
  store double 3.000000e+00, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %class.Rectangle, ptr %2, i64 0, i32 2
  store double 4.000000e+00, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  store ptr %1, ptr %3, align 16, !tbaa !16
  %7 = getelementptr inbounds ptr, ptr %3, i64 1
  store ptr %2, ptr %7, align 8, !tbaa !16
  br label %9

8:                                                ; preds = %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #6
  ret i32 0

9:                                                ; preds = %0, %41
  %10 = phi i64 [ 0, %0 ], [ %45, %41 ]
  %11 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  %16 = load ptr, ptr %12, align 8, !tbaa !5
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef double %18(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %19)
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = getelementptr inbounds %"class.std::basic_ios", ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

29:                                               ; preds = %9
  %30 = getelementptr inbounds %"class.std::ctype", ptr %26, i64 0, i32 8
  %31 = load i8, ptr %30, align 8, !tbaa !28
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.std::ctype", ptr %26, i64 0, i32 9, i64 10
  %35 = load i8, ptr %34, align 1, !tbaa !31
  br label %41

36:                                               ; preds = %29
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %26)
  %37 = load ptr, ptr %26, align 8, !tbaa !5
  %38 = getelementptr inbounds ptr, ptr %37, i64 6
  %39 = load ptr, ptr %38, align 8
  %40 = call noundef signext i8 %39(ptr noundef nonnull align 8 dereferenceable(570) %26, i8 noundef signext 10)
  br label %41

41:                                               ; preds = %33, %36
  %42 = phi i8 [ %35, %33 ], [ %40, %36 ]
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext %42)
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %43)
  %45 = add nuw nsw i64 %10, 1
  %46 = icmp eq i64 %10, 0
  br i1 %46, label %9, label %8, !llvm.loop !32
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
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #7
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !28
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 9, i64 10
  %17 = load i8, ptr %16, align 1, !tbaa !31
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
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #7
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !28
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.std::ctype", ptr %8, i64 0, i32 9, i64 10
  %17 = load i8, ptr %16, align 1, !tbaa !31
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
  %3 = load double, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !15
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
!13 = !{!14, !11, i64 8}
!14 = !{!"_ZTS9Rectangle", !10, i64 0, !11, i64 8, !11, i64 16}
!15 = !{!14, !11, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!19, !17, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !17, i64 216, !12, i64 224, !27, i64 225, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !17, i64 40, !24, i64 48, !12, i64 64, !25, i64 192, !17, i64 200, !26, i64 208}
!21 = !{!"long", !12, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !21, i64 8}
!25 = !{!"int", !12, i64 0}
!26 = !{!"_ZTSSt6locale", !17, i64 0}
!27 = !{!"bool", !12, i64 0}
!28 = !{!29, !12, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !17, i64 16, !27, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !25, i64 8}
!31 = !{!12, !12, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
