; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_gesummv(i32 %0, double %1, double %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, double* %17, double* %18, i64 %19, i64 %20, i64 %21, double* %22, double* %23, i64 %24, i64 %25, i64 %26, double* %27, double* %28, i64 %29, i64 %30, i64 %31) !dbg !3 {
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %3, 0, !dbg !7
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, double* %4, 1, !dbg !9
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %5, 2, !dbg !10
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %6, 3, 0, !dbg !11
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %8, 4, 0, !dbg !12
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %7, 3, 1, !dbg !13
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %9, 4, 1, !dbg !14
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %10, 0, !dbg !15
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, double* %11, 1, !dbg !16
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %12, 2, !dbg !17
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %13, 3, 0, !dbg !18
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %15, 4, 0, !dbg !19
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %14, 3, 1, !dbg !20
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %16, 4, 1, !dbg !21
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %17, 0, !dbg !22
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, double* %18, 1, !dbg !23
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, i64 %19, 2, !dbg !24
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 %20, 3, 0, !dbg !25
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 %21, 4, 0, !dbg !26
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %22, 0, !dbg !27
  %53 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, double* %23, 1, !dbg !28
  %54 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, i64 %24, 2, !dbg !29
  %55 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %54, i64 %25, 3, 0, !dbg !30
  %56 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %55, i64 %26, 4, 0, !dbg !31
  %57 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %27, 0, !dbg !32
  %58 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %57, double* %28, 1, !dbg !33
  %59 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, i64 %29, 2, !dbg !34
  %60 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %59, i64 %30, 3, 0, !dbg !35
  %61 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %60, i64 %31, 4, 0, !dbg !36
  %62 = sext i32 %0 to i64, !dbg !37
  br label %63, !dbg !38

63:                                               ; preds = %106, %32
  %64 = phi i64 [ %118, %106 ], [ 0, %32 ]
  %65 = icmp slt i64 %64, %62, !dbg !39
  br i1 %65, label %66, label %119, !dbg !40

66:                                               ; preds = %63
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1, !dbg !41
  %68 = getelementptr double, double* %67, i64 %64, !dbg !42
  store double 0.000000e+00, double* %68, align 8, !dbg !43
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1, !dbg !44
  %70 = getelementptr double, double* %69, i64 %64, !dbg !45
  store double 0.000000e+00, double* %70, align 8, !dbg !46
  br label %71, !dbg !47

71:                                               ; preds = %74, %66
  %72 = phi i64 [ %105, %74 ], [ 0, %66 ]
  %73 = icmp slt i64 %72, %62, !dbg !48
  br i1 %73, label %74, label %106, !dbg !49

74:                                               ; preds = %71
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1, !dbg !50
  %76 = mul i64 %64, 1300, !dbg !51
  %77 = add i64 %76, %72, !dbg !52
  %78 = getelementptr double, double* %75, i64 %77, !dbg !53
  %79 = load double, double* %78, align 8, !dbg !54
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %56, 1, !dbg !55
  %81 = getelementptr double, double* %80, i64 %72, !dbg !56
  %82 = load double, double* %81, align 8, !dbg !57
  %83 = fmul double %79, %82, !dbg !58
  %84 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1, !dbg !59
  %85 = getelementptr double, double* %84, i64 %64, !dbg !60
  %86 = load double, double* %85, align 8, !dbg !61
  %87 = fadd double %83, %86, !dbg !62
  %88 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1, !dbg !63
  %89 = getelementptr double, double* %88, i64 %64, !dbg !64
  store double %87, double* %89, align 8, !dbg !65
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1, !dbg !66
  %91 = mul i64 %64, 1300, !dbg !67
  %92 = add i64 %91, %72, !dbg !68
  %93 = getelementptr double, double* %90, i64 %92, !dbg !69
  %94 = load double, double* %93, align 8, !dbg !70
  %95 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %56, 1, !dbg !71
  %96 = getelementptr double, double* %95, i64 %72, !dbg !72
  %97 = load double, double* %96, align 8, !dbg !73
  %98 = fmul double %94, %97, !dbg !74
  %99 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1, !dbg !75
  %100 = getelementptr double, double* %99, i64 %64, !dbg !76
  %101 = load double, double* %100, align 8, !dbg !77
  %102 = fadd double %98, %101, !dbg !78
  %103 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1, !dbg !79
  %104 = getelementptr double, double* %103, i64 %64, !dbg !80
  store double %102, double* %104, align 8, !dbg !81
  %105 = add i64 %72, 1, !dbg !82
  br label %71, !dbg !83

106:                                              ; preds = %71
  %107 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1, !dbg !84
  %108 = getelementptr double, double* %107, i64 %64, !dbg !85
  %109 = load double, double* %108, align 8, !dbg !86
  %110 = fmul double %1, %109, !dbg !87
  %111 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1, !dbg !88
  %112 = getelementptr double, double* %111, i64 %64, !dbg !89
  %113 = load double, double* %112, align 8, !dbg !90
  %114 = fmul double %2, %113, !dbg !91
  %115 = fadd double %110, %114, !dbg !92
  %116 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1, !dbg !93
  %117 = getelementptr double, double* %116, i64 %64, !dbg !94
  store double %115, double* %117, align 8, !dbg !95
  %118 = add i64 %64, 1, !dbg !96
  br label %63, !dbg !97

119:                                              ; preds = %63
  ret void, !dbg !98
}

