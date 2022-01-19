; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_mvt(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, double* %16, double* %17, i64 %18, i64 %19, i64 %20, double* %21, double* %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27) !dbg !3 {
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0, !dbg !7
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, double* %2, 1, !dbg !9
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 %3, 2, !dbg !10
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 %4, 3, 0, !dbg !11
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %5, 4, 0, !dbg !12
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0, !dbg !13
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, double* %7, 1, !dbg !14
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %8, 2, !dbg !15
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 %9, 3, 0, !dbg !16
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %10, 4, 0, !dbg !17
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %11, 0, !dbg !18
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, double* %12, 1, !dbg !19
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %13, 2, !dbg !20
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, i64 %14, 3, 0, !dbg !21
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %15, 4, 0, !dbg !22
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %16, 0, !dbg !23
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, double* %17, 1, !dbg !24
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %18, 2, !dbg !25
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, i64 %19, 3, 0, !dbg !26
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, i64 %20, 4, 0, !dbg !27
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %21, 0, !dbg !28
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, double* %22, 1, !dbg !29
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %23, 2, !dbg !30
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %24, 3, 0, !dbg !31
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %26, 4, 0, !dbg !32
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %25, 3, 1, !dbg !33
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %27, 4, 1, !dbg !34
  %56 = sext i32 %0 to i64, !dbg !35
  br label %57, !dbg !36

57:                                               ; preds = %81, %28
  %58 = phi i64 [ %82, %81 ], [ 0, %28 ]
  %59 = icmp slt i64 %58, %56, !dbg !37
  br i1 %59, label %60, label %83, !dbg !38

60:                                               ; preds = %57
  br label %61, !dbg !39

61:                                               ; preds = %64, %60
  %62 = phi i64 [ %80, %64 ], [ 0, %60 ]
  %63 = icmp slt i64 %62, %56, !dbg !40
  br i1 %63, label %64, label %81, !dbg !41

64:                                               ; preds = %61
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1, !dbg !42
  %66 = getelementptr double, double* %65, i64 %58, !dbg !43
  %67 = load double, double* %66, align 8, !dbg !44
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, 1, !dbg !45
  %69 = mul i64 %58, 2000, !dbg !46
  %70 = add i64 %69, %62, !dbg !47
  %71 = getelementptr double, double* %68, i64 %70, !dbg !48
  %72 = load double, double* %71, align 8, !dbg !49
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, 1, !dbg !50
  %74 = getelementptr double, double* %73, i64 %62, !dbg !51
  %75 = load double, double* %74, align 8, !dbg !52
  %76 = fmul double %72, %75, !dbg !53
  %77 = fadd double %67, %76, !dbg !54
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1, !dbg !55
  %79 = getelementptr double, double* %78, i64 %58, !dbg !56
  store double %77, double* %79, align 8, !dbg !57
  %80 = add i64 %62, 1, !dbg !58
  br label %61, !dbg !59

81:                                               ; preds = %61
  %82 = add i64 %58, 1, !dbg !60
  br label %57, !dbg !61

83:                                               ; preds = %57
  %84 = sext i32 %0 to i64, !dbg !62
  br label %85, !dbg !63

85:                                               ; preds = %109, %83
  %86 = phi i64 [ %110, %109 ], [ 0, %83 ]
  %87 = icmp slt i64 %86, %84, !dbg !64
  br i1 %87, label %88, label %111, !dbg !65

88:                                               ; preds = %85
  br label %89, !dbg !66

89:                                               ; preds = %92, %88
  %90 = phi i64 [ %108, %92 ], [ 0, %88 ]
  %91 = icmp slt i64 %90, %84, !dbg !67
  br i1 %91, label %92, label %109, !dbg !68

92:                                               ; preds = %89
  %93 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, 1, !dbg !69
  %94 = getelementptr double, double* %93, i64 %86, !dbg !70
  %95 = load double, double* %94, align 8, !dbg !71
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, 1, !dbg !72
  %97 = mul i64 %90, 2000, !dbg !73
  %98 = add i64 %97, %86, !dbg !74
  %99 = getelementptr double, double* %96, i64 %98, !dbg !75
  %100 = load double, double* %99, align 8, !dbg !76
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, 1, !dbg !77
  %102 = getelementptr double, double* %101, i64 %90, !dbg !78
  %103 = load double, double* %102, align 8, !dbg !79
  %104 = fmul double %100, %103, !dbg !80
  %105 = fadd double %95, %104, !dbg !81
  %106 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, 1, !dbg !82
  %107 = getelementptr double, double* %106, i64 %86, !dbg !83
  store double %105, double* %107, align 8, !dbg !84
  %108 = add i64 %90, 1, !dbg !85
  br label %89, !dbg !86

109:                                              ; preds = %89
  %110 = add i64 %86, 1, !dbg !87
  br label %85, !dbg !88

111:                                              ; preds = %85
  ret void, !dbg !89
}

