; ModuleID = '/home/tkgong/Research/VOLE-ocity/VOLEitH-FPGA/hls_component/hls_component/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<GateInfo, 0>" = type { %struct.GateInfo }
%struct.GateInfo = type { %"struct.ap_uint<1>", %"struct.ap_uint<19>", %"struct.ap_uint<19>", %"struct.ap_uint<19>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<19>" = type { %"struct.ap_int_base<19, false>" }
%"struct.ap_int_base<19, false>" = type { %"struct.ssdm_int<19, false>" }
%"struct.ssdm_int<19, false>" = type { i19 }
%"class.hls::stream<ap_uint<1>, 0>" = type { %"struct.ap_uint<1>" }
%"class.hls::stream<ap_uint<128>, 0>" = type { %"struct.ap_uint<128>" }
%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_GenerateProof_ir(%"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull dereferenceable(1) %root_strm, %"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull dereferenceable(1) %iv_strm, %"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull dereferenceable(1) %witness, %"class.hls::stream<GateInfo, 0>"* noalias nocapture nonnull dereferenceable(16) %circuit, %"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull dereferenceable(1) %d_strm, %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture nonnull dereferenceable(16) %proof_strm) local_unnamed_addr #1 {
entry:
  %root_strm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i1* %root_strm_copy, i32 0) ]
  %iv_strm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i1* %iv_strm_copy, i32 0) ]
  %witness_copy = alloca i1, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i1* %witness_copy, i32 0) ]
  %circuit_copy = alloca %"class.hls::stream<GateInfo, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<GateInfo, 0>"* %circuit_copy, i32 0) ]
  %d_strm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i1* %d_strm_copy, i32 0) ]
  %proof_strm_copy = alloca i128, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i128* %proof_strm_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<1>, 0>"* nonnull %root_strm, i1* nonnull align 512 %root_strm_copy, %"class.hls::stream<ap_uint<1>, 0>"* nonnull %iv_strm, i1* nonnull align 512 %iv_strm_copy, %"class.hls::stream<ap_uint<1>, 0>"* nonnull %witness, i1* nonnull align 512 %witness_copy, %"class.hls::stream<GateInfo, 0>"* nonnull %circuit, %"class.hls::stream<GateInfo, 0>"* nonnull align 512 %circuit_copy, %"class.hls::stream<ap_uint<1>, 0>"* nonnull %d_strm, i1* nonnull align 512 %d_strm_copy, %"class.hls::stream<ap_uint<128>, 0>"* nonnull %proof_strm, i128* nonnull align 512 %proof_strm_copy)
  call void @apatb_GenerateProof_hw(i1* %root_strm_copy, i1* %iv_strm_copy, i1* %witness_copy, %"class.hls::stream<GateInfo, 0>"* %circuit_copy, i1* %d_strm_copy, i128* %proof_strm_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<1>, 0>"* %root_strm, i1* %root_strm_copy, %"class.hls::stream<ap_uint<1>, 0>"* %iv_strm, i1* %iv_strm_copy, %"class.hls::stream<ap_uint<1>, 0>"* %witness, i1* %witness_copy, %"class.hls::stream<GateInfo, 0>"* %circuit, %"class.hls::stream<GateInfo, 0>"* %circuit_copy, %"class.hls::stream<ap_uint<1>, 0>"* %d_strm, i1* %d_strm_copy, %"class.hls::stream<ap_uint<128>, 0>"* %proof_strm, i128* %proof_strm_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="2", i1* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<GateInfo, 0>"* noalias "unpacked"="6", %"class.hls::stream<GateInfo, 0>"* noalias align 512 "unpacked"="7", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="8", i1* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="10", i128* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>"(i1* align 512 %1, %"class.hls::stream<ap_uint<1>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>"(i1* align 512 %3, %"class.hls::stream<ap_uint<1>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>"(i1* align 512 %5, %"class.hls::stream<ap_uint<1>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<GateInfo, 0>"(%"class.hls::stream<GateInfo, 0>"* align 512 %7, %"class.hls::stream<GateInfo, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>"(i1* align 512 %9, %"class.hls::stream<ap_uint<1>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>"(i128* align 512 %11, %"class.hls::stream<ap_uint<128>, 0>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<GateInfo, 0>"(%"class.hls::stream<GateInfo, 0>"* noalias align 512 %dst, %"class.hls::stream<GateInfo, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<GateInfo, 0>"* %dst, null
  %1 = icmp eq %"class.hls::stream<GateInfo, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<GateInfo, 0>"(%"class.hls::stream<GateInfo, 0>"* nonnull align 512 %dst, %"class.hls::stream<GateInfo, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<GateInfo, 0>"(%"class.hls::stream<GateInfo, 0>"* noalias nocapture align 512, %"class.hls::stream<GateInfo, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<GateInfo, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<GateInfo, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<GateInfo, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<GateInfo, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<GateInfo, 0>", %"class.hls::stream<GateInfo, 0>"* %2
  %8 = bitcast %"class.hls::stream<GateInfo, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<GateInfo, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>"(i128* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<128>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>"(i128* align 512 %dst, %"class.hls::stream<ap_uint<128>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>"(i128* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<128>, 0>"
  %3 = alloca i128
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<128>, 0>", %"class.hls::stream<ap_uint<128>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<128>, 0>" %8, 0, 0, 0, 0
  store i128 %.evi, i128* %3
  %9 = bitcast i128* %3 to i8*
  %10 = bitcast i128* %0 to i8*
  call void @fpga_fifo_push_16(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="2", i1* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<GateInfo, 0>"* noalias "unpacked"="6", %"class.hls::stream<GateInfo, 0>"* noalias align 512 "unpacked"="7", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="8", i1* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="10", i128* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %0, i1* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<GateInfo, 0>"(%"class.hls::stream<GateInfo, 0>"* %6, %"class.hls::stream<GateInfo, 0>"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %8, i1* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.253"(%"class.hls::stream<ap_uint<128>, 0>"* %10, i128* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.253"(%"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="0" %dst, i128* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<128>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>.256"(%"class.hls::stream<ap_uint<128>, 0>"* nonnull %dst, i128* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>.256"(%"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture "unpacked"="0", i128* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i128
  %3 = alloca %"class.hls::stream<ap_uint<128>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i128* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i128* %2 to i8*
  %7 = bitcast i128* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i128, i128* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<128>, 0>" undef, i128 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<128>, 0>" %.ivi, %"class.hls::stream<ap_uint<128>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<1>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<1>, 0>.269"(i1* align 512 %dst, %"class.hls::stream<ap_uint<1>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<1>, 0>.269"(i1* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<1>, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<1>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<1>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<1>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<1>, 0>", %"class.hls::stream<ap_uint<1>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<1>, 0>" %8, 0, 0, 0, 0
  store i1 %.evi, i1* %3
  %9 = bitcast i1* %3 to i8*
  %10 = bitcast i1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %10)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="0" %dst, i1* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<1>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<1>, 0>.279"(%"class.hls::stream<ap_uint<1>, 0>"* nonnull %dst, i1* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<1>, 0>.279"(%"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<ap_uint<1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %2 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = bitcast i1* %2 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %.ivi = insertvalue %"class.hls::stream<ap_uint<1>, 0>" undef, i1 %10, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<1>, 0>" %.ivi, %"class.hls::stream<ap_uint<1>, 0>"* %3
  %11 = bitcast %"class.hls::stream<ap_uint<1>, 0>"* %3 to i8*
  %12 = bitcast %"class.hls::stream<ap_uint<1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_GenerateProof_hw(i1*, i1*, i1*, %"class.hls::stream<GateInfo, 0>"*, i1*, i128*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="2", i1* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<GateInfo, 0>"* noalias "unpacked"="6", %"class.hls::stream<GateInfo, 0>"* noalias align 512 "unpacked"="7", %"class.hls::stream<ap_uint<1>, 0>"* noalias "unpacked"="8", i1* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="10", i128* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %0, i1* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<GateInfo, 0>"(%"class.hls::stream<GateInfo, 0>"* %6, %"class.hls::stream<GateInfo, 0>"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<1>, 0>.276"(%"class.hls::stream<ap_uint<1>, 0>"* %8, i1* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.253"(%"class.hls::stream<ap_uint<128>, 0>"* %10, i128* align 512 %11)
  ret void
}

declare void @GenerateProof_hw_stub(%"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull, %"class.hls::stream<GateInfo, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<1>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture nonnull)

define void @GenerateProof_hw_stub_wrapper(i1*, i1*, i1*, %"class.hls::stream<GateInfo, 0>"*, i1*, i128*) #6 {
entry:
  %6 = call i8* @malloc(i64 1)
  %7 = bitcast i8* %6 to %"class.hls::stream<ap_uint<1>, 0>"*
  %8 = call i8* @malloc(i64 1)
  %9 = bitcast i8* %8 to %"class.hls::stream<ap_uint<1>, 0>"*
  %10 = call i8* @malloc(i64 1)
  %11 = bitcast i8* %10 to %"class.hls::stream<ap_uint<1>, 0>"*
  %12 = call i8* @malloc(i64 1)
  %13 = bitcast i8* %12 to %"class.hls::stream<ap_uint<1>, 0>"*
  %14 = call i8* @malloc(i64 16)
  %15 = bitcast i8* %14 to %"class.hls::stream<ap_uint<128>, 0>"*
  call void @copy_out(%"class.hls::stream<ap_uint<1>, 0>"* %7, i1* %0, %"class.hls::stream<ap_uint<1>, 0>"* %9, i1* %1, %"class.hls::stream<ap_uint<1>, 0>"* %11, i1* %2, %"class.hls::stream<GateInfo, 0>"* null, %"class.hls::stream<GateInfo, 0>"* %3, %"class.hls::stream<ap_uint<1>, 0>"* %13, i1* %4, %"class.hls::stream<ap_uint<128>, 0>"* %15, i128* %5)
  call void @GenerateProof_hw_stub(%"class.hls::stream<ap_uint<1>, 0>"* %7, %"class.hls::stream<ap_uint<1>, 0>"* %9, %"class.hls::stream<ap_uint<1>, 0>"* %11, %"class.hls::stream<GateInfo, 0>"* %3, %"class.hls::stream<ap_uint<1>, 0>"* %13, %"class.hls::stream<ap_uint<128>, 0>"* %15)
  call void @copy_in(%"class.hls::stream<ap_uint<1>, 0>"* %7, i1* %0, %"class.hls::stream<ap_uint<1>, 0>"* %9, i1* %1, %"class.hls::stream<ap_uint<1>, 0>"* %11, i1* %2, %"class.hls::stream<GateInfo, 0>"* null, %"class.hls::stream<GateInfo, 0>"* %3, %"class.hls::stream<ap_uint<1>, 0>"* %13, i1* %4, %"class.hls::stream<ap_uint<128>, 0>"* %15, i128* %5)
  call void @free(i8* %6)
  call void @free(i8* %8)
  call void @free(i8* %10)
  call void @free(i8* %12)
  call void @free(i8* %14)
  ret void
}

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="128" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
