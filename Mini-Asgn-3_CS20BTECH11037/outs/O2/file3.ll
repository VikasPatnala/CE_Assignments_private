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
  br i1 %8, label %54, label %9

9:                                                ; preds = %7
  %10 = shl nuw nsw i64 %4, 2
  %11 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #10
  store i32 0, ptr %11, align 4, !tbaa !5
  %12 = icmp eq i32 %3, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %14, %9
  br label %43

14:                                               ; preds = %9
  %15 = getelementptr i32, ptr %11, i64 1
  %16 = add nsw i64 %10, -4
  call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %16, i1 false), !tbaa !5
  br label %13

17:                                               ; preds = %47
  %18 = icmp sgt i32 %49, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %17
  %20 = zext i32 %49 to i64
  %21 = icmp ult i32 %49, 8
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = and i64 %20, 4294967288
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ 0, %22 ], [ %34, %24 ]
  %26 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %22 ], [ %32, %24 ]
  %27 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %22 ], [ %33, %24 ]
  %28 = getelementptr inbounds i32, ptr %11, i64 %25
  %29 = load <4 x i32>, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %28, i64 4
  %31 = load <4 x i32>, ptr %30, align 4, !tbaa !5
  %32 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %26, <4 x i32> %29)
  %33 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %27, <4 x i32> %31)
  %34 = add nuw i64 %25, 8
  %35 = icmp eq i64 %34, %23
  br i1 %35, label %36, label %24, !llvm.loop !9

36:                                               ; preds = %24
  %37 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %32, <4 x i32> %33)
  %38 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %37)
  %39 = icmp eq i64 %23, %20
  br i1 %39, label %54, label %40

40:                                               ; preds = %19, %36
  %41 = phi i64 [ 0, %19 ], [ %23, %36 ]
  %42 = phi i32 [ -2147483648, %19 ], [ %38, %36 ]
  br label %58

43:                                               ; preds = %13, %47
  %44 = phi i64 [ %48, %47 ], [ 0, %13 ]
  %45 = getelementptr inbounds i32, ptr %11, i64 %44
  %46 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %45)
          to label %47 unwind label %52

47:                                               ; preds = %43
  %48 = add nuw nsw i64 %44, 1
  %49 = load i32, ptr %1, align 4, !tbaa !5
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %43, label %17, !llvm.loop !13

52:                                               ; preds = %43
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %101

54:                                               ; preds = %58, %36, %7, %17
  %55 = phi ptr [ %11, %17 ], [ null, %7 ], [ %11, %36 ], [ %11, %58 ]
  %56 = phi i32 [ -2147483648, %17 ], [ -2147483648, %7 ], [ %38, %36 ], [ %63, %58 ]
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %56)
          to label %66 unwind label %98

58:                                               ; preds = %40, %58
  %59 = phi i64 [ %64, %58 ], [ %41, %40 ]
  %60 = phi i32 [ %63, %58 ], [ %42, %40 ]
  %61 = getelementptr inbounds i32, ptr %11, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = call i32 @llvm.smax.i32(i32 %60, i32 %62)
  %64 = add nuw nsw i64 %59, 1
  %65 = icmp eq i64 %64, %20
  br i1 %65, label %54, label %58, !llvm.loop !14

66:                                               ; preds = %54
  %67 = load ptr, ptr %57, align 8, !tbaa !15
  %68 = getelementptr i8, ptr %67, i64 -24
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds i8, ptr %57, i64 %69
  %71 = getelementptr inbounds %"class.std::basic_ios", ptr %70, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !17
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  invoke void @_ZSt16__throw_bad_castv() #9
          to label %75 unwind label %98

75:                                               ; preds = %74
  unreachable

76:                                               ; preds = %66
  %77 = getelementptr inbounds %"class.std::ctype", ptr %72, i64 0, i32 8
  %78 = load i8, ptr %77, align 8, !tbaa !27
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.std::ctype", ptr %72, i64 0, i32 9, i64 10
  %82 = load i8, ptr %81, align 1, !tbaa !30
  br label %89

83:                                               ; preds = %76
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %72)
          to label %84 unwind label %98

84:                                               ; preds = %83
  %85 = load ptr, ptr %72, align 8, !tbaa !15
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef signext i8 %87(ptr noundef nonnull align 8 dereferenceable(570) %72, i8 noundef signext 10)
          to label %89 unwind label %98

89:                                               ; preds = %84, %80
  %90 = phi i8 [ %82, %80 ], [ %88, %84 ]
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %57, i8 noundef signext %90)
          to label %92 unwind label %98

92:                                               ; preds = %89
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %94 unwind label %98

94:                                               ; preds = %92
  %95 = icmp eq ptr %55, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  call void @_ZdlPv(ptr noundef nonnull %55) #11
  br label %97

97:                                               ; preds = %94, %96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret i32 0

98:                                               ; preds = %54, %74, %83, %84, %89, %92
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = icmp eq ptr %55, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %52, %98
  %102 = phi { ptr, i32 } [ %53, %52 ], [ %99, %98 ]
  %103 = phi ptr [ %11, %52 ], [ %55, %98 ]
  call void @_ZdlPv(ptr noundef nonnull %103) #11
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi { ptr, i32 } [ %102, %101 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  resume { ptr, i32 } %105
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !12, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !23, i64 240}
!18 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0, !23, i64 216, !7, i64 224, !26, i64 225, !23, i64 232, !23, i64 240, !23, i64 248, !23, i64 256}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !25, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !20, i64 8}
!25 = !{!"_ZTSSt6locale", !23, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!28, !7, i64 56}
!28 = !{!"_ZTSSt5ctypeIcE", !29, i64 0, !23, i64 16, !26, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!29 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!30 = !{!7, !7, i64 0}
