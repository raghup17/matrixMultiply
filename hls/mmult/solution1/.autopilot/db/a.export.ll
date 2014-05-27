; ModuleID = '/home/raghu/work/projects/matrixMultiply/hls/mmult/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str4 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [10 x i8] c"mmult_top\00"

define weak void @_ssdm_op_SpecBus(...) nounwind {
entry:
  ret void
}

declare i256 @llvm.part.select.i256(i256, i32, i32) nounwind readnone

declare i256 @llvm.part.set.i256.i32(i256, i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define void @mmult_top(i256* %a, i256* %b, i256* %c) {
  %arow_63 = alloca i32, align 4
  %arow_63_1 = alloca i32, align 4
  %arow_63_2 = alloca i32, align 4
  %arow_63_3 = alloca i32, align 4
  %arow_63_4 = alloca i32, align 4
  %arow_63_5 = alloca i32, align 4
  %arow_63_6 = alloca i32, align 4
  %arow_63_7 = alloca i32, align 4
  %arow_63_8 = alloca i32, align 4
  %arow_63_9 = alloca i32, align 4
  %arow_63_10 = alloca i32, align 4
  %arow_63_11 = alloca i32, align 4
  %arow_63_12 = alloca i32, align 4
  %arow_63_13 = alloca i32, align 4
  %arow_63_14 = alloca i32, align 4
  %arow_63_15 = alloca i32, align 4
  %arow_63_16 = alloca i32, align 4
  %arow_63_17 = alloca i32, align 4
  %arow_63_18 = alloca i32, align 4
  %arow_63_19 = alloca i32, align 4
  %arow_63_20 = alloca i32, align 4
  %arow_63_21 = alloca i32, align 4
  %arow_63_22 = alloca i32, align 4
  %arow_63_23 = alloca i32, align 4
  %arow_63_24 = alloca i32, align 4
  %arow_63_25 = alloca i32, align 4
  %arow_63_26 = alloca i32, align 4
  %arow_63_27 = alloca i32, align 4
  %arow_63_28 = alloca i32, align 4
  %arow_63_29 = alloca i32, align 4
  %arow_63_30 = alloca i32, align 4
  %arow_63_31 = alloca i32, align 4
  %arow_63_32 = alloca i32, align 4
  %arow_63_33 = alloca i32, align 4
  %arow_63_34 = alloca i32, align 4
  %arow_63_35 = alloca i32, align 4
  %arow_63_36 = alloca i32, align 4
  %arow_63_37 = alloca i32, align 4
  %arow_63_38 = alloca i32, align 4
  %arow_63_39 = alloca i32, align 4
  %arow_63_40 = alloca i32, align 4
  %arow_63_41 = alloca i32, align 4
  %arow_63_42 = alloca i32, align 4
  %arow_63_43 = alloca i32, align 4
  %arow_63_44 = alloca i32, align 4
  %arow_63_45 = alloca i32, align 4
  %arow_63_46 = alloca i32, align 4
  %arow_63_47 = alloca i32, align 4
  %arow_63_48 = alloca i32, align 4
  %arow_63_49 = alloca i32, align 4
  %arow_63_50 = alloca i32, align 4
  %arow_63_51 = alloca i32, align 4
  %arow_63_52 = alloca i32, align 4
  %arow_63_53 = alloca i32, align 4
  %arow_63_54 = alloca i32, align 4
  %arow_63_55 = alloca i32, align 4
  %arow_63_56 = alloca i32, align 4
  %arow_63_57 = alloca i32, align 4
  %arow_63_58 = alloca i32, align 4
  %arow_63_59 = alloca i32, align 4
  %arow_63_60 = alloca i32, align 4
  %arow_63_61 = alloca i32, align 4
  %arow_63_62 = alloca i32, align 4
  %arow_63_63 = alloca i32, align 4
  %brow_63 = alloca i32, align 4
  %brow_63_1 = alloca i32, align 4
  %brow_63_2 = alloca i32, align 4
  %brow_63_3 = alloca i32, align 4
  %brow_63_4 = alloca i32, align 4
  %brow_63_5 = alloca i32, align 4
  %brow_63_6 = alloca i32, align 4
  %brow_63_7 = alloca i32, align 4
  %brow_63_8 = alloca i32, align 4
  %brow_63_9 = alloca i32, align 4
  %brow_63_10 = alloca i32, align 4
  %brow_63_11 = alloca i32, align 4
  %brow_63_12 = alloca i32, align 4
  %brow_63_13 = alloca i32, align 4
  %brow_63_14 = alloca i32, align 4
  %brow_63_15 = alloca i32, align 4
  %brow_63_16 = alloca i32, align 4
  %brow_63_17 = alloca i32, align 4
  %brow_63_18 = alloca i32, align 4
  %brow_63_19 = alloca i32, align 4
  %brow_63_20 = alloca i32, align 4
  %brow_63_21 = alloca i32, align 4
  %brow_63_22 = alloca i32, align 4
  %brow_63_23 = alloca i32, align 4
  %brow_63_24 = alloca i32, align 4
  %brow_63_25 = alloca i32, align 4
  %brow_63_26 = alloca i32, align 4
  %brow_63_27 = alloca i32, align 4
  %brow_63_28 = alloca i32, align 4
  %brow_63_29 = alloca i32, align 4
  %brow_63_30 = alloca i32, align 4
  %brow_63_31 = alloca i32, align 4
  %brow_63_32 = alloca i32, align 4
  %brow_63_33 = alloca i32, align 4
  %brow_63_34 = alloca i32, align 4
  %brow_63_35 = alloca i32, align 4
  %brow_63_36 = alloca i32, align 4
  %brow_63_37 = alloca i32, align 4
  %brow_63_38 = alloca i32, align 4
  %brow_63_39 = alloca i32, align 4
  %brow_63_40 = alloca i32, align 4
  %brow_63_41 = alloca i32, align 4
  %brow_63_42 = alloca i32, align 4
  %brow_63_43 = alloca i32, align 4
  %brow_63_44 = alloca i32, align 4
  %brow_63_45 = alloca i32, align 4
  %brow_63_46 = alloca i32, align 4
  %brow_63_47 = alloca i32, align 4
  %brow_63_48 = alloca i32, align 4
  %brow_63_49 = alloca i32, align 4
  %brow_63_50 = alloca i32, align 4
  %brow_63_51 = alloca i32, align 4
  %brow_63_52 = alloca i32, align 4
  %brow_63_53 = alloca i32, align 4
  %brow_63_54 = alloca i32, align 4
  %brow_63_55 = alloca i32, align 4
  %brow_63_56 = alloca i32, align 4
  %brow_63_57 = alloca i32, align 4
  %brow_63_58 = alloca i32, align 4
  %brow_63_59 = alloca i32, align 4
  %brow_63_60 = alloca i32, align 4
  %brow_63_61 = alloca i32, align 4
  %brow_63_62 = alloca i32, align 4
  %brow_63_63 = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %a), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %b), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %c), !map !17
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecBus(i256* %a, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i256* %a, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i256* %b, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i256* %b, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i256* %c, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i256* %c, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %rowIdx = phi i7 [ 0, %0 ], [ %rowIdx_1, %.preheader ]
  %exitcond8 = icmp eq i7 %rowIdx, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %rowIdx_1 = add i7 %rowIdx, 1
  br i1 %exitcond8, label %11, label %1

; <label>:1                                       ; preds = %.loopexit
  %tmp_5 = trunc i7 %rowIdx to i6
  %rowBaseIdx = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %tmp_5, i3 0)
  br label %2

