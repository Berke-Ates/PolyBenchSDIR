; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @renamed_kernel_gemm(i32 %0, i32 %1, i32 %2, double %3, double %4, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25) !dbg !3 {
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %5, 0, !dbg !7
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, double* %6, 1, !dbg !9
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %7, 2, !dbg !10
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %8, 3, 0, !dbg !11
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %10, 4, 0, !dbg !12
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %9, 3, 1, !dbg !13
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %11, 4, 1, !dbg !14
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0, !dbg !15
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, double* %13, 1, !dbg !16
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %14, 2, !dbg !17
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %15, 3, 0, !dbg !18
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %17, 4, 0, !dbg !19
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %16, 3, 1, !dbg !20
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %18, 4, 1, !dbg !21
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0, !dbg !22
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, double* %20, 1, !dbg !23
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %21, 2, !dbg !24
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %22, 3, 0, !dbg !25
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %24, 4, 0, !dbg !26
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %23, 3, 1, !dbg !27
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %25, 4, 1, !dbg !28
  %48 = sext i32 %1 to i64, !dbg !29
  %49 = sext i32 %2 to i64, !dbg !30
  %50 = sext i32 %1 to i64, !dbg !31
  %51 = sext i32 %0 to i64, !dbg !32
  br label %52, !dbg !33

52:                                               ; preds = %105, %26
  %53 = phi i64 [ %106, %105 ], [ 0, %26 ]
  %54 = icmp slt i64 %53, %51, !dbg !34
  br i1 %54, label %55, label %107, !dbg !35

55:                                               ; preds = %52
  br label %56, !dbg !36

56:                                               ; preds = %59, %55
  %57 = phi i64 [ %70, %59 ], [ 0, %55 ]
  %58 = icmp slt i64 %57, %48, !dbg !37
  br i1 %58, label %59, label %71, !dbg !38

59:                                               ; preds = %56
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1, !dbg !39
  %61 = mul i64 %53, 1100, !dbg !40
  %62 = add i64 %61, %57, !dbg !41
  %63 = getelementptr double, double* %60, i64 %62, !dbg !42
  %64 = load double, double* %63, align 8, !dbg !43
  %65 = fmul double %64, %4, !dbg !44
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1, !dbg !45
  %67 = mul i64 %53, 1100, !dbg !46
  %68 = add i64 %67, %57, !dbg !47
  %69 = getelementptr double, double* %66, i64 %68, !dbg !48
  store double %65, double* %69, align 8, !dbg !49
  %70 = add i64 %57, 1, !dbg !50
  br label %56, !dbg !51

71:                                               ; preds = %56
  br label %72, !dbg !52

72:                                               ; preds = %103, %71
  %73 = phi i64 [ %104, %103 ], [ 0, %71 ]
  %74 = icmp slt i64 %73, %49, !dbg !53
  br i1 %74, label %75, label %105, !dbg !54

75:                                               ; preds = %72
  br label %76, !dbg !55

76:                                               ; preds = %79, %75
  %77 = phi i64 [ %102, %79 ], [ 0, %75 ]
  %78 = icmp slt i64 %77, %50, !dbg !56
  br i1 %78, label %79, label %103, !dbg !57

79:                                               ; preds = %76
  %80 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, 1, !dbg !58
  %81 = mul i64 %53, 1200, !dbg !59
  %82 = add i64 %81, %73, !dbg !60
  %83 = getelementptr double, double* %80, i64 %82, !dbg !61
  %84 = load double, double* %83, align 8, !dbg !62
  %85 = fmul double %3, %84, !dbg !63
  %86 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 1, !dbg !64
  %87 = mul i64 %73, 1100, !dbg !65
  %88 = add i64 %87, %77, !dbg !66
  %89 = getelementptr double, double* %86, i64 %88, !dbg !67
  %90 = load double, double* %89, align 8, !dbg !68
  %91 = fmul double %85, %90, !dbg !69
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1, !dbg !70
  %93 = mul i64 %53, 1100, !dbg !71
  %94 = add i64 %93, %77, !dbg !72
  %95 = getelementptr double, double* %92, i64 %94, !dbg !73
  %96 = load double, double* %95, align 8, !dbg !74
  %97 = fadd double %96, %91, !dbg !75
  %98 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1, !dbg !76
  %99 = mul i64 %53, 1100, !dbg !77
  %100 = add i64 %99, %77, !dbg !78
  %101 = getelementptr double, double* %98, i64 %100, !dbg !79
  store double %97, double* %101, align 8, !dbg !80
  %102 = add i64 %77, 1, !dbg !81
  br label %76, !dbg !82

103:                                              ; preds = %76
  %104 = add i64 %73, 1, !dbg !83
  br label %72, !dbg !84

105:                                              ; preds = %72
  %106 = add i64 %53, 1, !dbg !85
  br label %52, !dbg !86

107:                                              ; preds = %52
  ret void, !dbg !87
}