define void @_mlir_ciface_kernel_mvt(i32 %0, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, { double*, double*, i64, [2 x i64], [2 x i64] }* %5) !dbg !90 {
  %7 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !91
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 0, !dbg !93
  %9 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !94
  %10 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 2, !dbg !95
  %11 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 3, 0, !dbg !96
  %12 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 4, 0, !dbg !97
  %13 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !98
  %14 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 0, !dbg !99
  %15 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 1, !dbg !100
  %16 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 2, !dbg !101
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 3, 0, !dbg !102
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 4, 0, !dbg !103
  %19 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, align 8, !dbg !104
  %20 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 0, !dbg !105
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 1, !dbg !106
  %22 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 2, !dbg !107
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 3, 0, !dbg !108
  %24 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 4, 0, !dbg !109
  %25 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, align 8, !dbg !110
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0, !dbg !111
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1, !dbg !112
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2, !dbg !113
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0, !dbg !114
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0, !dbg !115
  %31 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !116
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 0, !dbg !117
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !118
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 2, !dbg !119
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 3, 0, !dbg !120
  %36 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 3, 1, !dbg !121
  %37 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 4, 0, !dbg !122
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 4, 1, !dbg !123
  call void @renamed_kernel_mvt(i32 %0, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %20, double* %21, i64 %22, i64 %23, i64 %24, double* %26, double* %27, i64 %28, i64 %29, i64 %30, double* %32, double* %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38), !dbg !124
  ret void, !dbg !125
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_mvt", linkageName: "kernel_mvt", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "<stdin>", directory: "/home/xdb/bachelor-thesis/workspace/mlir-dace/.idea/PolyBenchSDIR/")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 4, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 5, column: 10, scope: !8)
!10 = !DILocation(line: 6, column: 10, scope: !8)
!11 = !DILocation(line: 7, column: 10, scope: !8)
!12 = !DILocation(line: 8, column: 10, scope: !8)
!13 = !DILocation(line: 10, column: 10, scope: !8)
!14 = !DILocation(line: 11, column: 10, scope: !8)
!15 = !DILocation(line: 12, column: 10, scope: !8)
!16 = !DILocation(line: 13, column: 11, scope: !8)
!17 = !DILocation(line: 14, column: 11, scope: !8)
!18 = !DILocation(line: 16, column: 11, scope: !8)
!19 = !DILocation(line: 17, column: 11, scope: !8)
!20 = !DILocation(line: 18, column: 11, scope: !8)
!21 = !DILocation(line: 19, column: 11, scope: !8)
!22 = !DILocation(line: 20, column: 11, scope: !8)
!23 = !DILocation(line: 22, column: 11, scope: !8)
!24 = !DILocation(line: 23, column: 11, scope: !8)
!25 = !DILocation(line: 24, column: 11, scope: !8)
!26 = !DILocation(line: 25, column: 11, scope: !8)
!27 = !DILocation(line: 26, column: 11, scope: !8)
!28 = !DILocation(line: 28, column: 11, scope: !8)
!29 = !DILocation(line: 29, column: 11, scope: !8)
!30 = !DILocation(line: 30, column: 11, scope: !8)
!31 = !DILocation(line: 31, column: 11, scope: !8)
!32 = !DILocation(line: 32, column: 11, scope: !8)
!33 = !DILocation(line: 33, column: 11, scope: !8)
!34 = !DILocation(line: 34, column: 11, scope: !8)
!35 = !DILocation(line: 35, column: 11, scope: !8)
!36 = !DILocation(line: 38, column: 5, scope: !8)
!37 = !DILocation(line: 40, column: 11, scope: !8)
!38 = !DILocation(line: 41, column: 5, scope: !8)
!39 = !DILocation(line: 45, column: 5, scope: !8)
!40 = !DILocation(line: 47, column: 11, scope: !8)
!41 = !DILocation(line: 48, column: 5, scope: !8)
!42 = !DILocation(line: 50, column: 11, scope: !8)
!43 = !DILocation(line: 51, column: 11, scope: !8)
!44 = !DILocation(line: 52, column: 11, scope: !8)
!45 = !DILocation(line: 53, column: 11, scope: !8)
!46 = !DILocation(line: 55, column: 11, scope: !8)
!47 = !DILocation(line: 56, column: 11, scope: !8)
!48 = !DILocation(line: 57, column: 11, scope: !8)
!49 = !DILocation(line: 58, column: 11, scope: !8)
!50 = !DILocation(line: 59, column: 11, scope: !8)
!51 = !DILocation(line: 60, column: 11, scope: !8)
!52 = !DILocation(line: 61, column: 11, scope: !8)
!53 = !DILocation(line: 62, column: 11, scope: !8)
!54 = !DILocation(line: 63, column: 11, scope: !8)
!55 = !DILocation(line: 64, column: 11, scope: !8)
!56 = !DILocation(line: 65, column: 11, scope: !8)
!57 = !DILocation(line: 66, column: 5, scope: !8)
!58 = !DILocation(line: 67, column: 11, scope: !8)
!59 = !DILocation(line: 68, column: 5, scope: !8)
!60 = !DILocation(line: 70, column: 11, scope: !8)
!61 = !DILocation(line: 71, column: 5, scope: !8)
!62 = !DILocation(line: 73, column: 11, scope: !8)
!63 = !DILocation(line: 76, column: 5, scope: !8)
!64 = !DILocation(line: 78, column: 11, scope: !8)
!65 = !DILocation(line: 79, column: 5, scope: !8)
!66 = !DILocation(line: 83, column: 5, scope: !8)
!67 = !DILocation(line: 85, column: 11, scope: !8)
!68 = !DILocation(line: 86, column: 5, scope: !8)
!69 = !DILocation(line: 88, column: 11, scope: !8)
!70 = !DILocation(line: 89, column: 11, scope: !8)
!71 = !DILocation(line: 90, column: 11, scope: !8)
!72 = !DILocation(line: 91, column: 11, scope: !8)
!73 = !DILocation(line: 93, column: 11, scope: !8)
!74 = !DILocation(line: 94, column: 11, scope: !8)
!75 = !DILocation(line: 95, column: 11, scope: !8)
!76 = !DILocation(line: 96, column: 11, scope: !8)
!77 = !DILocation(line: 97, column: 11, scope: !8)
!78 = !DILocation(line: 98, column: 11, scope: !8)
!79 = !DILocation(line: 99, column: 11, scope: !8)
!80 = !DILocation(line: 100, column: 11, scope: !8)
!81 = !DILocation(line: 101, column: 11, scope: !8)
!82 = !DILocation(line: 102, column: 11, scope: !8)
!83 = !DILocation(line: 103, column: 11, scope: !8)
!84 = !DILocation(line: 104, column: 5, scope: !8)
!85 = !DILocation(line: 105, column: 11, scope: !8)
!86 = !DILocation(line: 106, column: 5, scope: !8)
!87 = !DILocation(line: 108, column: 11, scope: !8)
!88 = !DILocation(line: 109, column: 5, scope: !8)
!89 = !DILocation(line: 111, column: 5, scope: !8)
!90 = distinct !DISubprogram(name: "_mlir_ciface_kernel_mvt", linkageName: "_mlir_ciface_kernel_mvt", scope: null, file: !4, line: 113, type: !5, scopeLine: 113, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!91 = !DILocation(line: 114, column: 10, scope: !92)
!92 = !DILexicalBlockFile(scope: !90, file: !4, discriminator: 0)
!93 = !DILocation(line: 115, column: 10, scope: !92)
!94 = !DILocation(line: 116, column: 10, scope: !92)
!95 = !DILocation(line: 117, column: 10, scope: !92)
!96 = !DILocation(line: 118, column: 10, scope: !92)
!97 = !DILocation(line: 119, column: 10, scope: !92)
!98 = !DILocation(line: 120, column: 10, scope: !92)
!99 = !DILocation(line: 121, column: 10, scope: !92)
!100 = !DILocation(line: 122, column: 10, scope: !92)
!101 = !DILocation(line: 123, column: 10, scope: !92)
!102 = !DILocation(line: 124, column: 11, scope: !92)
!103 = !DILocation(line: 125, column: 11, scope: !92)
!104 = !DILocation(line: 126, column: 11, scope: !92)
!105 = !DILocation(line: 127, column: 11, scope: !92)
!106 = !DILocation(line: 128, column: 11, scope: !92)
!107 = !DILocation(line: 129, column: 11, scope: !92)
!108 = !DILocation(line: 130, column: 11, scope: !92)
!109 = !DILocation(line: 131, column: 11, scope: !92)
!110 = !DILocation(line: 132, column: 11, scope: !92)
!111 = !DILocation(line: 133, column: 11, scope: !92)
!112 = !DILocation(line: 134, column: 11, scope: !92)
!113 = !DILocation(line: 135, column: 11, scope: !92)
!114 = !DILocation(line: 136, column: 11, scope: !92)
!115 = !DILocation(line: 137, column: 11, scope: !92)
!116 = !DILocation(line: 138, column: 11, scope: !92)
!117 = !DILocation(line: 139, column: 11, scope: !92)
!118 = !DILocation(line: 140, column: 11, scope: !92)
!119 = !DILocation(line: 141, column: 11, scope: !92)
!120 = !DILocation(line: 142, column: 11, scope: !92)
!121 = !DILocation(line: 143, column: 11, scope: !92)
!122 = !DILocation(line: 144, column: 11, scope: !92)
!123 = !DILocation(line: 145, column: 11, scope: !92)
!124 = !DILocation(line: 146, column: 5, scope: !92)
!125 = !DILocation(line: 147, column: 5, scope: !92)