; <label>:2                                       ; preds = %6, %1
  %indvars_iv4 = phi i7 [ 8, %1 ], [ %indvars_iv_next5, %6 ]
  %k = phi i7 [ 0, %1 ], [ %k_4, %6 ]
  %j = phi i4 [ 0, %1 ], [ %j_2, %6 ]
  %j_cast4 = zext i4 %j to i9
  %exitcond7 = icmp eq i4 %j, -8
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_2 = add i4 %j, 1
  br i1 %exitcond7, label %.preheader1.0, label %3

; <label>:3                                       ; preds = %2
  %curIdx = add i9 %j_cast4, %rowBaseIdx
  %tmp = zext i9 %curIdx to i64
  %a_addr = getelementptr i256* %a, i64 %tmp
  %curElemA_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %a_addr, i32 1)
  %curElemA = call i256 @_ssdm_op_Read.ap_bus.i256P(i256* %a_addr)
  %b_addr = getelementptr i256* %b, i64 %tmp
  %curElemB_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b_addr, i32 1)
  %curElemB = call i256 @_ssdm_op_Read.ap_bus.i256P(i256* %b_addr)
  %k_4 = add i7 %k, 8
  br label %4

; <label>:4                                       ; preds = %branch64, %3
  %k_1 = phi i7 [ %k, %3 ], [ %tmp_1, %branch64 ]
  %t2 = phi i4 [ 0, %3 ], [ %t2_1, %branch64 ]
  %exitcond6 = icmp eq i7 %k_1, %indvars_iv4
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %t2_1 = add i4 %t2, 1
  br i1 %exitcond6, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_8 = trunc i4 %t2 to i3
  %tmp_6 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_8, i5 0)
  %tmp_6_cast = zext i8 %tmp_6 to i32
  %tmp_7 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_8, i5 -1)
  %tmp_7_cast = zext i8 %tmp_7 to i32
  %p_Result_s = call i256 @llvm.part.select.i256(i256 %curElemA, i32 %tmp_6_cast, i32 %tmp_7_cast)
  %arow_0 = trunc i256 %p_Result_s to i32
  %tmp_10 = trunc i7 %k_1 to i6
  switch i6 %tmp_10, label %branch63 [
    i6 0, label %branch0.pre
    i6 1, label %branch1
    i6 2, label %branch2
    i6 3, label %branch3
    i6 4, label %branch4
    i6 5, label %branch5
    i6 6, label %branch6
    i6 7, label %branch7
    i6 8, label %branch8
    i6 9, label %branch9
    i6 10, label %branch10
    i6 11, label %branch11
    i6 12, label %branch12
    i6 13, label %branch13
    i6 14, label %branch14
    i6 15, label %branch15
    i6 16, label %branch16
    i6 17, label %branch17
    i6 18, label %branch18
    i6 19, label %branch19
    i6 20, label %branch20
    i6 21, label %branch21
    i6 22, label %branch22
    i6 23, label %branch23
    i6 24, label %branch24
    i6 25, label %branch25
    i6 26, label %branch26
    i6 27, label %branch27
    i6 28, label %branch28
    i6 29, label %branch29
    i6 30, label %branch30
    i6 31, label %branch31
    i6 -32, label %branch32
    i6 -31, label %branch33
    i6 -30, label %branch34
    i6 -29, label %branch35
    i6 -28, label %branch36
    i6 -27, label %branch37
    i6 -26, label %branch38
    i6 -25, label %branch39
    i6 -24, label %branch40
    i6 -23, label %branch41
    i6 -22, label %branch42
    i6 -21, label %branch43
    i6 -20, label %branch44
    i6 -19, label %branch45
    i6 -18, label %branch46
    i6 -17, label %branch47
    i6 -16, label %branch48
    i6 -15, label %branch49
    i6 -14, label %branch50
    i6 -13, label %branch51
    i6 -12, label %branch52
    i6 -11, label %branch53
    i6 -10, label %branch54
    i6 -9, label %branch55
    i6 -8, label %branch56
    i6 -7, label %branch57
    i6 -6, label %branch58
    i6 -5, label %branch59
    i6 -4, label %branch60
    i6 -3, label %branch61
    i6 -2, label %branch62
  ]

branch0.pre:                                      ; preds = %5
  store i32 %arow_0, i32* %arow_63, align 4
  br label %branch0

