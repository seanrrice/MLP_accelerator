; ModuleID = 'Z:/Labs/clab/baseline_blockedMM/baseline_blockedMM/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::vector<int, 16>" = type { %"struct.std::array<int, 16>" }
%"struct.std::array<int, 16>" = type { [16 x i32] }

; Function Attrs: noinline
define void @apatb_MM_ir(%"class.hls::vector<int, 16>"* noalias nocapture nonnull readonly align 64 "maxi" %AT, %"class.hls::vector<int, 16>"* noalias nocapture nonnull readonly align 64 "maxi" %B, i32* noalias nocapture nonnull readonly "maxi" %C, %"class.hls::vector<int, 16>"* noalias nocapture nonnull align 64 "maxi" %ABC, i32 %N, i32 %M, i32 %P) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"class.hls::vector<int, 16>"* %AT to [50176 x %"class.hls::vector<int, 16>"]*
  %1 = call i8* @malloc(i64 3211264)
  %AT_copy = bitcast i8* %1 to [50176 x i512]*
  %2 = bitcast %"class.hls::vector<int, 16>"* %B to [6272 x %"class.hls::vector<int, 16>"]*
  %3 = call i8* @malloc(i64 401408)
  %B_copy = bitcast i8* %3 to [6272 x i512]*
  %4 = bitcast i32* %C to [64 x i32]*
  %C_copy = alloca [64 x i32], align 512
  %5 = bitcast %"class.hls::vector<int, 16>"* %ABC to [8192 x %"class.hls::vector<int, 16>"]*
  %6 = call i8* @malloc(i64 524288)
  %ABC_copy = bitcast i8* %6 to [8192 x i512]*
  call fastcc void @copy_in([50176 x %"class.hls::vector<int, 16>"]* nonnull align 64 %0, [50176 x i512]* %AT_copy, [6272 x %"class.hls::vector<int, 16>"]* nonnull align 64 %2, [6272 x i512]* %B_copy, [64 x i32]* nonnull %4, [64 x i32]* nonnull align 512 %C_copy, [8192 x %"class.hls::vector<int, 16>"]* nonnull align 64 %5, [8192 x i512]* %ABC_copy)
  call void @apatb_MM_hw([50176 x i512]* %AT_copy, [6272 x i512]* %B_copy, [64 x i32]* %C_copy, [8192 x i512]* %ABC_copy, i32 %N, i32 %M, i32 %P)
  call void @copy_back([50176 x %"class.hls::vector<int, 16>"]* %0, [50176 x i512]* %AT_copy, [6272 x %"class.hls::vector<int, 16>"]* %2, [6272 x i512]* %B_copy, [64 x i32]* %4, [64 x i32]* %C_copy, [8192 x %"class.hls::vector<int, 16>"]* %5, [8192 x i512]* %ABC_copy)
  call void @free(i8* %1)
  call void @free(i8* %3)
  call void @free(i8* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([50176 x %"class.hls::vector<int, 16>"]* readonly align 64, [50176 x i512]*, [6272 x %"class.hls::vector<int, 16>"]* readonly align 64, [6272 x i512]*, [64 x i32]* readonly, [64 x i32]* align 512, [8192 x %"class.hls::vector<int, 16>"]* readonly align 64, [8192 x i512]*) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a50176class.hls::vector<int, 16>"([50176 x i512]* %1, [50176 x %"class.hls::vector<int, 16>"]* align 64 %0)
  call fastcc void @"onebyonecpy_hls.p0a6272class.hls::vector<int, 16>.35"([6272 x i512]* %3, [6272 x %"class.hls::vector<int, 16>"]* align 64 %2)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %5, [64 x i32]* %4)
  call fastcc void @"onebyonecpy_hls.p0a8192class.hls::vector<int, 16>"([8192 x i512]* %7, [8192 x %"class.hls::vector<int, 16>"]* align 64 %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a50176class.hls::vector<int, 16>"([50176 x i512]* %dst, [50176 x %"class.hls::vector<int, 16>"]* readonly align 64 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [50176 x i512]* %dst, null
  %1 = icmp eq [50176 x %"class.hls::vector<int, 16>"]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a50176class.hls::vector<int, 16>"([50176 x i512]* nonnull %dst, [50176 x %"class.hls::vector<int, 16>"]* nonnull %src, i64 50176)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a50176class.hls::vector<int, 16>"([50176 x i512]* %dst, [50176 x %"class.hls::vector<int, 16>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [50176 x %"class.hls::vector<int, 16>"]* %src, null
  %1 = icmp eq [50176 x i512]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.03 = getelementptr [50176 x %"class.hls::vector<int, 16>"], [50176 x %"class.hls::vector<int, 16>"]* %src, i64 0, i64 %for.loop.idx6, i32 0, i32 0
  %3 = getelementptr [50176 x i512], [50176 x i512]* %dst, i64 0, i64 %for.loop.idx6
  call void @arraycpy_hls.p0a16i32(i512* %3, i64 0, [16 x i32]* %src.addr.0.03, i64 16)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a6272class.hls::vector<int, 16>"([6272 x %"class.hls::vector<int, 16>"]* align 64 %dst, [6272 x i512]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [6272 x %"class.hls::vector<int, 16>"]* %dst, null
  %1 = icmp eq [6272 x i512]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a6272class.hls::vector<int, 16>"([6272 x %"class.hls::vector<int, 16>"]* nonnull %dst, [6272 x i512]* nonnull %src, i64 6272)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a6272class.hls::vector<int, 16>"([6272 x %"class.hls::vector<int, 16>"]* %dst, [6272 x i512]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [6272 x i512]* %src, null
  %1 = icmp eq [6272 x %"class.hls::vector<int, 16>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [6272 x i512], [6272 x i512]* %src, i64 0, i64 %for.loop.idx6
  %dst.addr.0.04 = getelementptr [6272 x %"class.hls::vector<int, 16>"], [6272 x %"class.hls::vector<int, 16>"]* %dst, i64 0, i64 %for.loop.idx6, i32 0, i32 0
  call void @arraycpy_hls.p0a16i32.25([16 x i32]* %dst.addr.0.04, i512* %3, i64 0, i64 16)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %dst, [64 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x i32]* %dst, null
  %1 = icmp eq [64 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32([64 x i32]* nonnull %dst, [64 x i32]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32([64 x i32]* %dst, [64 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x i32]* %src, null
  %1 = icmp eq [64 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x i32], [64 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [64 x i32], [64 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192class.hls::vector<int, 16>"([8192 x i512]* %dst, [8192 x %"class.hls::vector<int, 16>"]* readonly align 64 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x i512]* %dst, null
  %1 = icmp eq [8192 x %"class.hls::vector<int, 16>"]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192class.hls::vector<int, 16>"([8192 x i512]* nonnull %dst, [8192 x %"class.hls::vector<int, 16>"]* nonnull %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192class.hls::vector<int, 16>"([8192 x i512]* %dst, [8192 x %"class.hls::vector<int, 16>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8192 x %"class.hls::vector<int, 16>"]* %src, null
  %1 = icmp eq [8192 x i512]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.03 = getelementptr [8192 x %"class.hls::vector<int, 16>"], [8192 x %"class.hls::vector<int, 16>"]* %src, i64 0, i64 %for.loop.idx6, i32 0, i32 0
  %3 = getelementptr [8192 x i512], [8192 x i512]* %dst, i64 0, i64 %for.loop.idx6
  call void @arraycpy_hls.p0a16i32(i512* %3, i64 0, [16 x i32]* %src.addr.0.03, i64 16)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([50176 x %"class.hls::vector<int, 16>"]* align 64, [50176 x i512]* readonly, [6272 x %"class.hls::vector<int, 16>"]* align 64, [6272 x i512]* readonly, [64 x i32]*, [64 x i32]* readonly align 512, [8192 x %"class.hls::vector<int, 16>"]* align 64, [8192 x i512]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a50176class.hls::vector<int, 16>.19"([50176 x %"class.hls::vector<int, 16>"]* align 64 %0, [50176 x i512]* %1)
  call fastcc void @"onebyonecpy_hls.p0a6272class.hls::vector<int, 16>"([6272 x %"class.hls::vector<int, 16>"]* align 64 %2, [6272 x i512]* %3)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %4, [64 x i32]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a8192class.hls::vector<int, 16>.49"([8192 x %"class.hls::vector<int, 16>"]* align 64 %6, [8192 x i512]* %7)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a50176class.hls::vector<int, 16>.19"([50176 x %"class.hls::vector<int, 16>"]* align 64 %dst, [50176 x i512]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [50176 x %"class.hls::vector<int, 16>"]* %dst, null
  %1 = icmp eq [50176 x i512]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a50176class.hls::vector<int, 16>.22"([50176 x %"class.hls::vector<int, 16>"]* nonnull %dst, [50176 x i512]* nonnull %src, i64 50176)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a50176class.hls::vector<int, 16>.22"([50176 x %"class.hls::vector<int, 16>"]* %dst, [50176 x i512]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [50176 x i512]* %src, null
  %1 = icmp eq [50176 x %"class.hls::vector<int, 16>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [50176 x i512], [50176 x i512]* %src, i64 0, i64 %for.loop.idx6
  %dst.addr.0.04 = getelementptr [50176 x %"class.hls::vector<int, 16>"], [50176 x %"class.hls::vector<int, 16>"]* %dst, i64 0, i64 %for.loop.idx6, i32 0, i32 0
  call void @arraycpy_hls.p0a16i32.25([16 x i32]* %dst.addr.0.04, i512* %3, i64 0, i64 16)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32.25([16 x i32]* %dst, i512* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq i512* %src, null
  %1 = icmp eq [16 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i32], [16 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %3 = mul i64 32, %for.loop.idx2
  %4 = add i64 %src_idx, %3
  %5 = load i512, i512* %src, align 4
  %6 = zext i64 %4 to i512
  %7 = lshr i512 %5, %6
  %.partselect = trunc i512 %7 to i32
  store i32 %.partselect, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i32(i512* %dst, i64 %dst_idx, [16 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x i32]* %src, null
  %1 = icmp eq i512* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = mul i64 32, %for.loop.idx2
  %4 = add i64 %dst_idx, %3
  %src.addr = getelementptr [16 x i32], [16 x i32]* %src, i64 0, i64 %for.loop.idx2
  %5 = load i32, i32* %src.addr, align 4
  %6 = load i512, i512* %dst, align 4
  %7 = zext i64 %4 to i512
  %8 = shl i512 4294967295, %7
  %9 = zext i32 %5 to i512
  %10 = shl i512 %9, %7
  %thr.xor1 = xor i512 %8, -1
  %thr.and2 = and i512 %6, %thr.xor1
  %thr.or3 = or i512 %10, %thr.and2
  store i512 %thr.or3, i512* %dst, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a6272class.hls::vector<int, 16>.35"([6272 x i512]* %dst, [6272 x %"class.hls::vector<int, 16>"]* readonly align 64 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [6272 x i512]* %dst, null
  %1 = icmp eq [6272 x %"class.hls::vector<int, 16>"]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a6272class.hls::vector<int, 16>.38"([6272 x i512]* nonnull %dst, [6272 x %"class.hls::vector<int, 16>"]* nonnull %src, i64 6272)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a6272class.hls::vector<int, 16>.38"([6272 x i512]* %dst, [6272 x %"class.hls::vector<int, 16>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [6272 x %"class.hls::vector<int, 16>"]* %src, null
  %1 = icmp eq [6272 x i512]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.03 = getelementptr [6272 x %"class.hls::vector<int, 16>"], [6272 x %"class.hls::vector<int, 16>"]* %src, i64 0, i64 %for.loop.idx6, i32 0, i32 0
  %3 = getelementptr [6272 x i512], [6272 x i512]* %dst, i64 0, i64 %for.loop.idx6
  call void @arraycpy_hls.p0a16i32(i512* %3, i64 0, [16 x i32]* %src.addr.0.03, i64 16)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192class.hls::vector<int, 16>.49"([8192 x %"class.hls::vector<int, 16>"]* align 64 %dst, [8192 x i512]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"class.hls::vector<int, 16>"]* %dst, null
  %1 = icmp eq [8192 x i512]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192class.hls::vector<int, 16>.52"([8192 x %"class.hls::vector<int, 16>"]* nonnull %dst, [8192 x i512]* nonnull %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192class.hls::vector<int, 16>.52"([8192 x %"class.hls::vector<int, 16>"]* %dst, [8192 x i512]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8192 x i512]* %src, null
  %1 = icmp eq [8192 x %"class.hls::vector<int, 16>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [8192 x i512], [8192 x i512]* %src, i64 0, i64 %for.loop.idx6
  %dst.addr.0.04 = getelementptr [8192 x %"class.hls::vector<int, 16>"], [8192 x %"class.hls::vector<int, 16>"]* %dst, i64 0, i64 %for.loop.idx6, i32 0, i32 0
  call void @arraycpy_hls.p0a16i32.25([16 x i32]* %dst.addr.0.04, i512* %3, i64 0, i64 16)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_MM_hw([50176 x i512]*, [6272 x i512]*, [64 x i32]*, [8192 x i512]*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([50176 x %"class.hls::vector<int, 16>"]* align 64, [50176 x i512]* readonly, [6272 x %"class.hls::vector<int, 16>"]* align 64, [6272 x i512]* readonly, [64 x i32]*, [64 x i32]* readonly align 512, [8192 x %"class.hls::vector<int, 16>"]* align 64, [8192 x i512]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192class.hls::vector<int, 16>.49"([8192 x %"class.hls::vector<int, 16>"]* align 64 %6, [8192 x i512]* %7)
  ret void
}

declare void @MM_hw_stub(%"class.hls::vector<int, 16>"* noalias nocapture nonnull readonly, %"class.hls::vector<int, 16>"* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, %"class.hls::vector<int, 16>"* noalias nocapture nonnull, i32, i32, i32)

define void @MM_hw_stub_wrapper([50176 x i512]*, [6272 x i512]*, [64 x i32]*, [8192 x i512]*, i32, i32, i32) #5 {
entry:
  %7 = call i8* @malloc(i64 3211264)
  %8 = bitcast i8* %7 to [50176 x %"class.hls::vector<int, 16>"]*
  %9 = call i8* @malloc(i64 401408)
  %10 = bitcast i8* %9 to [6272 x %"class.hls::vector<int, 16>"]*
  %11 = call i8* @malloc(i64 524288)
  %12 = bitcast i8* %11 to [8192 x %"class.hls::vector<int, 16>"]*
  call void @copy_out([50176 x %"class.hls::vector<int, 16>"]* %8, [50176 x i512]* %0, [6272 x %"class.hls::vector<int, 16>"]* %10, [6272 x i512]* %1, [64 x i32]* null, [64 x i32]* %2, [8192 x %"class.hls::vector<int, 16>"]* %12, [8192 x i512]* %3)
  %13 = bitcast [50176 x %"class.hls::vector<int, 16>"]* %8 to %"class.hls::vector<int, 16>"*
  %14 = bitcast [6272 x %"class.hls::vector<int, 16>"]* %10 to %"class.hls::vector<int, 16>"*
  %15 = bitcast [64 x i32]* %2 to i32*
  %16 = bitcast [8192 x %"class.hls::vector<int, 16>"]* %12 to %"class.hls::vector<int, 16>"*
  call void @MM_hw_stub(%"class.hls::vector<int, 16>"* %13, %"class.hls::vector<int, 16>"* %14, i32* %15, %"class.hls::vector<int, 16>"* %16, i32 %4, i32 %5, i32 %6)
  call void @copy_in([50176 x %"class.hls::vector<int, 16>"]* %8, [50176 x i512]* %0, [6272 x %"class.hls::vector<int, 16>"]* %10, [6272 x i512]* %1, [64 x i32]* null, [64 x i32]* %2, [8192 x %"class.hls::vector<int, 16>"]* %12, [8192 x i512]* %3)
  call void @free(i8* %7)
  call void @free(i8* %9)
  call void @free(i8* %11)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
