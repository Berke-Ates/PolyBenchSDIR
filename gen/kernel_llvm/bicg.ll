; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_bicg(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, double* %24, double* %25, i64 %26, i64 %27, i64 %28) !dbg !3 {
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !7
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, double* %3, 1, !dbg !9
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %4, 2, !dbg !10
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %5, 3, 0, !dbg !11
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %7, 4, 0, !dbg !12
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %6, 3, 1, !dbg !13
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %8, 4, 1, !dbg !14
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0, !dbg !15
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, double* %10, 1, !dbg !16
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %11, 2, !dbg !17
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 %12, 3, 0, !dbg !18
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %13, 4, 0, !dbg !19
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %14, 0, !dbg !20
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, double* %15, 1, !dbg !21
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %16, 2, !dbg !22
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %17, 3, 0, !dbg !23
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %18, 4, 0, !dbg !24
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %19, 0, !dbg !25
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, double* %20, 1, !dbg !26
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, i64 %21, 2, !dbg !27
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 %22, 3, 0, !dbg !28
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 %23, 4, 0, !dbg !29
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %24, 0, !dbg !30
  %53 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, double* %25, 1, !dbg !31
  %54 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, i64 %26, 2, !dbg !32
  %55 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %54, i64 %27, 3, 0, !dbg !33
  %56 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %55, i64 %28, 4, 0, !dbg !34
  %57 = sext i32 %0 to i64, !dbg !35
  %58 = sext i32 %0 to i64, !dbg !36
  br label %59, !dbg !37

59:                                               ; preds = %62, %29
  %60 = phi i64 [ %65, %62 ], [ 0, %29 ]
  %61 = icmp slt i64 %60, %58, !dbg !38
  br i1 %61, label %62, label %66, !dbg !39

62:                                               ; preds = %59
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1, !dbg !40
  %64 = getelementptr double, double* %63, i64 %60, !dbg !41
  store double 0.000000e+00, double* %64, align 8, !dbg !42
  %65 = add i64 %60, 1, !dbg !43
  br label %59, !dbg !44

66:                                               ; preds = %59
  %67 = sext i32 %1 to i64, !dbg !45
  br label %68, !dbg !46

68:                                               ; preds = %109, %66
  %69 = phi i64 [ %110, %109 ], [ 0, %66 ]
  %70 = icmp slt i64 %69, %67, !dbg !47
  br i1 %70, label %71, label %111, !dbg !48

71:                                               ; preds = %68
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1, !dbg !49
  %73 = getelementptr double, double* %72, i64 %69, !dbg !50
  store double 0.000000e+00, double* %73, align 8, !dbg !51
  br label %74, !dbg !52

74:                                               ; preds = %77, %71
  %75 = phi i64 [ %108, %77 ], [ 0, %71 ]
  %76 = icmp slt i64 %75, %57, !dbg !53
  br i1 %76, label %77, label %109, !dbg !54

77:                                               ; preds = %74
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1, !dbg !55
  %79 = getelementptr double, double* %78, i64 %75, !dbg !56
  %80 = load double, double* %79, align 8, !dbg !57
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %56, 1, !dbg !58
  %82 = getelementptr double, double* %81, i64 %69, !dbg !59
  %83 = load double, double* %82, align 8, !dbg !60
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, 1, !dbg !61
  %85 = mul i64 %69, 1900, !dbg !62
  %86 = add i64 %85, %75, !dbg !63
  %87 = getelementptr double, double* %84, i64 %86, !dbg !64
  %88 = load double, double* %87, align 8, !dbg !65
  %89 = fmul double %83, %88, !dbg !66
  %90 = fadd double %80, %89, !dbg !67
  %91 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1, !dbg !68
  %92 = getelementptr double, double* %91, i64 %75, !dbg !69
  store double %90, double* %92, align 8, !dbg !70
  %93 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1, !dbg !71
  %94 = getelementptr double, double* %93, i64 %69, !dbg !72
  %95 = load double, double* %94, align 8, !dbg !73
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, 1, !dbg !74
  %97 = mul i64 %69, 1900, !dbg !75
  %98 = add i64 %97, %75, !dbg !76
  %99 = getelementptr double, double* %96, i64 %98, !dbg !77
  %100 = load double, double* %99, align 8, !dbg !78
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1, !dbg !79
  %102 = getelementptr double, double* %101, i64 %75, !dbg !80
  %103 = load double, double* %102, align 8, !dbg !81
  %104 = fmul double %100, %103, !dbg !82
  %105 = fadd double %95, %104, !dbg !83
  %106 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1, !dbg !84
  %107 = getelementptr double, double* %106, i64 %69, !dbg !85
  store double %105, double* %107, align 8, !dbg !86
  %108 = add i64 %75, 1, !dbg !87
  br label %74, !dbg !88

109:                                              ; preds = %74
  %110 = add i64 %69, 1, !dbg !89
  br label %68, !dbg !90

111:                                              ; preds = %68
  ret void, !dbg !91
}