branch0:                                          ; preds = %branch0.pre, %branch63, %branch62, %branch61, %branch60, %branch59, %branch58, %branch57, %branch56, %branch55, %branch54, %branch53, %branch52, %branch51, %branch50, %branch49, %branch48, %branch47, %branch46, %branch45, %branch44, %branch43, %branch42, %branch41, %branch40, %branch39, %branch38, %branch37, %branch36, %branch35, %branch34, %branch33, %branch32, %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24, %branch23, %branch22, %branch21, %branch20, %branch19, %branch18, %branch17, %branch16, %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1
  %p_Result_1 = call i256 @llvm.part.select.i256(i256 %curElemB, i32 %tmp_6_cast, i32 %tmp_7_cast)
  %brow_0 = trunc i256 %p_Result_1 to i32
  switch i6 %tmp_10, label %branch127 [
    i6 0, label %branch64.pre
    i6 1, label %branch65
    i6 2, label %branch66
    i6 3, label %branch67
    i6 4, label %branch68
    i6 5, label %branch69
    i6 6, label %branch70
    i6 7, label %branch71
    i6 8, label %branch72
    i6 9, label %branch73
    i6 10, label %branch74
    i6 11, label %branch75
    i6 12, label %branch76
    i6 13, label %branch77
    i6 14, label %branch78
    i6 15, label %branch79
    i6 16, label %branch80
    i6 17, label %branch81
    i6 18, label %branch82
    i6 19, label %branch83
    i6 20, label %branch84
    i6 21, label %branch85
    i6 22, label %branch86
    i6 23, label %branch87
    i6 24, label %branch88
    i6 25, label %branch89
    i6 26, label %branch90
    i6 27, label %branch91
    i6 28, label %branch92
    i6 29, label %branch93
    i6 30, label %branch94
    i6 31, label %branch95
    i6 -32, label %branch96
    i6 -31, label %branch97
    i6 -30, label %branch98
    i6 -29, label %branch99
    i6 -28, label %branch100
    i6 -27, label %branch101
    i6 -26, label %branch102
    i6 -25, label %branch103
    i6 -24, label %branch104
    i6 -23, label %branch105
    i6 -22, label %branch106
    i6 -21, label %branch107
    i6 -20, label %branch108
    i6 -19, label %branch109
    i6 -18, label %branch110
    i6 -17, label %branch111
    i6 -16, label %branch112
    i6 -15, label %branch113
    i6 -14, label %branch114
    i6 -13, label %branch115
    i6 -12, label %branch116
    i6 -11, label %branch117
    i6 -10, label %branch118
    i6 -9, label %branch119
    i6 -8, label %branch120
    i6 -7, label %branch121
    i6 -6, label %branch122
    i6 -5, label %branch123
    i6 -4, label %branch124
    i6 -3, label %branch125
    i6 -2, label %branch126
  ]

branch64.pre:                                     ; preds = %branch0
  store i32 %brow_0, i32* %brow_63, align 4
  br label %branch64

branch64:                                         ; preds = %branch64.pre, %branch127, %branch126, %branch125, %branch124, %branch123, %branch122, %branch121, %branch120, %branch119, %branch118, %branch117, %branch116, %branch115, %branch114, %branch113, %branch112, %branch111, %branch110, %branch109, %branch108, %branch107, %branch106, %branch105, %branch104, %branch103, %branch102, %branch101, %branch100, %branch99, %branch98, %branch97, %branch96, %branch95, %branch94, %branch93, %branch92, %branch91, %branch90, %branch89, %branch88, %branch87, %branch86, %branch85, %branch84, %branch83, %branch82, %branch81, %branch80, %branch79, %branch78, %branch77, %branch76, %branch75, %branch74, %branch73, %branch72, %branch71, %branch70, %branch69, %branch68, %branch67, %branch66, %branch65
  %tmp_1 = add i7 %k_1, 1
  br label %4

; <label>:6                                       ; preds = %4
  %indvars_iv_next5 = add i7 %indvars_iv4, 8
  br label %2

