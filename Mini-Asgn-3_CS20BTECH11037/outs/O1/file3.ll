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
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  %2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

7:                                                ; preds = %0
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = shl nsw i64 %4, 2
  %11 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #10
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ null, %7 ], [ %11, %9 ]
  br i1 %8, label %20, label %14

14:                                               ; preds = %12
  store i32 0, ptr %13, align 4, !tbaa !5
  %15 = icmp eq i32 %3, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr i32, ptr %13, i64 1
  %18 = shl nsw i64 %4, 2
  %19 = add nsw i64 %18, -4
  call void @llvm.memset.p0.i64(ptr align 4 %17, i8 0, i64 %19, i1 false), !tbaa !5
  br label %20

20:                                               ; preds = %16, %14, %12
  %21 = load i32, ptr %1, align 4, !tbaa !5
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %32, %20
  %24 = phi i32 [ %21, %20 ], [ %34, %32 ]
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = zext i32 %24 to i64
  br label %42

28:                                               ; preds = %20, %32
  %29 = phi i64 [ %33, %32 ], [ 0, %20 ]
  %30 = getelementptr inbounds i32, ptr %13, i64 %29
  %31 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %30)
          to label %32 unwind label %37

32:                                               ; preds = %28
  %33 = add nuw nsw i64 %29, 1
  %34 = load i32, ptr %1, align 4, !tbaa !5
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %28, label %23, !llvm.loop !9

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %84

39:                                               ; preds = %42, %23
  %40 = phi i32 [ -2147483648, %23 ], [ %47, %42 ]
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %40)
          to label %50 unwind label %82

42:                                               ; preds = %26, %42
  %43 = phi i64 [ 0, %26 ], [ %48, %42 ]
  %44 = phi i32 [ -2147483648, %26 ], [ %47, %42 ]
  %45 = getelementptr inbounds i32, ptr %13, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = call i32 @llvm.smax.i32(i32 %44, i32 %46)
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %27
  br i1 %49, label %39, label %42, !llvm.loop !12

50:                                               ; preds = %39
  %51 = load ptr, ptr %41, align 8, !tbaa !13
  %52 = getelementptr i8, ptr %51, i64 -24
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds i8, ptr %41, i64 %53
  %55 = getelementptr inbounds %"class.std::basic_ios", ptr %54, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  invoke void @_ZSt16__throw_bad_castv() #9
          to label %59 unwind label %82

59:                                               ; preds = %58
  unreachable

60:                                               ; preds = %50
  %61 = getelementptr inbounds %"class.std::ctype", ptr %56, i64 0, i32 8
  %62 = load i8, ptr %61, align 8, !tbaa !25
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %"class.std::ctype", ptr %56, i64 0, i32 9, i64 10
  %66 = load i8, ptr %65, align 1, !tbaa !28
  br label %73

67:                                               ; preds = %60
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %56)
          to label %68 unwind label %82

68:                                               ; preds = %67
  %69 = load ptr, ptr %56, align 8, !tbaa !13
  %70 = getelementptr inbounds ptr, ptr %69, i64 6
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef signext i8 %71(ptr noundef nonnull align 8 dereferenceable(570) %56, i8 noundef signext 10)
          to label %73 unwind label %82

73:                                               ; preds = %68, %64
  %74 = phi i8 [ %66, %64 ], [ %72, %68 ]
  %75 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %41, i8 noundef signext %74)
          to label %76 unwind label %82

76:                                               ; preds = %73
  %77 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %75)
          to label %78 unwind label %82

78:                                               ; preds = %76
  %79 = icmp eq ptr %13, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  call void @_ZdlPv(ptr noundef %13) #11
  br label %81

81:                                               ; preds = %78, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret i32 0

82:                                               ; preds = %76, %73, %68, %67, %58, %39
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %84

84:                                               ; preds = %82, %37
  %85 = phi { ptr, i32 } [ %38, %37 ], [ %83, %82 ]
  %86 = icmp eq ptr %13, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %13) #11
  br label %88

88:                                               ; preds = %87, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  resume { ptr, i32 } %85
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!16, !21, i64 240}
!16 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0, !21, i64 216, !7, i64 224, !24, i64 225, !21, i64 232, !21, i64 240, !21, i64 248, !21, i64 256}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !21, i64 200, !23, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !18, i64 8}
!23 = !{!"_ZTSSt6locale", !21, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!26, !7, i64 56}
!26 = !{!"_ZTSSt5ctypeIcE", !27, i64 0, !21, i64 16, !24, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!27 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!28 = !{!7, !7, i64 0}
