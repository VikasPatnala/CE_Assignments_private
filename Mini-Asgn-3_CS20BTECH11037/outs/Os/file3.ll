; ModuleID = './inp/file3.cpp'
source_filename = "./inp/file3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }

$_ZNSt6vectorIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca i32, align 4
  %2 = alloca %"class.std::vector", align 8
  %3 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  %4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  %5 = load i32, ptr %1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  call void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %7 = load i32, ptr %1, align 4, !tbaa !5
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %14, label %26

9:                                                ; preds = %19
  %10 = icmp sgt i32 %21, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %9
  %12 = load ptr, ptr %2, align 8, !tbaa !9
  %13 = zext i32 %21 to i64
  br label %29

14:                                               ; preds = %0, %19
  %15 = phi i64 [ %20, %19 ], [ 0, %0 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !9
  %17 = getelementptr inbounds i32, ptr %16, i64 %15
  %18 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %17) #11
          to label %19 unwind label %24

19:                                               ; preds = %14
  %20 = add nuw nsw i64 %15, 1
  %21 = load i32, ptr %1, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %14, label %9, !llvm.loop !12

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %54

26:                                               ; preds = %29, %0, %9
  %27 = phi i32 [ -2147483648, %9 ], [ -2147483648, %0 ], [ %34, %29 ]
  %28 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %27) #11
          to label %37 unwind label %52

29:                                               ; preds = %11, %29
  %30 = phi i64 [ 0, %11 ], [ %35, %29 ]
  %31 = phi i32 [ -2147483648, %11 ], [ %34, %29 ]
  %32 = getelementptr inbounds i32, ptr %12, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = call i32 @llvm.smax.i32(i32 %31, i32 %33)
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, %13
  br i1 %36, label %26, label %29, !llvm.loop !14

37:                                               ; preds = %26
  %38 = load ptr, ptr %28, align 8, !tbaa !15
  %39 = getelementptr i8, ptr %38, i64 -24
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds i8, ptr %28, i64 %40
  %42 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %41, i8 noundef signext 10) #11
          to label %43 unwind label %52

43:                                               ; preds = %37
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %28, i8 noundef signext %42) #11
          to label %45 unwind label %52

45:                                               ; preds = %43
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #11
          to label %47 unwind label %52

47:                                               ; preds = %45
  %48 = load ptr, ptr %2, align 8, !tbaa !9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef nonnull %48) #12
  br label %51

51:                                               ; preds = %47, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  ret i32 0

52:                                               ; preds = %45, %43, %37, %26
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %54

54:                                               ; preds = %52, %24
  %55 = phi { ptr, i32 } [ %25, %24 ], [ %53, %52 ]
  %56 = load ptr, ptr %2, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef nonnull %56) #12
  br label %59

59:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  resume { ptr, i32 } %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %18

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #11
  store ptr %10, ptr %0, align 8, !tbaa !9
  %11 = getelementptr inbounds i32, ptr %10, i64 %1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !17
  store i32 0, ptr %10, align 4, !tbaa !5
  %13 = getelementptr i32, ptr %10, i64 1
  %14 = icmp eq i64 %1, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = shl nuw nsw i64 %1, 2
  %17 = add nsw i64 %16, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %17, i1 false), !tbaa !5
  br label %18

18:                                               ; preds = %15, %9, %8
  %19 = phi ptr [ %13, %9 ], [ %11, %15 ], [ null, %8 ]
  %20 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !19

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #14
  ret ptr %11
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress optsize uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { noreturn optsize }
attributes #14 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!10, !11, i64 16}
!18 = !{!10, !11, i64 8}
!19 = !{!"branch_weights", i32 1, i32 2000}