.preheader1.0:                                    ; preds = %2
  %arow_63_load = load i32* %arow_63, align 4
  %arow_63_1_load = load i32* %arow_63_1, align 4
  %arow_63_2_load = load i32* %arow_63_2, align 4
  %arow_63_3_load = load i32* %arow_63_3, align 4
  %arow_63_4_load = load i32* %arow_63_4, align 4
  %arow_63_5_load = load i32* %arow_63_5, align 4
  %arow_63_6_load = load i32* %arow_63_6, align 4
  %arow_63_7_load = load i32* %arow_63_7, align 4
  %arow_63_8_load = load i32* %arow_63_8, align 4
  %arow_63_9_load = load i32* %arow_63_9, align 4
  %arow_63_10_load = load i32* %arow_63_10, align 4
  %arow_63_11_load = load i32* %arow_63_11, align 4
  %arow_63_12_load = load i32* %arow_63_12, align 4
  %arow_63_13_load = load i32* %arow_63_13, align 4
  %arow_63_14_load = load i32* %arow_63_14, align 4
  %arow_63_15_load = load i32* %arow_63_15, align 4
  %arow_63_16_load = load i32* %arow_63_16, align 4
  %arow_63_17_load = load i32* %arow_63_17, align 4
  %arow_63_18_load = load i32* %arow_63_18, align 4
  %arow_63_19_load = load i32* %arow_63_19, align 4
  %arow_63_20_load = load i32* %arow_63_20, align 4
  %arow_63_21_load = load i32* %arow_63_21, align 4
  %arow_63_22_load = load i32* %arow_63_22, align 4
  %arow_63_23_load = load i32* %arow_63_23, align 4
  %arow_63_24_load = load i32* %arow_63_24, align 4
  %arow_63_25_load = load i32* %arow_63_25, align 4
  %arow_63_26_load = load i32* %arow_63_26, align 4
  %arow_63_27_load = load i32* %arow_63_27, align 4
  %arow_63_28_load = load i32* %arow_63_28, align 4
  %arow_63_29_load = load i32* %arow_63_29, align 4
  %arow_63_30_load = load i32* %arow_63_30, align 4
  %arow_63_31_load = load i32* %arow_63_31, align 4
  %arow_63_32_load = load i32* %arow_63_32, align 4
  %arow_63_33_load = load i32* %arow_63_33, align 4
  %arow_63_34_load = load i32* %arow_63_34, align 4
  %arow_63_35_load = load i32* %arow_63_35, align 4
  %arow_63_36_load = load i32* %arow_63_36, align 4
  %arow_63_37_load = load i32* %arow_63_37, align 4
  %arow_63_38_load = load i32* %arow_63_38, align 4
  %arow_63_39_load = load i32* %arow_63_39, align 4
  %arow_63_40_load = load i32* %arow_63_40, align 4
  %arow_63_41_load = load i32* %arow_63_41, align 4
  %arow_63_42_load = load i32* %arow_63_42, align 4
  %arow_63_43_load = load i32* %arow_63_43, align 4
  %arow_63_44_load = load i32* %arow_63_44, align 4
  %arow_63_45_load = load i32* %arow_63_45, align 4
  %arow_63_46_load = load i32* %arow_63_46, align 4
  %arow_63_47_load = load i32* %arow_63_47, align 4
  %arow_63_48_load = load i32* %arow_63_48, align 4
  %arow_63_49_load = load i32* %arow_63_49, align 4
  %arow_63_50_load = load i32* %arow_63_50, align 4
  %arow_63_51_load = load i32* %arow_63_51, align 4
  %arow_63_52_load = load i32* %arow_63_52, align 4
  %arow_63_53_load = load i32* %arow_63_53, align 4
  %arow_63_54_load = load i32* %arow_63_54, align 4
  %arow_63_55_load = load i32* %arow_63_55, align 4
  %arow_63_56_load = load i32* %arow_63_56, align 4
  %arow_63_57_load = load i32* %arow_63_57, align 4
  %arow_63_58_load = load i32* %arow_63_58, align 4
  %arow_63_59_load = load i32* %arow_63_59, align 4
  %arow_63_60_load = load i32* %arow_63_60, align 4
  %arow_63_61_load = load i32* %arow_63_61, align 4
  %arow_63_62_load = load i32* %arow_63_62, align 4
  %arow_63_63_load = load i32* %arow_63_63, align 4
  %brow_63_load = load i32* %brow_63, align 4
  %brow_63_1_load = load i32* %brow_63_1, align 4
  %brow_63_2_load = load i32* %brow_63_2, align 4
  %brow_63_3_load = load i32* %brow_63_3, align 4
  %brow_63_4_load = load i32* %brow_63_4, align 4
  %brow_63_5_load = load i32* %brow_63_5, align 4
  %brow_63_6_load = load i32* %brow_63_6, align 4
  %brow_63_7_load = load i32* %brow_63_7, align 4
  %brow_63_8_load = load i32* %brow_63_8, align 4
  %brow_63_9_load = load i32* %brow_63_9, align 4
  %brow_63_10_load = load i32* %brow_63_10, align 4
  %brow_63_11_load = load i32* %brow_63_11, align 4
  %brow_63_12_load = load i32* %brow_63_12, align 4
  %brow_63_13_load = load i32* %brow_63_13, align 4
  %brow_63_14_load = load i32* %brow_63_14, align 4
  %brow_63_15_load = load i32* %brow_63_15, align 4
  %brow_63_16_load = load i32* %brow_63_16, align 4
  %brow_63_17_load = load i32* %brow_63_17, align 4
  %brow_63_18_load = load i32* %brow_63_18, align 4
  %brow_63_19_load = load i32* %brow_63_19, align 4
  %brow_63_20_load = load i32* %brow_63_20, align 4
  %brow_63_21_load = load i32* %brow_63_21, align 4
  %brow_63_22_load = load i32* %brow_63_22, align 4
  %brow_63_23_load = load i32* %brow_63_23, align 4
  %brow_63_24_load = load i32* %brow_63_24, align 4
  %brow_63_25_load = load i32* %brow_63_25, align 4
  %brow_63_26_load = load i32* %brow_63_26, align 4
  %brow_63_27_load = load i32* %brow_63_27, align 4
  %brow_63_28_load = load i32* %brow_63_28, align 4
  %brow_63_29_load = load i32* %brow_63_29, align 4
  %brow_63_30_load = load i32* %brow_63_30, align 4
  %brow_63_31_load = load i32* %brow_63_31, align 4
  %brow_63_32_load = load i32* %brow_63_32, align 4
  %brow_63_33_load = load i32* %brow_63_33, align 4
  %brow_63_34_load = load i32* %brow_63_34, align 4
  %brow_63_35_load = load i32* %brow_63_35, align 4
  %brow_63_36_load = load i32* %brow_63_36, align 4
  %brow_63_37_load = load i32* %brow_63_37, align 4
  %brow_63_38_load = load i32* %brow_63_38, align 4
  %brow_63_39_load = load i32* %brow_63_39, align 4
  %brow_63_40_load = load i32* %brow_63_40, align 4
  %brow_63_41_load = load i32* %brow_63_41, align 4
  %brow_63_42_load = load i32* %brow_63_42, align 4
  %brow_63_43_load = load i32* %brow_63_43, align 4
  %brow_63_44_load = load i32* %brow_63_44, align 4
  %brow_63_45_load = load i32* %brow_63_45, align 4
  %brow_63_46_load = load i32* %brow_63_46, align 4
  %brow_63_47_load = load i32* %brow_63_47, align 4
  %brow_63_48_load = load i32* %brow_63_48, align 4
  %brow_63_49_load = load i32* %brow_63_49, align 4
  %brow_63_50_load = load i32* %brow_63_50, align 4
  %brow_63_51_load = load i32* %brow_63_51, align 4
  %brow_63_52_load = load i32* %brow_63_52, align 4
  %brow_63_53_load = load i32* %brow_63_53, align 4
  %brow_63_54_load = load i32* %brow_63_54, align 4
  %brow_63_55_load = load i32* %brow_63_55, align 4
  %brow_63_56_load = load i32* %brow_63_56, align 4
  %brow_63_57_load = load i32* %brow_63_57, align 4
  %brow_63_58_load = load i32* %brow_63_58, align 4
  %brow_63_59_load = load i32* %brow_63_59, align 4
  %brow_63_60_load = load i32* %brow_63_60, align 4
  %brow_63_61_load = load i32* %brow_63_61, align 4
  %brow_63_62_load = load i32* %brow_63_62, align 4
  %brow_63_63_load = load i32* %brow_63_63, align 4
  %crow_0 = mul nsw i32 %brow_63_load, %arow_63_load
  %crow_1 = mul nsw i32 %brow_63_1_load, %arow_63_1_load
  %crow_2 = mul nsw i32 %brow_63_2_load, %arow_63_2_load
  %crow_3 = mul nsw i32 %brow_63_3_load, %arow_63_3_load
  %crow_4 = mul nsw i32 %brow_63_4_load, %arow_63_4_load
  %crow_5 = mul nsw i32 %brow_63_5_load, %arow_63_5_load
  %crow_6 = mul nsw i32 %brow_63_6_load, %arow_63_6_load
  %crow_7 = mul nsw i32 %brow_63_7_load, %arow_63_7_load
  %crow_8 = mul nsw i32 %brow_63_8_load, %arow_63_8_load
  %crow_9 = mul nsw i32 %brow_63_9_load, %arow_63_9_load
  %crow_10 = mul nsw i32 %brow_63_10_load, %arow_63_10_load
  %crow_11 = mul nsw i32 %brow_63_11_load, %arow_63_11_load
  %crow_12 = mul nsw i32 %brow_63_12_load, %arow_63_12_load
  %crow_13 = mul nsw i32 %brow_63_13_load, %arow_63_13_load
  %crow_14 = mul nsw i32 %brow_63_14_load, %arow_63_14_load
  %crow_15 = mul nsw i32 %brow_63_15_load, %arow_63_15_load
  %crow_16 = mul nsw i32 %brow_63_16_load, %arow_63_16_load
  %crow_17 = mul nsw i32 %brow_63_17_load, %arow_63_17_load
  %crow_18 = mul nsw i32 %brow_63_18_load, %arow_63_18_load
  %crow_19 = mul nsw i32 %brow_63_19_load, %arow_63_19_load
  %crow_20 = mul nsw i32 %brow_63_20_load, %arow_63_20_load
  %crow_21 = mul nsw i32 %brow_63_21_load, %arow_63_21_load
  %crow_22 = mul nsw i32 %brow_63_22_load, %arow_63_22_load
  %crow_23 = mul nsw i32 %brow_63_23_load, %arow_63_23_load
  %crow_24 = mul nsw i32 %brow_63_24_load, %arow_63_24_load
  %crow_25 = mul nsw i32 %brow_63_25_load, %arow_63_25_load
  %crow_26 = mul nsw i32 %brow_63_26_load, %arow_63_26_load
  %crow_27 = mul nsw i32 %brow_63_27_load, %arow_63_27_load
  %crow_28 = mul nsw i32 %brow_63_28_load, %arow_63_28_load
  %crow_29 = mul nsw i32 %brow_63_29_load, %arow_63_29_load
  %crow_30 = mul nsw i32 %brow_63_30_load, %arow_63_30_load
  %crow_31 = mul nsw i32 %brow_63_31_load, %arow_63_31_load
  %crow_32 = mul nsw i32 %brow_63_32_load, %arow_63_32_load
  %crow_33 = mul nsw i32 %brow_63_33_load, %arow_63_33_load
  %crow_34 = mul nsw i32 %brow_63_34_load, %arow_63_34_load
  %crow_35 = mul nsw i32 %brow_63_35_load, %arow_63_35_load
  %crow_36 = mul nsw i32 %brow_63_36_load, %arow_63_36_load
  %crow_37 = mul nsw i32 %brow_63_37_load, %arow_63_37_load
  %crow_38 = mul nsw i32 %brow_63_38_load, %arow_63_38_load
  %crow_39 = mul nsw i32 %brow_63_39_load, %arow_63_39_load
  %crow_40 = mul nsw i32 %brow_63_40_load, %arow_63_40_load
  %crow_41 = mul nsw i32 %brow_63_41_load, %arow_63_41_load
  %crow_42 = mul nsw i32 %brow_63_42_load, %arow_63_42_load
  %crow_43 = mul nsw i32 %brow_63_43_load, %arow_63_43_load
  %crow_44 = mul nsw i32 %brow_63_44_load, %arow_63_44_load
  %crow_45 = mul nsw i32 %brow_63_45_load, %arow_63_45_load
  %crow_46 = mul nsw i32 %brow_63_46_load, %arow_63_46_load
  %crow_47 = mul nsw i32 %brow_63_47_load, %arow_63_47_load
  %crow_48 = mul nsw i32 %brow_63_48_load, %arow_63_48_load
  %crow_49 = mul nsw i32 %brow_63_49_load, %arow_63_49_load
  %crow_50 = mul nsw i32 %brow_63_50_load, %arow_63_50_load
  %crow_51 = mul nsw i32 %brow_63_51_load, %arow_63_51_load
  %crow_52 = mul nsw i32 %brow_63_52_load, %arow_63_52_load
  %crow_53 = mul nsw i32 %brow_63_53_load, %arow_63_53_load
  %crow_54 = mul nsw i32 %brow_63_54_load, %arow_63_54_load
  %crow_55 = mul nsw i32 %brow_63_55_load, %arow_63_55_load
  %crow_56 = mul nsw i32 %brow_63_56_load, %arow_63_56_load
  %crow_57 = mul nsw i32 %brow_63_57_load, %arow_63_57_load
  %crow_58 = mul nsw i32 %brow_63_58_load, %arow_63_58_load
  %crow_59 = mul nsw i32 %brow_63_59_load, %arow_63_59_load
  %crow_60 = mul nsw i32 %brow_63_60_load, %arow_63_60_load
  %crow_61 = mul nsw i32 %brow_63_61_load, %arow_63_61_load
  %crow_62 = mul nsw i32 %brow_63_62_load, %arow_63_62_load
  %crow_63 = mul nsw i32 %brow_63_63_load, %arow_63_63_load
  br label %.preheader