define void @_mlir_ciface_kernel_gemm(i32 %0, i32 %1, i32 %2, double %3, double %4, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, { double*, double*, i64, [2 x i64], [2 x i64] }* %6, { double*, double*, i64, [2 x i64], [2 x i64] }* %7) !dbg !88 {
  %9 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !89
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 0, !dbg !91
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 1, !dbg !92
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 2, !dbg !93
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 3, 0, !dbg !94
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 3, 1, !dbg !95
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 4, 0, !dbg !96
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 4, 1, !dbg !97
  %17 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %6, align 8, !dbg !98
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0, !dbg !99
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 1, !dbg !100
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 2, !dbg !101
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 0, !dbg !102
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 1, !dbg !103
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 0, !dbg !104
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 1, !dbg !105
  %25 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %7, align 8, !dbg !106
  %26 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 0, !dbg !107
  %27 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1, !dbg !108
  %28 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 2, !dbg !109
  %29 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 3, 0, !dbg !110
  %30 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 3, 1, !dbg !111
  %31 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 4, 0, !dbg !112
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 4, 1, !dbg !113
  call void @renamed_kernel_gemm(i32 %0, i32 %1, i32 %2, double %3, double %4, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, double* %18, double* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, double* %26, double* %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32), !dbg !114
  ret void, !dbg !115
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_gemm", linkageName: "kernel_gemm", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!15 = !DILocation(line: 12, column: 10, scope: !8)
!16 = !DILocation(line: 13, column: 11, scope: !8)
!17 = !DILocation(line: 14, column: 11, scope: !8)
!18 = !DILocation(line: 15, column: 11, scope: !8)
!19 = !DILocation(line: 16, column: 11, scope: !8)
!20 = !DILocation(line: 17, column: 11, scope: !8)
!21 = !DILocation(line: 18, column: 11, scope: !8)
!22 = !DILocation(line: 20, column: 11, scope: !8)
!23 = !DILocation(line: 21, column: 11, scope: !8)
!24 = !DILocation(line: 22, column: 11, scope: !8)
!25 = !DILocation(line: 23, column: 11, scope: !8)
!26 = !DILocation(line: 24, column: 11, scope: !8)
!27 = !DILocation(line: 25, column: 11, scope: !8)
!28 = !DILocation(line: 26, column: 11, scope: !8)
!29 = !DILocation(line: 27, column: 11, scope: !8)
!30 = !DILocation(line: 28, column: 11, scope: !8)
!31 = !DILocation(line: 29, column: 11, scope: !8)
!32 = !DILocation(line: 30, column: 11, scope: !8)
!33 = !DILocation(line: 33, column: 5, scope: !8)
!34 = !DILocation(line: 35, column: 11, scope: !8)
!35 = !DILocation(line: 36, column: 5, scope: !8)
!36 = !DILocation(line: 40, column: 5, scope: !8)
!37 = !DILocation(line: 42, column: 11, scope: !8)
!38 = !DILocation(line: 43, column: 5, scope: !8)
!39 = !DILocation(line: 45, column: 11, scope: !8)
!40 = !DILocation(line: 47, column: 11, scope: !8)
!41 = !DILocation(line: 48, column: 11, scope: !8)
!42 = !DILocation(line: 49, column: 11, scope: !8)
!43 = !DILocation(line: 50, column: 11, scope: !8)
!44 = !DILocation(line: 51, column: 11, scope: !8)
!45 = !DILocation(line: 52, column: 11, scope: !8)
!46 = !DILocation(line: 54, column: 11, scope: !8)
!47 = !DILocation(line: 55, column: 11, scope: !8)
!48 = !DILocation(line: 56, column: 11, scope: !8)
!49 = !DILocation(line: 57, column: 5, scope: !8)
!50 = !DILocation(line: 58, column: 11, scope: !8)
!51 = !DILocation(line: 59, column: 5, scope: !8)
!52 = !DILocation(line: 63, column: 5, scope: !8)
!53 = !DILocation(line: 65, column: 11, scope: !8)
!54 = !DILocation(line: 66, column: 5, scope: !8)
!55 = !DILocation(line: 70, column: 5, scope: !8)
!56 = !DILocation(line: 72, column: 11, scope: !8)
!57 = !DILocation(line: 73, column: 5, scope: !8)
!58 = !DILocation(line: 75, column: 11, scope: !8)
!59 = !DILocation(line: 77, column: 11, scope: !8)
!60 = !DILocation(line: 78, column: 11, scope: !8)
!61 = !DILocation(line: 79, column: 11, scope: !8)
!62 = !DILocation(line: 80, column: 11, scope: !8)
!63 = !DILocation(line: 81, column: 11, scope: !8)
!64 = !DILocation(line: 82, column: 11, scope: !8)
!65 = !DILocation(line: 84, column: 11, scope: !8)
!66 = !DILocation(line: 85, column: 11, scope: !8)
!67 = !DILocation(line: 86, column: 11, scope: !8)
!68 = !DILocation(line: 87, column: 11, scope: !8)
!69 = !DILocation(line: 88, column: 11, scope: !8)
!70 = !DILocation(line: 89, column: 11, scope: !8)
!71 = !DILocation(line: 91, column: 11, scope: !8)
!72 = !DILocation(line: 92, column: 11, scope: !8)
!73 = !DILocation(line: 93, column: 11, scope: !8)
!74 = !DILocation(line: 94, column: 11, scope: !8)
!75 = !DILocation(line: 95, column: 11, scope: !8)
!76 = !DILocation(line: 96, column: 11, scope: !8)
!77 = !DILocation(line: 98, column: 11, scope: !8)
!78 = !DILocation(line: 99, column: 11, scope: !8)
!79 = !DILocation(line: 100, column: 11, scope: !8)
!80 = !DILocation(line: 101, column: 5, scope: !8)
!81 = !DILocation(line: 102, column: 11, scope: !8)
!82 = !DILocation(line: 103, column: 5, scope: !8)
!83 = !DILocation(line: 105, column: 11, scope: !8)
!84 = !DILocation(line: 106, column: 5, scope: !8)
!85 = !DILocation(line: 108, column: 11, scope: !8)
!86 = !DILocation(line: 109, column: 5, scope: !8)
!87 = !DILocation(line: 111, column: 5, scope: !8)
!88 = distinct !DISubprogram(name: "_mlir_ciface_kernel_gemm", linkageName: "_mlir_ciface_kernel_gemm", scope: null, file: !4, line: 113, type: !5, scopeLine: 113, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!89 = !DILocation(line: 114, column: 10, scope: !90)
!90 = !DILexicalBlockFile(scope: !88, file: !4, discriminator: 0)
!91 = !DILocation(line: 115, column: 10, scope: !90)
!92 = !DILocation(line: 116, column: 10, scope: !90)
!93 = !DILocation(line: 117, column: 10, scope: !90)
!94 = !DILocation(line: 118, column: 10, scope: !90)
!95 = !DILocation(line: 119, column: 10, scope: !90)
!96 = !DILocation(line: 120, column: 10, scope: !90)
!97 = !DILocation(line: 121, column: 10, scope: !90)
!98 = !DILocation(line: 122, column: 10, scope: !90)
!99 = !DILocation(line: 123, column: 10, scope: !90)
!100 = !DILocation(line: 124, column: 11, scope: !90)
!101 = !DILocation(line: 125, column: 11, scope: !90)
!102 = !DILocation(line: 126, column: 11, scope: !90)
!103 = !DILocation(line: 127, column: 11, scope: !90)
!104 = !DILocation(line: 128, column: 11, scope: !90)
!105 = !DILocation(line: 129, column: 11, scope: !90)
!106 = !DILocation(line: 130, column: 11, scope: !90)
!107 = !DILocation(line: 131, column: 11, scope: !90)
!108 = !DILocation(line: 132, column: 11, scope: !90)
!109 = !DILocation(line: 133, column: 11, scope: !90)
!110 = !DILocation(line: 134, column: 11, scope: !90)
!111 = !DILocation(line: 135, column: 11, scope: !90)
!112 = !DILocation(line: 136, column: 11, scope: !90)
!113 = !DILocation(line: 137, column: 11, scope: !90)
!114 = !DILocation(line: 138, column: 5, scope: !90)
!115 = !DILocation(line: 139, column: 5, scope: !90)
