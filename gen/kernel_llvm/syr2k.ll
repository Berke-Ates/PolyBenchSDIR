; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_syr2k(i32 %0, i32 %1, double %2, double %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, double* %18, double* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24) !dbg !3 {
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0, !dbg !7
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %5, 1, !dbg !9
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %6, 2, !dbg !10
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %7, 3, 0, !dbg !11
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %9, 4, 0, !dbg !12
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %8, 3, 1, !dbg !13
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %10, 4, 1, !dbg !14
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %11, 0, !dbg !15
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, double* %12, 1, !dbg !16
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %13, 2, !dbg !17
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %14, 3, 0, !dbg !18
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %16, 4, 0, !dbg !19
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %15, 3, 1, !dbg !20
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %17, 4, 1, !dbg !21
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %18, 0, !dbg !22
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, double* %19, 1, !dbg !23
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %20, 2, !dbg !24
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %21, 3, 0, !dbg !25
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %23, 4, 0, !dbg !26
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %22, 3, 1, !dbg !27
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %24, 4, 1, !dbg !28
  %47 = sext i32 %1 to i64, !dbg !29
  %48 = sext i32 %0 to i64, !dbg !30
  br label %49, !dbg !31

49:                                               ; preds = %117, %25
  %50 = phi i64 [ %118, %117 ], [ 0, %25 ]
  %51 = icmp slt i64 %50, %48, !dbg !32
  br i1 %51, label %52, label %119, !dbg !33

52:                                               ; preds = %49
  %53 = add i64 %50, 1, !dbg !34
  br label %54, !dbg !35

54:                                               ; preds = %57, %52
  %55 = phi i64 [ %68, %57 ], [ 0, %52 ]
  %56 = icmp slt i64 %55, %53, !dbg !36
  br i1 %56, label %57, label %69, !dbg !37

57:                                               ; preds = %54
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !38
  %59 = mul i64 %50, 1200, !dbg !39
  %60 = add i64 %59, %55, !dbg !40
  %61 = getelementptr double, double* %58, i64 %60, !dbg !41
  %62 = load double, double* %61, align 8, !dbg !42
  %63 = fmul double %62, %3, !dbg !43
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !44
  %65 = mul i64 %50, 1200, !dbg !45
  %66 = add i64 %65, %55, !dbg !46
  %67 = getelementptr double, double* %64, i64 %66, !dbg !47
  store double %63, double* %67, align 8, !dbg !48
  %68 = add i64 %55, 1, !dbg !49
  br label %54, !dbg !50

69:                                               ; preds = %54
  br label %70, !dbg !51

70:                                               ; preds = %115, %69
  %71 = phi i64 [ %116, %115 ], [ 0, %69 ]
  %72 = icmp slt i64 %71, %47, !dbg !52
  br i1 %72, label %73, label %117, !dbg !53

73:                                               ; preds = %70
  %74 = add i64 %50, 1, !dbg !54
  br label %75, !dbg !55

75:                                               ; preds = %78, %73
  %76 = phi i64 [ %114, %78 ], [ 0, %73 ]
  %77 = icmp slt i64 %76, %74, !dbg !56
  br i1 %77, label %78, label %115, !dbg !57

78:                                               ; preds = %75
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1, !dbg !58
  %80 = mul i64 %76, 1000, !dbg !59
  %81 = add i64 %80, %71, !dbg !60
  %82 = getelementptr double, double* %79, i64 %81, !dbg !61
  %83 = load double, double* %82, align 8, !dbg !62
  %84 = fmul double %83, %2, !dbg !63
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1, !dbg !64
  %86 = mul i64 %50, 1000, !dbg !65
  %87 = add i64 %86, %71, !dbg !66
  %88 = getelementptr double, double* %85, i64 %87, !dbg !67
  %89 = load double, double* %88, align 8, !dbg !68
  %90 = fmul double %84, %89, !dbg !69
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1, !dbg !70
  %92 = mul i64 %76, 1000, !dbg !71
  %93 = add i64 %92, %71, !dbg !72
  %94 = getelementptr double, double* %91, i64 %93, !dbg !73
  %95 = load double, double* %94, align 8, !dbg !74
  %96 = fmul double %95, %2, !dbg !75
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1, !dbg !76
  %98 = mul i64 %50, 1000, !dbg !77
  %99 = add i64 %98, %71, !dbg !78
  %100 = getelementptr double, double* %97, i64 %99, !dbg !79
  %101 = load double, double* %100, align 8, !dbg !80
  %102 = fmul double %96, %101, !dbg !81
  %103 = fadd double %90, %102, !dbg !82
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !83
  %105 = mul i64 %50, 1200, !dbg !84
  %106 = add i64 %105, %76, !dbg !85
  %107 = getelementptr double, double* %104, i64 %106, !dbg !86
  %108 = load double, double* %107, align 8, !dbg !87
  %109 = fadd double %108, %103, !dbg !88
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !89
  %111 = mul i64 %50, 1200, !dbg !90
  %112 = add i64 %111, %76, !dbg !91
  %113 = getelementptr double, double* %110, i64 %112, !dbg !92
  store double %109, double* %113, align 8, !dbg !93
  %114 = add i64 %76, 1, !dbg !94
  br label %75, !dbg !95

115:                                              ; preds = %75
  %116 = add i64 %71, 1, !dbg !96
  br label %70, !dbg !97

117:                                              ; preds = %70
  %118 = add i64 %50, 1, !dbg !98
  br label %49, !dbg !99

119:                                              ; preds = %49
  ret void, !dbg !100
}