.preheader:                                       ; preds = %10, %.preheader1.0
  %indvars_iv = phi i7 [ %indvars_iv_next, %10 ], [ 8, %.preheader1.0 ]
  %k_2 = phi i7 [ %k_5, %10 ], [ 0, %.preheader1.0 ]
  %j_1 = phi i4 [ %j_3, %10 ], [ 0, %.preheader1.0 ]
  %j_1_cast2 = zext i4 %j_1 to i9
  %exitcond2 = icmp eq i4 %j_1, -8
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_3 = add i4 %j_1, 1
  br i1 %exitcond2, label %.loopexit, label %7

; <label>:7                                       ; preds = %.preheader
  %curIdx_1 = add i9 %j_1_cast2, %rowBaseIdx
  %k_5 = add i7 %k_2, 8
  br label %8

; <label>:8                                       ; preds = %branch128, %7
  %k_3 = phi i7 [ %k_2, %7 ], [ %tmp_3, %branch128 ]
  %p_Val2_1 = phi i256 [ 0, %7 ], [ %p_Result_3, %branch128 ]
  %t = phi i4 [ 0, %7 ], [ %t2_2, %branch128 ]
  %exitcond = icmp eq i7 %k_3, %indvars_iv
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %t2_2 = add i4 %t, 1
  br i1 %exitcond, label %10, label %9

