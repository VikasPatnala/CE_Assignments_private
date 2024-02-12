; ModuleID = './outs/lls/file5.ll'
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

$_ZN6CircleC2Ed = comdat any

$_ZN9RectangleC2Edd = comdat any

$_ZN5ShapeC2Ev = comdat any

$_ZNK6Circle4drawEv = comdat any

$_ZNK6Circle4areaEv = comdat any

$_ZNK5Shape4drawEv = comdat any

$_ZNK5Shape4areaEv = comdat any

$_ZNK9Rectangle4drawEv = comdat any

$_ZNK9Rectangle4areaEv = comdat any

$_ZTV6Circle = comdat any

$_ZTS6Circle = comdat any

$_ZTS5Shape = comdat any

$_ZTI5Shape = comdat any

$_ZTI6Circle = comdat any

$_ZTV5Shape = comdat any

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
@_ZTV5Shape = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI5Shape, ptr @_ZNK5Shape4drawEv, ptr @_ZNK5Shape4areaEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Drawing a shape\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Drawing a circle\00", align 1
@_ZTV9Rectangle = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI9Rectangle, ptr @_ZNK9Rectangle4drawEv, ptr @_ZNK9Rectangle4areaEv] }, comdat, align 8
@_ZTS9Rectangle = linkonce_odr dso_local constant [11 x i8] c"9Rectangle\00", comdat, align 1
@_ZTI9Rectangle = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9Rectangle, ptr @_ZTI5Shape }, comdat, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Drawing a rectangle\00", align 1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #0 {
  %1 = alloca %class.Circle, align 8
  %2 = alloca %class.Rectangle, align 8
  %3 = alloca [2 x ptr], align 16
  call void @_ZN6CircleC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef 5.000000e+00)
  call void @_ZN9RectangleC2Edd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 3.000000e+00, double noundef 4.000000e+00)
  %4 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 0
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  store ptr %2, ptr %5, align 8
  br label %6

6:                                                ; preds = %25, %0
  %.0 = phi i32 [ 0, %0 ], [ %26, %25 ]
  %7 = icmp slt i32 %.0, 2
  br i1 %7, label %8, label %27

8:                                                ; preds = %6
  %9 = sext i32 %.0 to i64
  %10 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 0
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %16 = sext i32 %.0 to i64
  %17 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef double %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %22)
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %25

25:                                               ; preds = %8
  %26 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !6

27:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6CircleC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) unnamed_addr #1 comdat align 2 {
  call void @_ZN5ShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV6Circle, i32 0, inrange i32 0, i32 2), ptr %0, align 8
  %3 = getelementptr inbounds %class.Circle, ptr %0, i32 0, i32 1
  store double %1, ptr %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9RectangleC2Edd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, double noundef %2) unnamed_addr #1 comdat align 2 {
  call void @_ZN5ShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV9Rectangle, i32 0, inrange i32 0, i32 2), ptr %0, align 8
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 1
  store double %1, ptr %4, align 8
  %5 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 2
  store double %2, ptr %5, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN5ShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV5Shape, i32 0, inrange i32 0, i32 2), ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK6Circle4drawEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK6Circle4areaEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Circle, ptr %0, i32 0, i32 1
  %3 = load double, ptr %2, align 8
  %4 = fmul double 3.140000e+00, %3
  %5 = getelementptr inbounds %class.Circle, ptr %0, i32 0, i32 1
  %6 = load double, ptr %5, align 8
  %7 = fmul double %4, %6
  ret double %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK5Shape4drawEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  %2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK5Shape4areaEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK9Rectangle4drawEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK9Rectangle4areaEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 1
  %3 = load double, ptr %2, align 8
  %4 = getelementptr inbounds %class.Rectangle, ptr %0, i32 0, i32 2
  %5 = load double, ptr %4, align 8
  %6 = fmul double %3, %5
  ret double %6
}

attributes #0 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