define void @_mlir_ciface_kernel_syr2k(i32 %0, i32 %1, double %2, double %3, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, { double*, double*, i64, [2 x i64], [2 x i64] }* %6) !dbg !101 {
  %8 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, align 8, !dbg !102
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 0, !dbg !104
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 1, !dbg !105
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 2, !dbg !106
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 3, 0, !dbg !107
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 3, 1, !dbg !108
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 4, 0, !dbg !109
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 4, 1, !dbg !110
  %16 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !111
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 0, !dbg !112
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !113
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 2, !dbg !114
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 3, 0, !dbg !115
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 3, 1, !dbg !116
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 4, 0, !dbg !117
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 4, 1, !dbg !118
  %24 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %6, align 8, !dbg !119
  %25 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 0, !dbg !120
  %26 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 1, !dbg !121
  %27 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 2, !dbg !122
  %28 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 3, 0, !dbg !123
  %29 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 3, 1, !dbg !124
  %30 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 4, 0, !dbg !125
  %31 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 4, 1, !dbg !126
  call void @renamed_kernel_syr2k(i32 %0, i32 %1, double %2, double %3, double* %9, double* %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, double* %17, double* %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, double* %25, double* %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31), !dbg !127
  ret void, !dbg !128
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_syr2k", linkageName: "kernel_syr2k", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!31 = !DILocation(line: 31, column: 5, scope: !8)
!32 = !DILocation(line: 33, column: 11, scope: !8)
!33 = !DILocation(line: 34, column: 5, scope: !8)
!34 = !DILocation(line: 38, column: 11, scope: !8)
!35 = !DILocation(line: 40, column: 5, scope: !8)
!36 = !DILocation(line: 42, column: 11, scope: !8)
!37 = !DILocation(line: 43, column: 5, scope: !8)
!38 = !DILocation(line: 45, column: 11, scope: !8)
!39 = !DILocation(line: 47, column: 11, scope: !8)
!40 = !DILocation(line: 48, column: 11, scope: !8)
!41 = !DILocation(line: 49, column: 11, scope: !8)
!42 = !DILocation(line: 50, column: 11, scope: !8)
!43 = !DILocation(line: 51, column: 11, scope: !8)
!44 = !DILocation(line: 52, column: 11, scope: !8)
!45 = !DILocation(line: 54, column: 11, scope: !8)
!46 = !DILocation(line: 55, column: 11, scope: !8)
!47 = !DILocation(line: 56, column: 11, scope: !8)
!48 = !DILocation(line: 57, column: 5, scope: !8)
!49 = !DILocation(line: 58, column: 11, scope: !8)
!50 = !DILocation(line: 59, column: 5, scope: !8)
!51 = !DILocation(line: 63, column: 5, scope: !8)
!52 = !DILocation(line: 65, column: 11, scope: !8)
!53 = !DILocation(line: 66, column: 5, scope: !8)
!54 = !DILocation(line: 70, column: 11, scope: !8)
!55 = !DILocation(line: 72, column: 5, scope: !8)
!56 = !DILocation(line: 74, column: 11, scope: !8)
!57 = !DILocation(line: 75, column: 5, scope: !8)
!58 = !DILocation(line: 77, column: 11, scope: !8)
!59 = !DILocation(line: 79, column: 11, scope: !8)
!60 = !DILocation(line: 80, column: 11, scope: !8)
!61 = !DILocation(line: 81, column: 11, scope: !8)
!62 = !DILocation(line: 82, column: 11, scope: !8)
!63 = !DILocation(line: 83, column: 11, scope: !8)
!64 = !DILocation(line: 84, column: 11, scope: !8)
!65 = !DILocation(line: 86, column: 11, scope: !8)
!66 = !DILocation(line: 87, column: 11, scope: !8)
!67 = !DILocation(line: 88, column: 11, scope: !8)
!68 = !DILocation(line: 89, column: 11, scope: !8)
!69 = !DILocation(line: 90, column: 11, scope: !8)
!70 = !DILocation(line: 91, column: 11, scope: !8)
!71 = !DILocation(line: 93, column: 11, scope: !8)
!72 = !DILocation(line: 94, column: 11, scope: !8)
!73 = !DILocation(line: 95, column: 11, scope: !8)
!74 = !DILocation(line: 96, column: 11, scope: !8)
!75 = !DILocation(line: 97, column: 11, scope: !8)
!76 = !DILocation(line: 98, column: 11, scope: !8)
!77 = !DILocation(line: 100, column: 11, scope: !8)
!78 = !DILocation(line: 101, column: 11, scope: !8)
!79 = !DILocation(line: 102, column: 11, scope: !8)
!80 = !DILocation(line: 103, column: 11, scope: !8)
!81 = !DILocation(line: 104, column: 11, scope: !8)
!82 = !DILocation(line: 105, column: 11, scope: !8)
!83 = !DILocation(line: 106, column: 11, scope: !8)
!84 = !DILocation(line: 108, column: 11, scope: !8)
!85 = !DILocation(line: 109, column: 11, scope: !8)
!86 = !DILocation(line: 110, column: 11, scope: !8)
!87 = !DILocation(line: 111, column: 11, scope: !8)
!88 = !DILocation(line: 112, column: 11, scope: !8)
!89 = !DILocation(line: 113, column: 11, scope: !8)
!90 = !DILocation(line: 115, column: 11, scope: !8)
!91 = !DILocation(line: 116, column: 11, scope: !8)
!92 = !DILocation(line: 117, column: 11, scope: !8)
!93 = !DILocation(line: 118, column: 5, scope: !8)
!94 = !DILocation(line: 119, column: 12, scope: !8)
!95 = !DILocation(line: 120, column: 5, scope: !8)
!96 = !DILocation(line: 122, column: 12, scope: !8)
!97 = !DILocation(line: 123, column: 5, scope: !8)
!98 = !DILocation(line: 125, column: 12, scope: !8)
!99 = !DILocation(line: 126, column: 5, scope: !8)
!100 = !DILocation(line: 128, column: 5, scope: !8)
!101 = distinct !DISubprogram(name: "_mlir_ciface_kernel_syr2k", linkageName: "_mlir_ciface_kernel_syr2k", scope: null, file: !4, line: 130, type: !5, scopeLine: 130, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!102 = !DILocation(line: 131, column: 10, scope: !103)
!103 = !DILexicalBlockFile(scope: !101, file: !4, discriminator: 0)
!104 = !DILocation(line: 132, column: 10, scope: !103)
!105 = !DILocation(line: 133, column: 10, scope: !103)
!106 = !DILocation(line: 134, column: 10, scope: !103)
!107 = !DILocation(line: 135, column: 10, scope: !103)
!108 = !DILocation(line: 136, column: 10, scope: !103)
!109 = !DILocation(line: 137, column: 10, scope: !103)
!110 = !DILocation(line: 138, column: 10, scope: !103)
!111 = !DILocation(line: 139, column: 10, scope: !103)
!112 = !DILocation(line: 140, column: 10, scope: !103)
!113 = !DILocation(line: 141, column: 11, scope: !103)
!114 = !DILocation(line: 142, column: 11, scope: !103)
!115 = !DILocation(line: 143, column: 11, scope: !103)
!116 = !DILocation(line: 144, column: 11, scope: !103)
!117 = !DILocation(line: 145, column: 11, scope: !103)
!118 = !DILocation(line: 146, column: 11, scope: !103)
!119 = !DILocation(line: 147, column: 11, scope: !103)
!120 = !DILocation(line: 148, column: 11, scope: !103)
!121 = !DILocation(line: 149, column: 11, scope: !103)
!122 = !DILocation(line: 150, column: 11, scope: !103)
!123 = !DILocation(line: 151, column: 11, scope: !103)
!124 = !DILocation(line: 152, column: 11, scope: !103)
!125 = !DILocation(line: 153, column: 11, scope: !103)
!126 = !DILocation(line: 154, column: 11, scope: !103)
!127 = !DILocation(line: 155, column: 5, scope: !103)
!128 = !DILocation(line: 156, column: 5, scope: !103)