; <label>:9                                       ; preds = %8
  %tmp_11 = trunc i7 %k_3 to i6
  switch i6 %tmp_11, label %branch191 [
    i6 0, label %branch128
    i6 1, label %branch129
    i6 2, label %branch130
    i6 3, label %branch131
    i6 4, label %branch132
    i6 5, label %branch133
    i6 6, label %branch134
    i6 7, label %branch135
    i6 8, label %branch136
    i6 9, label %branch137
    i6 10, label %branch138
    i6 11, label %branch139
    i6 12, label %branch140
    i6 13, label %branch141
    i6 14, label %branch142
    i6 15, label %branch143
    i6 16, label %branch144
    i6 17, label %branch145
    i6 18, label %branch146
    i6 19, label %branch147
    i6 20, label %branch148
    i6 21, label %branch149
    i6 22, label %branch150
    i6 23, label %branch151
    i6 24, label %branch152
    i6 25, label %branch153
    i6 26, label %branch154
    i6 27, label %branch155
    i6 28, label %branch156
    i6 29, label %branch157
    i6 30, label %branch158
    i6 31, label %branch159
    i6 -32, label %branch160
    i6 -31, label %branch161
    i6 -30, label %branch162
    i6 -29, label %branch163
    i6 -28, label %branch164
    i6 -27, label %branch165
    i6 -26, label %branch166
    i6 -25, label %branch167
    i6 -24, label %branch168
    i6 -23, label %branch169
    i6 -22, label %branch170
    i6 -21, label %branch171
    i6 -20, label %branch172
    i6 -19, label %branch173
    i6 -18, label %branch174
    i6 -17, label %branch175
    i6 -16, label %branch176
    i6 -15, label %branch177
    i6 -14, label %branch178
    i6 -13, label %branch179
    i6 -12, label %branch180
    i6 -11, label %branch181
    i6 -10, label %branch182
    i6 -9, label %branch183
    i6 -8, label %branch184
    i6 -7, label %branch185
    i6 -6, label %branch186
    i6 -5, label %branch187
    i6 -4, label %branch188
    i6 -3, label %branch189
    i6 -2, label %branch190
  ]

branch128:                                        ; preds = %branch191, %branch190, %branch189, %branch188, %branch187, %branch186, %branch185, %branch184, %branch183, %branch182, %branch181, %branch180, %branch179, %branch178, %branch177, %branch176, %branch175, %branch174, %branch173, %branch172, %branch171, %branch170, %branch169, %branch168, %branch167, %branch166, %branch165, %branch164, %branch163, %branch162, %branch161, %branch160, %branch159, %branch158, %branch157, %branch156, %branch155, %branch154, %branch153, %branch152, %branch151, %branch150, %branch149, %branch148, %branch147, %branch146, %branch145, %branch144, %branch143, %branch142, %branch141, %branch140, %branch139, %branch138, %branch137, %branch136, %branch135, %branch134, %branch133, %branch132, %branch131, %branch130, %branch129, %9
  %p_Repl2_s = phi i32 [ %crow_1, %branch129 ], [ %crow_2, %branch130 ], [ %crow_3, %branch131 ], [ %crow_4, %branch132 ], [ %crow_5, %branch133 ], [ %crow_6, %branch134 ], [ %crow_7, %branch135 ], [ %crow_8, %branch136 ], [ %crow_9, %branch137 ], [ %crow_10, %branch138 ], [ %crow_11, %branch139 ], [ %crow_12, %branch140 ], [ %crow_13, %branch141 ], [ %crow_14, %branch142 ], [ %crow_15, %branch143 ], [ %crow_16, %branch144 ], [ %crow_17, %branch145 ], [ %crow_18, %branch146 ], [ %crow_19, %branch147 ], [ %crow_20, %branch148 ], [ %crow_21, %branch149 ], [ %crow_22, %branch150 ], [ %crow_23, %branch151 ], [ %crow_24, %branch152 ], [ %crow_25, %branch153 ], [ %crow_26, %branch154 ], [ %crow_27, %branch155 ], [ %crow_28, %branch156 ], [ %crow_29, %branch157 ], [ %crow_30, %branch158 ], [ %crow_31, %branch159 ], [ %crow_32, %branch160 ], [ %crow_33, %branch161 ], [ %crow_34, %branch162 ], [ %crow_35, %branch163 ], [ %crow_36, %branch164 ], [ %crow_37, %branch165 ], [ %crow_38, %branch166 ], [ %crow_39, %branch167 ], [ %crow_40, %branch168 ], [ %crow_41, %branch169 ], [ %crow_42, %branch170 ], [ %crow_43, %branch171 ], [ %crow_44, %branch172 ], [ %crow_45, %branch173 ], [ %crow_46, %branch174 ], [ %crow_47, %branch175 ], [ %crow_48, %branch176 ], [ %crow_49, %branch177 ], [ %crow_50, %branch178 ], [ %crow_51, %branch179 ], [ %crow_52, %branch180 ], [ %crow_53, %branch181 ], [ %crow_54, %branch182 ], [ %crow_55, %branch183 ], [ %crow_56, %branch184 ], [ %crow_57, %branch185 ], [ %crow_58, %branch186 ], [ %crow_59, %branch187 ], [ %crow_60, %branch188 ], [ %crow_61, %branch189 ], [ %crow_62, %branch190 ], [ %crow_63, %branch191 ], [ %crow_0, %9 ]
  %tmp_13 = trunc i4 %t to i3
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_13, i5 0)
  %tmp_cast = zext i8 %tmp_s to i32
  %tmp_2 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_13, i5 -1)
  %tmp_10_cast = zext i8 %tmp_2 to i32
  %p_Result_3 = call i256 @llvm.part.set.i256.i32(i256 %p_Val2_1, i32 %p_Repl2_s, i32 %tmp_cast, i32 %tmp_10_cast)
  %tmp_3 = add i7 %k_3, 1
  br label %8

; <label>:10                                      ; preds = %8
  %tmp_4 = zext i9 %curIdx_1 to i64
  %c_addr = getelementptr i256* %c, i64 %tmp_4
  %c_addr_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %c_addr, i32 1)
  call void @_ssdm_op_Write.ap_bus.i256P(i256* %c_addr, i256 %p_Val2_1)
  %indvars_iv_next = add i7 %indvars_iv, 8
  br label %.preheader

