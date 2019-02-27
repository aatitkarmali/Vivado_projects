; ModuleID = '/home/aatit/gitrepos/mult/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mult_str = internal unnamed_addr constant [5 x i8] c"mult\00" ; [#uses=1 type=[5 x i8]*]
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
define i32 @mult(i32 %a, i32 %b) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @mult_str) nounwind
  %b_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_read}, i64 0, metadata !30), !dbg !38 ; [debug line = 3:21] [debug variable = b]
  %a_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %a) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %a_read}, i64 0, metadata !39), !dbg !40 ; [debug line = 3:14] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !39), !dbg !40 ; [debug line = 3:14] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !30), !dbg !38 ; [debug line = 3:21] [debug variable = b]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !41 ; [debug line = 4:1]
  %tmp = mul nsw i32 %b_read, %a_read, !dbg !43   ; [#uses=1 type=i32] [debug line = 6:2]
  ret i32 %tmp, !dbg !43                          ; [debug line = 6:2]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!7}

!0 = metadata !{i32 (i32, i32)* @mult, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8, [0 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"a", metadata !18, metadata !"int", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 0}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"b", metadata !18, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"return", metadata !28, metadata !"int", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 1, i32 0}
!30 = metadata !{i32 786689, metadata !31, metadata !"b", metadata !32, i32 33554435, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 786478, i32 0, metadata !32, metadata !"mult", metadata !"mult", metadata !"_Z4multii", metadata !32, i32 3, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @mult, null, null, metadata !36, i32 3} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786473, metadata !"./src/mult.cpp", metadata !"/home/aatit/gitrepos", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{metadata !35, metadata !35, metadata !35}
!35 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!38 = metadata !{i32 3, i32 21, metadata !31, null}
!39 = metadata !{i32 786689, metadata !31, metadata !"a", metadata !32, i32 16777219, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 3, i32 14, metadata !31, null}
!41 = metadata !{i32 4, i32 1, metadata !42, null}
!42 = metadata !{i32 786443, metadata !31, i32 3, i32 23, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 6, i32 2, metadata !42, null}