define void @_mlir_ciface_kernel_gesummv(i32 %0, double %1, double %2, { double*, double*, i64, [2 x i64], [2 x i64] }* %3, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, { double*, double*, i64, [1 x i64], [1 x i64] }* %6, { double*, double*, i64, [1 x i64], [1 x i64] }* %7) !dbg !99 {
  %9 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %3, align 8, !dbg !100
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 0, !dbg !102
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 1, !dbg !103
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 2, !dbg !104
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 3, 0, !dbg !105
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 3, 1, !dbg !106
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 4, 0, !dbg !107
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, 4, 1, !dbg !108
  %17 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, align 8, !dbg !109
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0, !dbg !110
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 1, !dbg !111
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 2, !dbg !112
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 0, !dbg !113
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 1, !dbg !114
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 0, !dbg !115
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 1, !dbg !116
  %25 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, align 8, !dbg !117
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0, !dbg !118
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1, !dbg !119
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2, !dbg !120
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0, !dbg !121
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0, !dbg !122
  %31 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %6, align 8, !dbg !123
  %32 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 0, !dbg !124
  %33 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 1, !dbg !125
  %34 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 2, !dbg !126
  %35 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 3, 0, !dbg !127
  %36 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 4, 0, !dbg !128
  %37 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %7, align 8, !dbg !129
  %38 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 0, !dbg !130
  %39 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 1, !dbg !131
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 2, !dbg !132
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 3, 0, !dbg !133
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 4, 0, !dbg !134
  call void @renamed_kernel_gesummv(i32 %0, double %1, double %2, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, double* %18, double* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, double* %26, double* %27, i64 %28, i64 %29, i64 %30, double* %32, double* %33, i64 %34, i64 %35, i64 %36, double* %38, double* %39, i64 %40, i64 %41, i64 %42), !dbg !135
  ret void, !dbg !136
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_gesummv", linkageName: "kernel_gesummv", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!27 = !DILocation(line: 26, column: 11, scope: !8)
!28 = !DILocation(line: 27, column: 11, scope: !8)
!29 = !DILocation(line: 28, column: 11, scope: !8)
!30 = !DILocation(line: 29, column: 11, scope: !8)
!31 = !DILocation(line: 30, column: 11, scope: !8)
!32 = !DILocation(line: 32, column: 11, scope: !8)
!33 = !DILocation(line: 33, column: 11, scope: !8)
!34 = !DILocation(line: 34, column: 11, scope: !8)
!35 = !DILocation(line: 35, column: 11, scope: !8)
!36 = !DILocation(line: 36, column: 11, scope: !8)
!37 = !DILocation(line: 38, column: 11, scope: !8)
!38 = !DILocation(line: 41, column: 5, scope: !8)
!39 = !DILocation(line: 43, column: 11, scope: !8)
!40 = !DILocation(line: 44, column: 5, scope: !8)
!41 = !DILocation(line: 46, column: 11, scope: !8)
!42 = !DILocation(line: 47, column: 11, scope: !8)
!43 = !DILocation(line: 48, column: 5, scope: !8)
!44 = !DILocation(line: 49, column: 11, scope: !8)
!45 = !DILocation(line: 50, column: 11, scope: !8)
!46 = !DILocation(line: 51, column: 5, scope: !8)
!47 = !DILocation(line: 54, column: 5, scope: !8)
!48 = !DILocation(line: 56, column: 11, scope: !8)
!49 = !DILocation(line: 57, column: 5, scope: !8)
!50 = !DILocation(line: 59, column: 11, scope: !8)
!51 = !DILocation(line: 61, column: 11, scope: !8)
!52 = !DILocation(line: 62, column: 11, scope: !8)
!53 = !DILocation(line: 63, column: 11, scope: !8)
!54 = !DILocation(line: 64, column: 11, scope: !8)
!55 = !DILocation(line: 65, column: 11, scope: !8)
!56 = !DILocation(line: 66, column: 11, scope: !8)
!57 = !DILocation(line: 67, column: 11, scope: !8)
!58 = !DILocation(line: 68, column: 11, scope: !8)
!59 = !DILocation(line: 69, column: 11, scope: !8)
!60 = !DILocation(line: 70, column: 11, scope: !8)
!61 = !DILocation(line: 71, column: 11, scope: !8)
!62 = !DILocation(line: 72, column: 11, scope: !8)
!63 = !DILocation(line: 73, column: 11, scope: !8)
!64 = !DILocation(line: 74, column: 11, scope: !8)
!65 = !DILocation(line: 75, column: 5, scope: !8)
!66 = !DILocation(line: 76, column: 11, scope: !8)
!67 = !DILocation(line: 78, column: 11, scope: !8)
!68 = !DILocation(line: 79, column: 11, scope: !8)
!69 = !DILocation(line: 80, column: 11, scope: !8)
!70 = !DILocation(line: 81, column: 11, scope: !8)
!71 = !DILocation(line: 82, column: 11, scope: !8)
!72 = !DILocation(line: 83, column: 11, scope: !8)
!73 = !DILocation(line: 84, column: 11, scope: !8)
!74 = !DILocation(line: 85, column: 11, scope: !8)
!75 = !DILocation(line: 86, column: 11, scope: !8)
!76 = !DILocation(line: 87, column: 11, scope: !8)
!77 = !DILocation(line: 88, column: 11, scope: !8)
!78 = !DILocation(line: 89, column: 11, scope: !8)
!79 = !DILocation(line: 90, column: 11, scope: !8)
!80 = !DILocation(line: 91, column: 11, scope: !8)
!81 = !DILocation(line: 92, column: 5, scope: !8)
!82 = !DILocation(line: 93, column: 11, scope: !8)
!83 = !DILocation(line: 94, column: 5, scope: !8)
!84 = !DILocation(line: 96, column: 11, scope: !8)
!85 = !DILocation(line: 97, column: 11, scope: !8)
!86 = !DILocation(line: 98, column: 11, scope: !8)
!87 = !DILocation(line: 99, column: 11, scope: !8)
!88 = !DILocation(line: 100, column: 11, scope: !8)
!89 = !DILocation(line: 101, column: 11, scope: !8)
!90 = !DILocation(line: 102, column: 11, scope: !8)
!91 = !DILocation(line: 103, column: 11, scope: !8)
!92 = !DILocation(line: 104, column: 11, scope: !8)
!93 = !DILocation(line: 105, column: 11, scope: !8)
!94 = !DILocation(line: 106, column: 11, scope: !8)
!95 = !DILocation(line: 107, column: 5, scope: !8)
!96 = !DILocation(line: 108, column: 11, scope: !8)
!97 = !DILocation(line: 109, column: 5, scope: !8)
!98 = !DILocation(line: 111, column: 5, scope: !8)
!99 = distinct !DISubprogram(name: "_mlir_ciface_kernel_gesummv", linkageName: "_mlir_ciface_kernel_gesummv", scope: null, file: !4, line: 113, type: !5, scopeLine: 113, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!100 = !DILocation(line: 114, column: 10, scope: !101)
!101 = !DILexicalBlockFile(scope: !99, file: !4, discriminator: 0)
!102 = !DILocation(line: 115, column: 10, scope: !101)
!103 = !DILocation(line: 116, column: 10, scope: !101)
!104 = !DILocation(line: 117, column: 10, scope: !101)
!105 = !DILocation(line: 118, column: 10, scope: !101)
!106 = !DILocation(line: 119, column: 10, scope: !101)
!107 = !DILocation(line: 120, column: 10, scope: !101)
!108 = !DILocation(line: 121, column: 10, scope: !101)
!109 = !DILocation(line: 122, column: 10, scope: !101)
!110 = !DILocation(line: 123, column: 10, scope: !101)
!111 = !DILocation(line: 124, column: 11, scope: !101)
!112 = !DILocation(line: 125, column: 11, scope: !101)
!113 = !DILocation(line: 126, column: 11, scope: !101)
!114 = !DILocation(line: 127, column: 11, scope: !101)
!115 = !DILocation(line: 128, column: 11, scope: !101)
!116 = !DILocation(line: 129, column: 11, scope: !101)
!117 = !DILocation(line: 130, column: 11, scope: !101)
!118 = !DILocation(line: 131, column: 11, scope: !101)
!119 = !DILocation(line: 132, column: 11, scope: !101)
!120 = !DILocation(line: 133, column: 11, scope: !101)
!121 = !DILocation(line: 134, column: 11, scope: !101)
!122 = !DILocation(line: 135, column: 11, scope: !101)
!123 = !DILocation(line: 136, column: 11, scope: !101)
!124 = !DILocation(line: 137, column: 11, scope: !101)
!125 = !DILocation(line: 138, column: 11, scope: !101)
!126 = !DILocation(line: 139, column: 11, scope: !101)
!127 = !DILocation(line: 140, column: 11, scope: !101)
!128 = !DILocation(line: 141, column: 11, scope: !101)
!129 = !DILocation(line: 142, column: 11, scope: !101)
!130 = !DILocation(line: 143, column: 11, scope: !101)
!131 = !DILocation(line: 144, column: 11, scope: !101)
!132 = !DILocation(line: 145, column: 11, scope: !101)
!133 = !DILocation(line: 146, column: 11, scope: !101)
!134 = !DILocation(line: 147, column: 11, scope: !101)
!135 = !DILocation(line: 148, column: 5, scope: !101)
!136 = !DILocation(line: 149, column: 5, scope: !101)