; <label>:11                                      ; preds = %.loopexit
  ret void

branch1:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_1, align 4
  br label %branch0

branch2:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_2, align 4
  br label %branch0

branch3:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_3, align 4
  br label %branch0

branch4:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_4, align 4
  br label %branch0

branch5:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_5, align 4
  br label %branch0

branch6:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_6, align 4
  br label %branch0

branch7:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_7, align 4
  br label %branch0

branch8:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_8, align 4
  br label %branch0

branch9:                                          ; preds = %5
  store i32 %arow_0, i32* %arow_63_9, align 4
  br label %branch0

branch10:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_10, align 4
  br label %branch0

branch11:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_11, align 4
  br label %branch0

branch12:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_12, align 4
  br label %branch0

branch13:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_13, align 4
  br label %branch0

branch14:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_14, align 4
  br label %branch0

branch15:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_15, align 4
  br label %branch0

branch16:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_16, align 4
  br label %branch0

branch17:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_17, align 4
  br label %branch0

branch18:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_18, align 4
  br label %branch0

branch19:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_19, align 4
  br label %branch0

branch20:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_20, align 4
  br label %branch0

branch21:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_21, align 4
  br label %branch0

branch22:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_22, align 4
  br label %branch0

branch23:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_23, align 4
  br label %branch0

branch24:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_24, align 4
  br label %branch0

branch25:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_25, align 4
  br label %branch0

branch26:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_26, align 4
  br label %branch0

branch27:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_27, align 4
  br label %branch0

branch28:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_28, align 4
  br label %branch0

branch29:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_29, align 4
  br label %branch0

branch30:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_30, align 4
  br label %branch0

branch31:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_31, align 4
  br label %branch0

branch32:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_32, align 4
  br label %branch0

branch33:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_33, align 4
  br label %branch0

branch34:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_34, align 4
  br label %branch0

branch35:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_35, align 4
  br label %branch0

branch36:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_36, align 4
  br label %branch0

branch37:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_37, align 4
  br label %branch0

branch38:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_38, align 4
  br label %branch0

branch39:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_39, align 4
  br label %branch0

branch40:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_40, align 4
  br label %branch0

branch41:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_41, align 4
  br label %branch0

branch42:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_42, align 4
  br label %branch0

branch43:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_43, align 4
  br label %branch0

branch44:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_44, align 4
  br label %branch0

branch45:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_45, align 4
  br label %branch0

branch46:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_46, align 4
  br label %branch0

branch47:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_47, align 4
  br label %branch0

branch48:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_48, align 4
  br label %branch0

branch49:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_49, align 4
  br label %branch0

branch50:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_50, align 4
  br label %branch0

branch51:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_51, align 4
  br label %branch0

branch52:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_52, align 4
  br label %branch0

branch53:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_53, align 4
  br label %branch0

branch54:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_54, align 4
  br label %branch0

branch55:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_55, align 4
  br label %branch0

branch56:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_56, align 4
  br label %branch0

branch57:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_57, align 4
  br label %branch0

branch58:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_58, align 4
  br label %branch0

branch59:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_59, align 4
  br label %branch0

branch60:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_60, align 4
  br label %branch0

branch61:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_61, align 4
  br label %branch0

branch62:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_62, align 4
  br label %branch0

branch63:                                         ; preds = %5
  store i32 %arow_0, i32* %arow_63_63, align 4
  br label %branch0

branch65:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_1, align 4
  br label %branch64

branch66:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_2, align 4
  br label %branch64

branch67:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_3, align 4
  br label %branch64

branch68:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_4, align 4
  br label %branch64

branch69:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_5, align 4
  br label %branch64

branch70:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_6, align 4
  br label %branch64

branch71:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_7, align 4
  br label %branch64

branch72:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_8, align 4
  br label %branch64

branch73:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_9, align 4
  br label %branch64

branch74:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_10, align 4
  br label %branch64

branch75:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_11, align 4
  br label %branch64

branch76:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_12, align 4
  br label %branch64

branch77:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_13, align 4
  br label %branch64

branch78:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_14, align 4
  br label %branch64

branch79:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_15, align 4
  br label %branch64

branch80:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_16, align 4
  br label %branch64

branch81:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_17, align 4
  br label %branch64

branch82:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_18, align 4
  br label %branch64

branch83:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_19, align 4
  br label %branch64

branch84:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_20, align 4
  br label %branch64

branch85:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_21, align 4
  br label %branch64

branch86:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_22, align 4
  br label %branch64

branch87:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_23, align 4
  br label %branch64

branch88:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_24, align 4
  br label %branch64

branch89:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_25, align 4
  br label %branch64

branch90:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_26, align 4
  br label %branch64

branch91:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_27, align 4
  br label %branch64

branch92:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_28, align 4
  br label %branch64

branch93:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_29, align 4
  br label %branch64

branch94:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_30, align 4
  br label %branch64

branch95:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_31, align 4
  br label %branch64

branch96:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_32, align 4
  br label %branch64

branch97:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_33, align 4
  br label %branch64

branch98:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_34, align 4
  br label %branch64

branch99:                                         ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_35, align 4
  br label %branch64

branch100:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_36, align 4
  br label %branch64

branch101:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_37, align 4
  br label %branch64

branch102:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_38, align 4
  br label %branch64

branch103:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_39, align 4
  br label %branch64

branch104:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_40, align 4
  br label %branch64

branch105:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_41, align 4
  br label %branch64

branch106:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_42, align 4
  br label %branch64

branch107:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_43, align 4
  br label %branch64

branch108:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_44, align 4
  br label %branch64

branch109:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_45, align 4
  br label %branch64

branch110:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_46, align 4
  br label %branch64

branch111:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_47, align 4
  br label %branch64

branch112:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_48, align 4
  br label %branch64

branch113:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_49, align 4
  br label %branch64

branch114:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_50, align 4
  br label %branch64

branch115:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_51, align 4
  br label %branch64

branch116:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_52, align 4
  br label %branch64

branch117:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_53, align 4
  br label %branch64

branch118:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_54, align 4
  br label %branch64

branch119:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_55, align 4
  br label %branch64

branch120:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_56, align 4
  br label %branch64

branch121:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_57, align 4
  br label %branch64

branch122:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_58, align 4
  br label %branch64

