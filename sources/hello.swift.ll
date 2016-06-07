; ModuleID = '-'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9"

%Si = type <{ i64 }>
%Vs5Int32 = type <{ i32 }>
%Sp = type <{ i8* }>

@_Tv5hello1aSi = global %Si zeroinitializer, align 8
@_Tv5hello1bSi = global %Si zeroinitializer, align 8
@_Tv5hello6resultSi = global %Si zeroinitializer, align 8
@_TZvOs7Process5_argcVs5Int32 = external global %Vs5Int32, align 4
@globalinit_33_1BDF70FFC18749BAB495A73B459ED2F0_token5 = external global i64, align 8
@_TZvOs7Process11_unsafeArgvGSpGSpVs4Int8__ = external global %Sp, align 8
@llvm.used = appending global [3 x i8*] [i8* bitcast (%Si* @_Tv5hello1aSi to i8*), i8* bitcast (%Si* @_Tv5hello1bSi to i8*), i8* bitcast (%Si* @_Tv5hello6resultSi to i8*)], section "llvm.metadata", align 8

define i32 @main(i32, i8**) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  store i32 %0, i32* getelementptr inbounds (%Vs5Int32, %Vs5Int32* @_TZvOs7Process5_argcVs5Int32, i32 0, i32 0), align 4
  %3 = load i64, i64* @globalinit_33_1BDF70FFC18749BAB495A73B459ED2F0_token5, align 8
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %once_done, label %once_not_done

once_not_done:                                    ; preds = %entry
  call void @swift_once(i64* @globalinit_33_1BDF70FFC18749BAB495A73B459ED2F0_token5, i8* bitcast (void ()* @globalinit_33_1BDF70FFC18749BAB495A73B459ED2F0_func5 to i8*))
  br label %once_done

once_done:                                        ; preds = %once_not_done, %entry
  %5 = load i64, i64* @globalinit_33_1BDF70FFC18749BAB495A73B459ED2F0_token5, align 8
  %6 = icmp eq i64 %5, -1
  call void @llvm.assume(i1 %6)
  store i8* %2, i8** getelementptr inbounds (%Sp, %Sp* @_TZvOs7Process11_unsafeArgvGSpGSpVs4Int8__, i32 0, i32 0), align 8
  store i64 3, i64* getelementptr inbounds (%Si, %Si* @_Tv5hello1aSi, i32 0, i32 0), align 8
  store i64 4, i64* getelementptr inbounds (%Si, %Si* @_Tv5hello1bSi, i32 0, i32 0), align 8
  %7 = load i64, i64* getelementptr inbounds (%Si, %Si* @_Tv5hello1aSi, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%Si, %Si* @_Tv5hello1bSi, i32 0, i32 0), align 8
  %9 = call i64 @_TF5hello3addFTSi1bSi_Si(i64 %7, i64 %8)
  store i64 %9, i64* getelementptr inbounds (%Si, %Si* @_Tv5hello6resultSi, i32 0, i32 0), align 8
  ret i32 0
}

declare void @globalinit_33_1BDF70FFC18749BAB495A73B459ED2F0_func5() #0

declare void @swift_once(i64*, i8*)

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

define hidden i64 @_TF5hello3addFTSi1bSi_Si(i64, i64) #0 {
entry:
  %2 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 0
  %4 = extractvalue { i64, i1 } %2, 1
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %entry
  ret i64 %3

; <label>:6                                       ; preds = %entry
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

attributes #0 = { "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+fxsr,+mmx,+sse,+sse2,+sse3" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !8, !9}

!0 = !{i32 1, !"Objective-C Version", i32 2}
!1 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!2 = !{i32 1, !"Objective-C Image Info Section", !"__DATA, __objc_imageinfo, regular, no_dead_strip"}
!3 = !{i32 4, !"Objective-C Garbage Collection", i32 768}
!4 = !{i32 6, !"Linker Options", !5}
!5 = !{!6, !7}
!6 = !{!"-lswiftCore"}
!7 = !{!"-lobjc"}
!8 = !{i32 1, !"PIC Level", i32 2}
!9 = !{i32 1, !"Swift Version", i32 3}