define void @_mlir_ciface_kernel_bicg(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, { double*, double*, i64, [1 x i64], [1 x i64] }* %6) !dbg !92 {
  %8 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, align 8, !dbg !93
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 0, !dbg !95
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 1, !dbg !96
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 2, !dbg !97
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 3, 0, !dbg !98
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 3, 1, !dbg !99
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 4, 0, !dbg !100
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, 4, 1, !dbg !101
  %16 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, align 8, !dbg !102
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0, !dbg !103
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1, !dbg !104
  %19 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 2, !dbg !105
  %20 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 3, 0, !dbg !106
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 4, 0, !dbg !107
  %22 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, align 8, !dbg !108
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 0, !dbg !109
  %24 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 1, !dbg !110
  %25 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 2, !dbg !111
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 3, 0, !dbg !112
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 4, 0, !dbg !113
  %28 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, align 8, !dbg !114
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, 0, !dbg !115
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, 1, !dbg !116
  %31 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, 2, !dbg !117
  %32 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, 3, 0, !dbg !118
  %33 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, 4, 0, !dbg !119
  %34 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %6, align 8, !dbg !120
  %35 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, 0, !dbg !121
  %36 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, 1, !dbg !122
  %37 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, 2, !dbg !123
  %38 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, 3, 0, !dbg !124
  %39 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, 4, 0, !dbg !125
  call void @renamed_kernel_bicg(i32 %0, i32 %1, double* %9, double* %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, double* %17, double* %18, i64 %19, i64 %20, i64 %21, double* %23, double* %24, i64 %25, i64 %26, i64 %27, double* %29, double* %30, i64 %31, i64 %32, i64 %33, double* %35, double* %36, i64 %37, i64 %38, i64 %39), !dbg !126
  ret void, !dbg !127
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_bicg", linkageName: "kernel_bicg", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!20 = !DILocation(line: 18, column: 11, scope: !8)
!21 = !DILocation(line: 19, column: 11, scope: !8)
!22 = !DILocation(line: 20, column: 11, scope: !8)
!23 = !DILocation(line: 21, column: 11, scope: !8)
!24 = !DILocation(line: 22, column: 11, scope: !8)
!25 = !DILocation(line: 24, column: 11, scope: !8)
!26 = !DILocation(line: 25, column: 11, scope: !8)
!27 = !DILocation(line: 26, column: 11, scope: !8)
!28 = !DILocation(line: 27, column: 11, scope: !8)
!29 = !DILocation(line: 28, column: 11, scope: !8)
!30 = !DILocation(line: 30, column: 11, scope: !8)
!31 = !DILocation(line: 31, column: 11, scope: !8)
!32 = !DILocation(line: 32, column: 11, scope: !8)
!33 = !DILocation(line: 33, column: 11, scope: !8)
!34 = !DILocation(line: 34, column: 11, scope: !8)
!35 = !DILocation(line: 36, column: 11, scope: !8)
!36 = !DILocation(line: 37, column: 11, scope: !8)
!37 = !DILocation(line: 40, column: 5, scope: !8)
!38 = !DILocation(line: 42, column: 11, scope: !8)
!39 = !DILocation(line: 43, column: 5, scope: !8)
!40 = !DILocation(line: 45, column: 11, scope: !8)
!41 = !DILocation(line: 46, column: 11, scope: !8)
!42 = !DILocation(line: 47, column: 5, scope: !8)
!43 = !DILocation(line: 48, column: 11, scope: !8)
!44 = !DILocation(line: 49, column: 5, scope: !8)
!45 = !DILocation(line: 51, column: 11, scope: !8)
!46 = !DILocation(line: 54, column: 5, scope: !8)
!47 = !DILocation(line: 56, column: 11, scope: !8)
!48 = !DILocation(line: 57, column: 5, scope: !8)
!49 = !DILocation(line: 59, column: 11, scope: !8)
!50 = !DILocation(line: 60, column: 11, scope: !8)
!51 = !DILocation(line: 61, column: 5, scope: !8)
!52 = !DILocation(line: 64, column: 5, scope: !8)
!53 = !DILocation(line: 66, column: 11, scope: !8)
!54 = !DILocation(line: 67, column: 5, scope: !8)
!55 = !DILocation(line: 69, column: 11, scope: !8)
!56 = !DILocation(line: 70, column: 11, scope: !8)
!57 = !DILocation(line: 71, column: 11, scope: !8)
!58 = !DILocation(line: 72, column: 11, scope: !8)
!59 = !DILocation(line: 73, column: 11, scope: !8)
!60 = !DILocation(line: 74, column: 11, scope: !8)
!61 = !DILocation(line: 75, column: 11, scope: !8)
!62 = !DILocation(line: 77, column: 11, scope: !8)
!63 = !DILocation(line: 78, column: 11, scope: !8)
!64 = !DILocation(line: 79, column: 11, scope: !8)
!65 = !DILocation(line: 80, column: 11, scope: !8)
!66 = !DILocation(line: 81, column: 11, scope: !8)
!67 = !DILocation(line: 82, column: 11, scope: !8)
!68 = !DILocation(line: 83, column: 11, scope: !8)
!69 = !DILocation(line: 84, column: 11, scope: !8)
!70 = !DILocation(line: 85, column: 5, scope: !8)
!71 = !DILocation(line: 86, column: 11, scope: !8)
!72 = !DILocation(line: 87, column: 11, scope: !8)
!73 = !DILocation(line: 88, column: 11, scope: !8)
!74 = !DILocation(line: 89, column: 11, scope: !8)
!75 = !DILocation(line: 91, column: 11, scope: !8)
!76 = !DILocation(line: 92, column: 11, scope: !8)
!77 = !DILocation(line: 93, column: 11, scope: !8)
!78 = !DILocation(line: 94, column: 11, scope: !8)
!79 = !DILocation(line: 95, column: 11, scope: !8)
!80 = !DILocation(line: 96, column: 11, scope: !8)
!81 = !DILocation(line: 97, column: 11, scope: !8)
!82 = !DILocation(line: 98, column: 11, scope: !8)
!83 = !DILocation(line: 99, column: 11, scope: !8)
!84 = !DILocation(line: 100, column: 11, scope: !8)
!85 = !DILocation(line: 101, column: 11, scope: !8)
!86 = !DILocation(line: 102, column: 5, scope: !8)
!87 = !DILocation(line: 103, column: 11, scope: !8)
!88 = !DILocation(line: 104, column: 5, scope: !8)
!89 = !DILocation(line: 106, column: 11, scope: !8)
!90 = !DILocation(line: 107, column: 5, scope: !8)
!91 = !DILocation(line: 109, column: 5, scope: !8)
!92 = distinct !DISubprogram(name: "_mlir_ciface_kernel_bicg", linkageName: "_mlir_ciface_kernel_bicg", scope: null, file: !4, line: 111, type: !5, scopeLine: 111, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!93 = !DILocation(line: 112, column: 10, scope: !94)
!94 = !DILexicalBlockFile(scope: !92, file: !4, discriminator: 0)
!95 = !DILocation(line: 113, column: 10, scope: !94)
!96 = !DILocation(line: 114, column: 10, scope: !94)
!97 = !DILocation(line: 115, column: 10, scope: !94)
!98 = !DILocation(line: 116, column: 10, scope: !94)
!99 = !DILocation(line: 117, column: 10, scope: !94)
!100 = !DILocation(line: 118, column: 10, scope: !94)
!101 = !DILocation(line: 119, column: 10, scope: !94)
!102 = !DILocation(line: 120, column: 10, scope: !94)
!103 = !DILocation(line: 121, column: 10, scope: !94)
!104 = !DILocation(line: 122, column: 11, scope: !94)
!105 = !DILocation(line: 123, column: 11, scope: !94)
!106 = !DILocation(line: 124, column: 11, scope: !94)
!107 = !DILocation(line: 125, column: 11, scope: !94)
!108 = !DILocation(line: 126, column: 11, scope: !94)
!109 = !DILocation(line: 127, column: 11, scope: !94)
!110 = !DILocation(line: 128, column: 11, scope: !94)
!111 = !DILocation(line: 129, column: 11, scope: !94)
!112 = !DILocation(line: 130, column: 11, scope: !94)
!113 = !DILocation(line: 131, column: 11, scope: !94)
!114 = !DILocation(line: 132, column: 11, scope: !94)
!115 = !DILocation(line: 133, column: 11, scope: !94)
!116 = !DILocation(line: 134, column: 11, scope: !94)
!117 = !DILocation(line: 135, column: 11, scope: !94)
!118 = !DILocation(line: 136, column: 11, scope: !94)
!119 = !DILocation(line: 137, column: 11, scope: !94)
!120 = !DILocation(line: 138, column: 11, scope: !94)
!121 = !DILocation(line: 139, column: 11, scope: !94)
!122 = !DILocation(line: 140, column: 11, scope: !94)
!123 = !DILocation(line: 141, column: 11, scope: !94)
!124 = !DILocation(line: 142, column: 11, scope: !94)
!125 = !DILocation(line: 143, column: 11, scope: !94)
!126 = !DILocation(line: 144, column: 5, scope: !94)
!127 = !DILocation(line: 145, column: 5, scope: !94)
