; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @renamed_kernel_floyd_warshall(i32 %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !3 {
  %9 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %1, 0, !dbg !7
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %9, i32* %2, 1, !dbg !9
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !10
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !11
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !12
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !13
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !14
  %16 = sext i32 %0 to i64, !dbg !15
  br label %17, !dbg !16

17:                                               ; preds = %59, %8
  %18 = phi i64 [ %60, %59 ], [ 0, %8 ]
  %19 = icmp slt i64 %18, %16, !dbg !17
  br i1 %19, label %20, label %61, !dbg !18

20:                                               ; preds = %17
  br label %21, !dbg !19

21:                                               ; preds = %57, %20
  %22 = phi i64 [ %58, %57 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, %16, !dbg !20
  br i1 %23, label %24, label %59, !dbg !21

24:                                               ; preds = %21
  br label %25, !dbg !22

25:                                               ; preds = %51, %24
  %26 = phi i64 [ %56, %51 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, %16, !dbg !23
  br i1 %27, label %28, label %57, !dbg !24

28:                                               ; preds = %25
  %29 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !25
  %30 = mul i64 %22, 2800, !dbg !26
  %31 = add i64 %30, %26, !dbg !27
  %32 = getelementptr i32, i32* %29, i64 %31, !dbg !28
  %33 = load i32, i32* %32, align 4, !dbg !29
  %34 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !30
  %35 = mul i64 %22, 2800, !dbg !31
  %36 = add i64 %35, %18, !dbg !32
  %37 = getelementptr i32, i32* %34, i64 %36, !dbg !33
  %38 = load i32, i32* %37, align 4, !dbg !34
  %39 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !35
  %40 = mul i64 %18, 2800, !dbg !36
  %41 = add i64 %40, %26, !dbg !37
  %42 = getelementptr i32, i32* %39, i64 %41, !dbg !38
  %43 = load i32, i32* %42, align 4, !dbg !39
  %44 = add i32 %38, %43, !dbg !40
  %45 = icmp slt i32 %33, %44, !dbg !41
  br i1 %45, label %46, label %47, !dbg !42

46:                                               ; preds = %28
  br label %49, !dbg !43

47:                                               ; preds = %28
  %48 = add i32 %38, %43, !dbg !44
  br label %49, !dbg !45

49:                                               ; preds = %46, %47
  %50 = phi i32 [ %48, %47 ], [ %33, %46 ]
  br label %51, !dbg !46

51:                                               ; preds = %49
  %52 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !47
  %53 = mul i64 %22, 2800, !dbg !48
  %54 = add i64 %53, %26, !dbg !49
  %55 = getelementptr i32, i32* %52, i64 %54, !dbg !50
  store i32 %50, i32* %55, align 4, !dbg !51
  %56 = add i64 %26, 1, !dbg !52
  br label %25, !dbg !53

57:                                               ; preds = %25
  %58 = add i64 %22, 1, !dbg !54
  br label %21, !dbg !55

59:                                               ; preds = %21
  %60 = add i64 %18, 1, !dbg !56
  br label %17, !dbg !57

61:                                               ; preds = %17
  ret void, !dbg !58
}

define void @_mlir_ciface_kernel_floyd_warshall(i32 %0, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1) !dbg !59 {
  %3 = load { i32*, i32*, i64, [2 x i64], [2 x i64] }, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !60
  %4 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !62
  %5 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !63
  %6 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !64
  %7 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !65
  %8 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !66
  %9 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !67
  %10 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !68
  call void @renamed_kernel_floyd_warshall(i32 %0, i32* %4, i32* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !69
  ret void, !dbg !70
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_floyd_warshall", linkageName: "kernel_floyd_warshall", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "<stdin>", directory: "/home/xdb/bachelor-thesis/workspace/mlir-dace/.idea/PolyBenchSDIR/")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 4, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 5, column: 10, scope: !8)
!10 = !DILocation(line: 6, column: 10, scope: !8)
!11 = !DILocation(line: 7, column: 10, scope: !8)
!12 = !DILocation(line: 8, column: 10, scope: !8)
!13 = !DILocation(line: 9, column: 10, scope: !8)
!14 = !DILocation(line: 10, column: 10, scope: !8)
!15 = !DILocation(line: 11, column: 10, scope: !8)
!16 = !DILocation(line: 14, column: 5, scope: !8)
!17 = !DILocation(line: 16, column: 11, scope: !8)
!18 = !DILocation(line: 17, column: 5, scope: !8)
!19 = !DILocation(line: 21, column: 5, scope: !8)
!20 = !DILocation(line: 23, column: 11, scope: !8)
!21 = !DILocation(line: 24, column: 5, scope: !8)
!22 = !DILocation(line: 28, column: 5, scope: !8)
!23 = !DILocation(line: 30, column: 11, scope: !8)
!24 = !DILocation(line: 31, column: 5, scope: !8)
!25 = !DILocation(line: 33, column: 11, scope: !8)
!26 = !DILocation(line: 35, column: 11, scope: !8)
!27 = !DILocation(line: 36, column: 11, scope: !8)
!28 = !DILocation(line: 37, column: 11, scope: !8)
!29 = !DILocation(line: 38, column: 11, scope: !8)
!30 = !DILocation(line: 39, column: 11, scope: !8)
!31 = !DILocation(line: 41, column: 11, scope: !8)
!32 = !DILocation(line: 42, column: 11, scope: !8)
!33 = !DILocation(line: 43, column: 11, scope: !8)
!34 = !DILocation(line: 44, column: 11, scope: !8)
!35 = !DILocation(line: 45, column: 11, scope: !8)
!36 = !DILocation(line: 47, column: 11, scope: !8)
!37 = !DILocation(line: 48, column: 11, scope: !8)
!38 = !DILocation(line: 49, column: 11, scope: !8)
!39 = !DILocation(line: 50, column: 11, scope: !8)
!40 = !DILocation(line: 51, column: 11, scope: !8)
!41 = !DILocation(line: 52, column: 11, scope: !8)
!42 = !DILocation(line: 53, column: 5, scope: !8)
!43 = !DILocation(line: 55, column: 5, scope: !8)
!44 = !DILocation(line: 57, column: 11, scope: !8)
!45 = !DILocation(line: 58, column: 5, scope: !8)
!46 = !DILocation(line: 60, column: 5, scope: !8)
!47 = !DILocation(line: 62, column: 11, scope: !8)
!48 = !DILocation(line: 64, column: 11, scope: !8)
!49 = !DILocation(line: 65, column: 11, scope: !8)
!50 = !DILocation(line: 66, column: 11, scope: !8)
!51 = !DILocation(line: 67, column: 5, scope: !8)
!52 = !DILocation(line: 68, column: 11, scope: !8)
!53 = !DILocation(line: 69, column: 5, scope: !8)
!54 = !DILocation(line: 71, column: 11, scope: !8)
!55 = !DILocation(line: 72, column: 5, scope: !8)
!56 = !DILocation(line: 74, column: 11, scope: !8)
!57 = !DILocation(line: 75, column: 5, scope: !8)
!58 = !DILocation(line: 77, column: 5, scope: !8)
!59 = distinct !DISubprogram(name: "_mlir_ciface_kernel_floyd_warshall", linkageName: "_mlir_ciface_kernel_floyd_warshall", scope: null, file: !4, line: 79, type: !5, scopeLine: 79, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!60 = !DILocation(line: 80, column: 10, scope: !61)
!61 = !DILexicalBlockFile(scope: !59, file: !4, discriminator: 0)
!62 = !DILocation(line: 81, column: 10, scope: !61)
!63 = !DILocation(line: 82, column: 10, scope: !61)
!64 = !DILocation(line: 83, column: 10, scope: !61)
!65 = !DILocation(line: 84, column: 10, scope: !61)
!66 = !DILocation(line: 85, column: 10, scope: !61)
!67 = !DILocation(line: 86, column: 10, scope: !61)
!68 = !DILocation(line: 87, column: 10, scope: !61)
!69 = !DILocation(line: 88, column: 5, scope: !61)
!70 = !DILocation(line: 89, column: 5, scope: !61)