branch123:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_59, align 4
  br label %branch64

branch124:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_60, align 4
  br label %branch64

branch125:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_61, align 4
  br label %branch64

branch126:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_62, align 4
  br label %branch64

branch127:                                        ; preds = %branch0
  store i32 %brow_0, i32* %brow_63_63, align 4
  br label %branch64

branch129:                                        ; preds = %9
  br label %branch128

branch130:                                        ; preds = %9
  br label %branch128

branch131:                                        ; preds = %9
  br label %branch128

branch132:                                        ; preds = %9
  br label %branch128

branch133:                                        ; preds = %9
  br label %branch128

branch134:                                        ; preds = %9
  br label %branch128

branch135:                                        ; preds = %9
  br label %branch128

branch136:                                        ; preds = %9
  br label %branch128

branch137:                                        ; preds = %9
  br label %branch128

branch138:                                        ; preds = %9
  br label %branch128

branch139:                                        ; preds = %9
  br label %branch128

branch140:                                        ; preds = %9
  br label %branch128

branch141:                                        ; preds = %9
  br label %branch128

branch142:                                        ; preds = %9
  br label %branch128

branch143:                                        ; preds = %9
  br label %branch128

branch144:                                        ; preds = %9
  br label %branch128

branch145:                                        ; preds = %9
  br label %branch128

branch146:                                        ; preds = %9
  br label %branch128

branch147:                                        ; preds = %9
  br label %branch128

branch148:                                        ; preds = %9
  br label %branch128

branch149:                                        ; preds = %9
  br label %branch128

branch150:                                        ; preds = %9
  br label %branch128

branch151:                                        ; preds = %9
  br label %branch128

branch152:                                        ; preds = %9
  br label %branch128

branch153:                                        ; preds = %9
  br label %branch128

branch154:                                        ; preds = %9
  br label %branch128

branch155:                                        ; preds = %9
  br label %branch128

branch156:                                        ; preds = %9
  br label %branch128

branch157:                                        ; preds = %9
  br label %branch128

branch158:                                        ; preds = %9
  br label %branch128

branch159:                                        ; preds = %9
  br label %branch128

branch160:                                        ; preds = %9
  br label %branch128

branch161:                                        ; preds = %9
  br label %branch128

branch162:                                        ; preds = %9
  br label %branch128

branch163:                                        ; preds = %9
  br label %branch128

branch164:                                        ; preds = %9
  br label %branch128

branch165:                                        ; preds = %9
  br label %branch128

branch166:                                        ; preds = %9
  br label %branch128

branch167:                                        ; preds = %9
  br label %branch128

branch168:                                        ; preds = %9
  br label %branch128

branch169:                                        ; preds = %9
  br label %branch128

branch170:                                        ; preds = %9
  br label %branch128

branch171:                                        ; preds = %9
  br label %branch128

branch172:                                        ; preds = %9
  br label %branch128

branch173:                                        ; preds = %9
  br label %branch128

branch174:                                        ; preds = %9
  br label %branch128

branch175:                                        ; preds = %9
  br label %branch128

branch176:                                        ; preds = %9
  br label %branch128

branch177:                                        ; preds = %9
  br label %branch128

branch178:                                        ; preds = %9
  br label %branch128

branch179:                                        ; preds = %9
  br label %branch128

branch180:                                        ; preds = %9
  br label %branch128

branch181:                                        ; preds = %9
  br label %branch128

branch182:                                        ; preds = %9
  br label %branch128

branch183:                                        ; preds = %9
  br label %branch128

branch184:                                        ; preds = %9
  br label %branch128

branch185:                                        ; preds = %9
  br label %branch128

branch186:                                        ; preds = %9
  br label %branch128

branch187:                                        ; preds = %9
  br label %branch128

branch188:                                        ; preds = %9
  br label %branch128

branch189:                                        ; preds = %9
  br label %branch128

branch190:                                        ; preds = %9
  br label %branch128

branch191:                                        ; preds = %9
  br label %branch128
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone {
entry:
  %empty = zext i6 %0 to i9
  %empty_21 = zext i3 %1 to i9
  %empty_22 = trunc i9 %empty to i6
  %empty_23 = call i6 @_ssdm_op_PartSelect.i6.i9.i32.i32(i9 %empty_21, i32 3, i32 8)
  %empty_24 = or i6 %empty_22, %empty_23
  %empty_25 = call i9 @_ssdm_op_PartSet.i9.i9.i6.i32.i32(i9 %empty_21, i6 %empty_24, i32 3, i32 8)
  ret i9 %empty_25
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8
  %empty_26 = zext i5 %1 to i8
  %empty_27 = trunc i8 %empty to i3
  %empty_28 = call i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8 %empty_26, i32 5, i32 7)
  %empty_29 = or i3 %empty_27, %empty_28
  %empty_30 = call i8 @_ssdm_op_PartSet.i8.i8.i3.i32.i32(i8 %empty_26, i3 %empty_29, i32 5, i32 7)
  ret i8 %empty_30
}

define weak i256 @_ssdm_op_Read.ap_bus.i256P(i256*) {
entry:
  %empty = load i256* %0
  ret i256 %empty
}

define weak i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.ap_bus.i256P(i256*, i256) {
entry:
  store i256 %1, i256* %0
  ret void
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256*, i32) {
entry:
  ret i1 true
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256, i32, i32) nounwind readnone

define weak i6 @_ssdm_op_PartSelect.i6.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_31 = trunc i9 %empty to i6
  ret i6 %empty_31
}

define weak i9 @_ssdm_op_PartSet.i9.i9.i6.i32.i32(i9, i6, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i6(i9 %0, i6 %1, i32 %2, i32 %3)
  ret i9 %empty
}

define weak i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_32 = trunc i8 %empty to i3
  ret i3 %empty_32
}

define weak i8 @_ssdm_op_PartSet.i8.i8.i3.i32.i32(i8, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.set.i8.i3(i8 %0, i3 %1, i32 %2, i32 %3)
  ret i8 %empty
}

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i9 @llvm.part.set.i9.i6(i9, i6, i32, i32) nounwind readnone

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i8 @llvm.part.set.i8.i3(i8, i3, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 255, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"a", metadata !11, metadata !"int256"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 8191, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 255, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b", metadata !11, metadata !"int256"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 255, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"c", metadata !11, metadata !"int256"}
