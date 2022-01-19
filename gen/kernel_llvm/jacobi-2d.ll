; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @renamed_kernel_jacobi_2d(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15) !dbg !3 {
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !7
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %3, 1, !dbg !9
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 %4, 2, !dbg !10
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 %5, 3, 0, !dbg !11
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %7, 4, 0, !dbg !12
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %6, 3, 1, !dbg !13
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %8, 4, 1, !dbg !14
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %9, 0, !dbg !15
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, double* %10, 1, !dbg !16
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %11, 2, !dbg !17
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %12, 3, 0, !dbg !18
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %14, 4, 0, !dbg !19
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %13, 3, 1, !dbg !20
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %15, 4, 1, !dbg !21
  %31 = sext i32 %1 to i64, !dbg !22
  %32 = sext i32 %1 to i64, !dbg !23
  %33 = sext i32 %0 to i64, !dbg !24
  br label %34, !dbg !25

34:                                               ; preds = %141, %16
  %35 = phi i64 [ %142, %141 ], [ 0, %16 ]
  %36 = icmp slt i64 %35, %33, !dbg !26
  br i1 %36, label %37, label %143, !dbg !27

37:                                               ; preds = %34
  %38 = add i64 %31, -1, !dbg !28
  br label %39, !dbg !29

39:                                               ; preds = %87, %37
  %40 = phi i64 [ %88, %87 ], [ 1, %37 ]
  %41 = icmp slt i64 %40, %38, !dbg !30
  br i1 %41, label %42, label %89, !dbg !31

42:                                               ; preds = %39
  %43 = add i64 %31, -1, !dbg !32
  br label %44, !dbg !33

44:                                               ; preds = %47, %42
  %45 = phi i64 [ %86, %47 ], [ 1, %42 ]
  %46 = icmp slt i64 %45, %43, !dbg !34
  br i1 %46, label %47, label %87, !dbg !35

47:                                               ; preds = %44
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !36
  %49 = mul i64 %40, 1300, !dbg !37
  %50 = add i64 %49, %45, !dbg !38
  %51 = getelementptr double, double* %48, i64 %50, !dbg !39
  %52 = load double, double* %51, align 8, !dbg !40
  %53 = add i64 %45, -1, !dbg !41
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !42
  %55 = mul i64 %40, 1300, !dbg !43
  %56 = add i64 %55, %53, !dbg !44
  %57 = getelementptr double, double* %54, i64 %56, !dbg !45
  %58 = load double, double* %57, align 8, !dbg !46
  %59 = fadd double %52, %58, !dbg !47
  %60 = add i64 %45, 1, !dbg !48
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !49
  %62 = mul i64 %40, 1300, !dbg !50
  %63 = add i64 %62, %60, !dbg !51
  %64 = getelementptr double, double* %61, i64 %63, !dbg !52
  %65 = load double, double* %64, align 8, !dbg !53
  %66 = fadd double %59, %65, !dbg !54
  %67 = add i64 %40, 1, !dbg !55
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !56
  %69 = mul i64 %67, 1300, !dbg !57
  %70 = add i64 %69, %45, !dbg !58
  %71 = getelementptr double, double* %68, i64 %70, !dbg !59
  %72 = load double, double* %71, align 8, !dbg !60
  %73 = fadd double %66, %72, !dbg !61
  %74 = add i64 %40, -1, !dbg !62
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !63
  %76 = mul i64 %74, 1300, !dbg !64
  %77 = add i64 %76, %45, !dbg !65
  %78 = getelementptr double, double* %75, i64 %77, !dbg !66
  %79 = load double, double* %78, align 8, !dbg !67
  %80 = fadd double %73, %79, !dbg !68
  %81 = fmul double 2.000000e-01, %80, !dbg !69
  %82 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1, !dbg !70
  %83 = mul i64 %40, 1300, !dbg !71
  %84 = add i64 %83, %45, !dbg !72
  %85 = getelementptr double, double* %82, i64 %84, !dbg !73
  store double %81, double* %85, align 8, !dbg !74
  %86 = add i64 %45, 1, !dbg !75
  br label %44, !dbg !76

87:                                               ; preds = %44
  %88 = add i64 %40, 1, !dbg !77
  br label %39, !dbg !78

89:                                               ; preds = %39
  %90 = add i64 %32, -1, !dbg !79
  br label %91, !dbg !80

91:                                               ; preds = %139, %89
  %92 = phi i64 [ %140, %139 ], [ 1, %89 ]
  %93 = icmp slt i64 %92, %90, !dbg !81
  br i1 %93, label %94, label %141, !dbg !82

94:                                               ; preds = %91
  %95 = add i64 %32, -1, !dbg !83
  br label %96, !dbg !84

96:                                               ; preds = %99, %94
  %97 = phi i64 [ %138, %99 ], [ 1, %94 ]
  %98 = icmp slt i64 %97, %95, !dbg !85
  br i1 %98, label %99, label %139, !dbg !86

99:                                               ; preds = %96
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1, !dbg !87
  %101 = mul i64 %92, 1300, !dbg !88
  %102 = add i64 %101, %97, !dbg !89
  %103 = getelementptr double, double* %100, i64 %102, !dbg !90
  %104 = load double, double* %103, align 8, !dbg !91
  %105 = add i64 %97, -1, !dbg !92
  %106 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1, !dbg !93
  %107 = mul i64 %92, 1300, !dbg !94
  %108 = add i64 %107, %105, !dbg !95
  %109 = getelementptr double, double* %106, i64 %108, !dbg !96
  %110 = load double, double* %109, align 8, !dbg !97
  %111 = fadd double %104, %110, !dbg !98
  %112 = add i64 %97, 1, !dbg !99
  %113 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1, !dbg !100
  %114 = mul i64 %92, 1300, !dbg !101
  %115 = add i64 %114, %112, !dbg !102
  %116 = getelementptr double, double* %113, i64 %115, !dbg !103
  %117 = load double, double* %116, align 8, !dbg !104
  %118 = fadd double %111, %117, !dbg !105
  %119 = add i64 %92, 1, !dbg !106
  %120 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1, !dbg !107
  %121 = mul i64 %119, 1300, !dbg !108
  %122 = add i64 %121, %97, !dbg !109
  %123 = getelementptr double, double* %120, i64 %122, !dbg !110
  %124 = load double, double* %123, align 8, !dbg !111
  %125 = fadd double %118, %124, !dbg !112
  %126 = add i64 %92, -1, !dbg !113
  %127 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1, !dbg !114
  %128 = mul i64 %126, 1300, !dbg !115
  %129 = add i64 %128, %97, !dbg !116
  %130 = getelementptr double, double* %127, i64 %129, !dbg !117
  %131 = load double, double* %130, align 8, !dbg !118
  %132 = fadd double %125, %131, !dbg !119
  %133 = fmul double 2.000000e-01, %132, !dbg !120
  %134 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !121
  %135 = mul i64 %92, 1300, !dbg !122
  %136 = add i64 %135, %97, !dbg !123
  %137 = getelementptr double, double* %134, i64 %136, !dbg !124
  store double %133, double* %137, align 8, !dbg !125
  %138 = add i64 %97, 1, !dbg !126
  br label %96, !dbg !127

139:                                              ; preds = %96
  %140 = add i64 %92, 1, !dbg !128
  br label %91, !dbg !129

141:                                              ; preds = %91
  %142 = add i64 %35, 1, !dbg !130
  br label %34, !dbg !131

143:                                              ; preds = %34
  ret void, !dbg !132
}

define void @_mlir_ciface_kernel_jacobi_2d(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, { double*, double*, i64, [2 x i64], [2 x i64] }* %3) !dbg !133 {
  %5 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, align 8, !dbg !134
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 0, !dbg !136
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 1, !dbg !137
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 2, !dbg !138
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 3, 0, !dbg !139
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 3, 1, !dbg !140
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 4, 0, !dbg !141
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 4, 1, !dbg !142
  %13 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %3, align 8, !dbg !143
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 0, !dbg !144
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 1, !dbg !145
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 2, !dbg !146
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 3, 0, !dbg !147
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 3, 1, !dbg !148
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 4, 0, !dbg !149
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 4, 1, !dbg !150
  call void @renamed_kernel_jacobi_2d(i32 %0, i32 %1, double* %6, double* %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, double* %14, double* %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20), !dbg !151
  ret void, !dbg !152
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_jacobi_2d", linkageName: "kernel_jacobi_2d", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!25 = !DILocation(line: 25, column: 5, scope: !8)
!26 = !DILocation(line: 27, column: 11, scope: !8)
!27 = !DILocation(line: 28, column: 5, scope: !8)
!28 = !DILocation(line: 32, column: 11, scope: !8)
!29 = !DILocation(line: 34, column: 5, scope: !8)
!30 = !DILocation(line: 36, column: 11, scope: !8)
!31 = !DILocation(line: 37, column: 5, scope: !8)
!32 = !DILocation(line: 41, column: 11, scope: !8)
!33 = !DILocation(line: 43, column: 5, scope: !8)
!34 = !DILocation(line: 45, column: 11, scope: !8)
!35 = !DILocation(line: 46, column: 5, scope: !8)
!36 = !DILocation(line: 48, column: 11, scope: !8)
!37 = !DILocation(line: 50, column: 11, scope: !8)
!38 = !DILocation(line: 51, column: 11, scope: !8)
!39 = !DILocation(line: 52, column: 11, scope: !8)
!40 = !DILocation(line: 53, column: 11, scope: !8)
!41 = !DILocation(line: 55, column: 11, scope: !8)
!42 = !DILocation(line: 56, column: 11, scope: !8)
!43 = !DILocation(line: 58, column: 11, scope: !8)
!44 = !DILocation(line: 59, column: 11, scope: !8)
!45 = !DILocation(line: 60, column: 11, scope: !8)
!46 = !DILocation(line: 61, column: 11, scope: !8)
!47 = !DILocation(line: 62, column: 11, scope: !8)
!48 = !DILocation(line: 64, column: 11, scope: !8)
!49 = !DILocation(line: 65, column: 11, scope: !8)
!50 = !DILocation(line: 67, column: 11, scope: !8)
!51 = !DILocation(line: 68, column: 11, scope: !8)
!52 = !DILocation(line: 69, column: 11, scope: !8)
!53 = !DILocation(line: 70, column: 11, scope: !8)
!54 = !DILocation(line: 71, column: 11, scope: !8)
!55 = !DILocation(line: 73, column: 11, scope: !8)
!56 = !DILocation(line: 74, column: 11, scope: !8)
!57 = !DILocation(line: 76, column: 11, scope: !8)
!58 = !DILocation(line: 77, column: 11, scope: !8)
!59 = !DILocation(line: 78, column: 11, scope: !8)
!60 = !DILocation(line: 79, column: 11, scope: !8)
!61 = !DILocation(line: 80, column: 11, scope: !8)
!62 = !DILocation(line: 82, column: 11, scope: !8)
!63 = !DILocation(line: 83, column: 11, scope: !8)
!64 = !DILocation(line: 85, column: 11, scope: !8)
!65 = !DILocation(line: 86, column: 11, scope: !8)
!66 = !DILocation(line: 87, column: 11, scope: !8)
!67 = !DILocation(line: 88, column: 11, scope: !8)
!68 = !DILocation(line: 89, column: 11, scope: !8)
!69 = !DILocation(line: 90, column: 11, scope: !8)
!70 = !DILocation(line: 91, column: 11, scope: !8)
!71 = !DILocation(line: 93, column: 11, scope: !8)
!72 = !DILocation(line: 94, column: 11, scope: !8)
!73 = !DILocation(line: 95, column: 11, scope: !8)
!74 = !DILocation(line: 96, column: 5, scope: !8)
!75 = !DILocation(line: 97, column: 11, scope: !8)
!76 = !DILocation(line: 98, column: 5, scope: !8)
!77 = !DILocation(line: 100, column: 11, scope: !8)
!78 = !DILocation(line: 101, column: 5, scope: !8)
!79 = !DILocation(line: 105, column: 11, scope: !8)
!80 = !DILocation(line: 107, column: 5, scope: !8)
!81 = !DILocation(line: 109, column: 11, scope: !8)
!82 = !DILocation(line: 110, column: 5, scope: !8)
!83 = !DILocation(line: 114, column: 11, scope: !8)
!84 = !DILocation(line: 116, column: 5, scope: !8)
!85 = !DILocation(line: 118, column: 11, scope: !8)
!86 = !DILocation(line: 119, column: 5, scope: !8)
!87 = !DILocation(line: 121, column: 11, scope: !8)
!88 = !DILocation(line: 123, column: 12, scope: !8)
!89 = !DILocation(line: 124, column: 12, scope: !8)
!90 = !DILocation(line: 125, column: 12, scope: !8)
!91 = !DILocation(line: 126, column: 12, scope: !8)
!92 = !DILocation(line: 128, column: 12, scope: !8)
!93 = !DILocation(line: 129, column: 12, scope: !8)
!94 = !DILocation(line: 131, column: 12, scope: !8)
!95 = !DILocation(line: 132, column: 12, scope: !8)
!96 = !DILocation(line: 133, column: 12, scope: !8)
!97 = !DILocation(line: 134, column: 12, scope: !8)
!98 = !DILocation(line: 135, column: 12, scope: !8)
!99 = !DILocation(line: 137, column: 12, scope: !8)
!100 = !DILocation(line: 138, column: 12, scope: !8)
!101 = !DILocation(line: 140, column: 12, scope: !8)
!102 = !DILocation(line: 141, column: 12, scope: !8)
!103 = !DILocation(line: 142, column: 12, scope: !8)
!104 = !DILocation(line: 143, column: 12, scope: !8)
!105 = !DILocation(line: 144, column: 12, scope: !8)
!106 = !DILocation(line: 146, column: 12, scope: !8)
!107 = !DILocation(line: 147, column: 12, scope: !8)
!108 = !DILocation(line: 149, column: 12, scope: !8)
!109 = !DILocation(line: 150, column: 12, scope: !8)
!110 = !DILocation(line: 151, column: 12, scope: !8)
!111 = !DILocation(line: 152, column: 12, scope: !8)
!112 = !DILocation(line: 153, column: 12, scope: !8)
!113 = !DILocation(line: 155, column: 12, scope: !8)
!114 = !DILocation(line: 156, column: 12, scope: !8)
!115 = !DILocation(line: 158, column: 12, scope: !8)
!116 = !DILocation(line: 159, column: 12, scope: !8)
!117 = !DILocation(line: 160, column: 12, scope: !8)
!118 = !DILocation(line: 161, column: 12, scope: !8)
!119 = !DILocation(line: 162, column: 12, scope: !8)
!120 = !DILocation(line: 163, column: 12, scope: !8)
!121 = !DILocation(line: 164, column: 12, scope: !8)
!122 = !DILocation(line: 166, column: 12, scope: !8)
!123 = !DILocation(line: 167, column: 12, scope: !8)
!124 = !DILocation(line: 168, column: 12, scope: !8)
!125 = !DILocation(line: 169, column: 5, scope: !8)
!126 = !DILocation(line: 170, column: 12, scope: !8)
!127 = !DILocation(line: 171, column: 5, scope: !8)
!128 = !DILocation(line: 173, column: 12, scope: !8)
!129 = !DILocation(line: 174, column: 5, scope: !8)
!130 = !DILocation(line: 176, column: 12, scope: !8)
!131 = !DILocation(line: 177, column: 5, scope: !8)
!132 = !DILocation(line: 179, column: 5, scope: !8)
!133 = distinct !DISubprogram(name: "_mlir_ciface_kernel_jacobi_2d", linkageName: "_mlir_ciface_kernel_jacobi_2d", scope: null, file: !4, line: 181, type: !5, scopeLine: 181, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!134 = !DILocation(line: 182, column: 10, scope: !135)
!135 = !DILexicalBlockFile(scope: !133, file: !4, discriminator: 0)
!136 = !DILocation(line: 183, column: 10, scope: !135)
!137 = !DILocation(line: 184, column: 10, scope: !135)
!138 = !DILocation(line: 185, column: 10, scope: !135)
!139 = !DILocation(line: 186, column: 10, scope: !135)
!140 = !DILocation(line: 187, column: 10, scope: !135)
!141 = !DILocation(line: 188, column: 10, scope: !135)
!142 = !DILocation(line: 189, column: 10, scope: !135)
!143 = !DILocation(line: 190, column: 10, scope: !135)
!144 = !DILocation(line: 191, column: 10, scope: !135)
!145 = !DILocation(line: 192, column: 11, scope: !135)
!146 = !DILocation(line: 193, column: 11, scope: !135)
!147 = !DILocation(line: 194, column: 11, scope: !135)
!148 = !DILocation(line: 195, column: 11, scope: !135)
!149 = !DILocation(line: 196, column: 11, scope: !135)
!150 = !DILocation(line: 197, column: 11, scope: !135)
!151 = !DILocation(line: 198, column: 5, scope: !135)
!152 = !DILocation(line: 199, column: 5, scope: !135)
