; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @renamed_kernel_doitgen(i32 %0, i32 %1, i32 %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23) !dbg !3 {
  %25 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %3, 0, !dbg !7
  %26 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %25, double* %4, 1, !dbg !9
  %27 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %26, i64 %5, 2, !dbg !10
  %28 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %27, i64 %6, 3, 0, !dbg !11
  %29 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %28, i64 %9, 4, 0, !dbg !12
  %30 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %29, i64 %7, 3, 1, !dbg !13
  %31 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %30, i64 %10, 4, 1, !dbg !14
  %32 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %31, i64 %8, 3, 2, !dbg !15
  %33 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %32, i64 %11, 4, 2, !dbg !16
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0, !dbg !17
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, double* %13, 1, !dbg !18
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %14, 2, !dbg !19
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %15, 3, 0, !dbg !20
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %17, 4, 0, !dbg !21
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %16, 3, 1, !dbg !22
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %18, 4, 1, !dbg !23
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %19, 0, !dbg !24
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, double* %20, 1, !dbg !25
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %21, 2, !dbg !26
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %22, 3, 0, !dbg !27
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %23, 4, 0, !dbg !28
  %46 = sext i32 %1 to i64, !dbg !29
  %47 = sext i32 %2 to i64, !dbg !30
  %48 = sext i32 %2 to i64, !dbg !31
  %49 = sext i32 %0 to i64, !dbg !32
  br label %50, !dbg !33

50:                                               ; preds = %107, %24
  %51 = phi i64 [ %108, %107 ], [ 0, %24 ]
  %52 = icmp slt i64 %51, %49, !dbg !34
  br i1 %52, label %53, label %109, !dbg !35

53:                                               ; preds = %50
  br label %54, !dbg !36

54:                                               ; preds = %105, %53
  %55 = phi i64 [ %106, %105 ], [ 0, %53 ]
  %56 = icmp slt i64 %55, %46, !dbg !37
  br i1 %56, label %57, label %107, !dbg !38

57:                                               ; preds = %54
  br label %58, !dbg !39

58:                                               ; preds = %88, %57
  %59 = phi i64 [ %89, %88 ], [ 0, %57 ]
  %60 = icmp slt i64 %59, %47, !dbg !40
  br i1 %60, label %61, label %90, !dbg !41

61:                                               ; preds = %58
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1, !dbg !42
  %63 = getelementptr double, double* %62, i64 %59, !dbg !43
  store double 0.000000e+00, double* %63, align 8, !dbg !44
  br label %64, !dbg !45

64:                                               ; preds = %67, %61
  %65 = phi i64 [ %87, %67 ], [ 0, %61 ]
  %66 = icmp slt i64 %65, %47, !dbg !46
  br i1 %66, label %67, label %88, !dbg !47

67:                                               ; preds = %64
  %68 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %33, 1, !dbg !48
  %69 = mul i64 %51, 22400, !dbg !49
  %70 = mul i64 %55, 160, !dbg !50
  %71 = add i64 %69, %70, !dbg !51
  %72 = add i64 %71, %65, !dbg !52
  %73 = getelementptr double, double* %68, i64 %72, !dbg !53
  %74 = load double, double* %73, align 8, !dbg !54
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, 1, !dbg !55
  %76 = mul i64 %65, 160, !dbg !56
  %77 = add i64 %76, %59, !dbg !57
  %78 = getelementptr double, double* %75, i64 %77, !dbg !58
  %79 = load double, double* %78, align 8, !dbg !59
  %80 = fmul double %74, %79, !dbg !60
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1, !dbg !61
  %82 = getelementptr double, double* %81, i64 %59, !dbg !62
  %83 = load double, double* %82, align 8, !dbg !63
  %84 = fadd double %83, %80, !dbg !64
  %85 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1, !dbg !65
  %86 = getelementptr double, double* %85, i64 %59, !dbg !66
  store double %84, double* %86, align 8, !dbg !67
  %87 = add i64 %65, 1, !dbg !68
  br label %64, !dbg !69

88:                                               ; preds = %64
  %89 = add i64 %59, 1, !dbg !70
  br label %58, !dbg !71

90:                                               ; preds = %58
  br label %91, !dbg !72

91:                                               ; preds = %94, %90
  %92 = phi i64 [ %104, %94 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, %48, !dbg !73
  br i1 %93, label %94, label %105, !dbg !74

94:                                               ; preds = %91
  %95 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1, !dbg !75
  %96 = getelementptr double, double* %95, i64 %92, !dbg !76
  %97 = load double, double* %96, align 8, !dbg !77
  %98 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %33, 1, !dbg !78
  %99 = mul i64 %51, 22400, !dbg !79
  %100 = mul i64 %55, 160, !dbg !80
  %101 = add i64 %99, %100, !dbg !81
  %102 = add i64 %101, %92, !dbg !82
  %103 = getelementptr double, double* %98, i64 %102, !dbg !83
  store double %97, double* %103, align 8, !dbg !84
  %104 = add i64 %92, 1, !dbg !85
  br label %91, !dbg !86

105:                                              ; preds = %91
  %106 = add i64 %55, 1, !dbg !87
  br label %54, !dbg !88

107:                                              ; preds = %54
  %108 = add i64 %51, 1, !dbg !89
  br label %50, !dbg !90

109:                                              ; preds = %50
  ret void, !dbg !91
}

define void @_mlir_ciface_kernel_doitgen(i32 %0, i32 %1, i32 %2, { double*, double*, i64, [3 x i64], [3 x i64] }* %3, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, { double*, double*, i64, [1 x i64], [1 x i64] }* %5) !dbg !92 {
  %7 = load { double*, double*, i64, [3 x i64], [3 x i64] }, { double*, double*, i64, [3 x i64], [3 x i64] }* %3, align 8, !dbg !93
  %8 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 0, !dbg !95
  %9 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 1, !dbg !96
  %10 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 2, !dbg !97
  %11 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 3, 0, !dbg !98
  %12 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 3, 1, !dbg !99
  %13 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 3, 2, !dbg !100
  %14 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 4, 0, !dbg !101
  %15 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 4, 1, !dbg !102
  %16 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, 4, 2, !dbg !103
  %17 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, align 8, !dbg !104
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0, !dbg !105
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 1, !dbg !106
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 2, !dbg !107
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 0, !dbg !108
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 1, !dbg !109
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 0, !dbg !110
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 1, !dbg !111
  %25 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, align 8, !dbg !112
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0, !dbg !113
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1, !dbg !114
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2, !dbg !115
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0, !dbg !116
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0, !dbg !117
  call void @renamed_kernel_doitgen(i32 %0, i32 %1, i32 %2, double* %8, double* %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, double* %18, double* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, double* %26, double* %27, i64 %28, i64 %29, i64 %30), !dbg !118
  ret void, !dbg !119
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_doitgen", linkageName: "kernel_doitgen", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!16 = !DILocation(line: 12, column: 10, scope: !8)
!17 = !DILocation(line: 14, column: 11, scope: !8)
!18 = !DILocation(line: 15, column: 11, scope: !8)
!19 = !DILocation(line: 16, column: 11, scope: !8)
!20 = !DILocation(line: 17, column: 11, scope: !8)
!21 = !DILocation(line: 18, column: 11, scope: !8)
!22 = !DILocation(line: 19, column: 11, scope: !8)
!23 = !DILocation(line: 20, column: 11, scope: !8)
!24 = !DILocation(line: 22, column: 11, scope: !8)
!25 = !DILocation(line: 23, column: 11, scope: !8)
!26 = !DILocation(line: 24, column: 11, scope: !8)
!27 = !DILocation(line: 25, column: 11, scope: !8)
!28 = !DILocation(line: 26, column: 11, scope: !8)
!29 = !DILocation(line: 28, column: 11, scope: !8)
!30 = !DILocation(line: 29, column: 11, scope: !8)
!31 = !DILocation(line: 30, column: 11, scope: !8)
!32 = !DILocation(line: 31, column: 11, scope: !8)
!33 = !DILocation(line: 34, column: 5, scope: !8)
!34 = !DILocation(line: 36, column: 11, scope: !8)
!35 = !DILocation(line: 37, column: 5, scope: !8)
!36 = !DILocation(line: 41, column: 5, scope: !8)
!37 = !DILocation(line: 43, column: 11, scope: !8)
!38 = !DILocation(line: 44, column: 5, scope: !8)
!39 = !DILocation(line: 48, column: 5, scope: !8)
!40 = !DILocation(line: 50, column: 11, scope: !8)
!41 = !DILocation(line: 51, column: 5, scope: !8)
!42 = !DILocation(line: 53, column: 11, scope: !8)
!43 = !DILocation(line: 54, column: 11, scope: !8)
!44 = !DILocation(line: 55, column: 5, scope: !8)
!45 = !DILocation(line: 58, column: 5, scope: !8)
!46 = !DILocation(line: 60, column: 11, scope: !8)
!47 = !DILocation(line: 61, column: 5, scope: !8)
!48 = !DILocation(line: 63, column: 11, scope: !8)
!49 = !DILocation(line: 65, column: 11, scope: !8)
!50 = !DILocation(line: 67, column: 11, scope: !8)
!51 = !DILocation(line: 68, column: 11, scope: !8)
!52 = !DILocation(line: 69, column: 11, scope: !8)
!53 = !DILocation(line: 70, column: 11, scope: !8)
!54 = !DILocation(line: 71, column: 11, scope: !8)
!55 = !DILocation(line: 72, column: 11, scope: !8)
!56 = !DILocation(line: 74, column: 11, scope: !8)
!57 = !DILocation(line: 75, column: 11, scope: !8)
!58 = !DILocation(line: 76, column: 11, scope: !8)
!59 = !DILocation(line: 77, column: 11, scope: !8)
!60 = !DILocation(line: 78, column: 11, scope: !8)
!61 = !DILocation(line: 79, column: 11, scope: !8)
!62 = !DILocation(line: 80, column: 11, scope: !8)
!63 = !DILocation(line: 81, column: 11, scope: !8)
!64 = !DILocation(line: 82, column: 11, scope: !8)
!65 = !DILocation(line: 83, column: 11, scope: !8)
!66 = !DILocation(line: 84, column: 11, scope: !8)
!67 = !DILocation(line: 85, column: 5, scope: !8)
!68 = !DILocation(line: 86, column: 11, scope: !8)
!69 = !DILocation(line: 87, column: 5, scope: !8)
!70 = !DILocation(line: 89, column: 11, scope: !8)
!71 = !DILocation(line: 90, column: 5, scope: !8)
!72 = !DILocation(line: 94, column: 5, scope: !8)
!73 = !DILocation(line: 96, column: 11, scope: !8)
!74 = !DILocation(line: 97, column: 5, scope: !8)
!75 = !DILocation(line: 99, column: 11, scope: !8)
!76 = !DILocation(line: 100, column: 11, scope: !8)
!77 = !DILocation(line: 101, column: 11, scope: !8)
!78 = !DILocation(line: 102, column: 11, scope: !8)
!79 = !DILocation(line: 104, column: 11, scope: !8)
!80 = !DILocation(line: 106, column: 11, scope: !8)
!81 = !DILocation(line: 107, column: 11, scope: !8)
!82 = !DILocation(line: 108, column: 11, scope: !8)
!83 = !DILocation(line: 109, column: 11, scope: !8)
!84 = !DILocation(line: 110, column: 5, scope: !8)
!85 = !DILocation(line: 111, column: 11, scope: !8)
!86 = !DILocation(line: 112, column: 5, scope: !8)
!87 = !DILocation(line: 114, column: 11, scope: !8)
!88 = !DILocation(line: 115, column: 5, scope: !8)
!89 = !DILocation(line: 117, column: 11, scope: !8)
!90 = !DILocation(line: 118, column: 5, scope: !8)
!91 = !DILocation(line: 120, column: 5, scope: !8)
!92 = distinct !DISubprogram(name: "_mlir_ciface_kernel_doitgen", linkageName: "_mlir_ciface_kernel_doitgen", scope: null, file: !4, line: 122, type: !5, scopeLine: 122, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!93 = !DILocation(line: 123, column: 10, scope: !94)
!94 = !DILexicalBlockFile(scope: !92, file: !4, discriminator: 0)
!95 = !DILocation(line: 124, column: 10, scope: !94)
!96 = !DILocation(line: 125, column: 10, scope: !94)
!97 = !DILocation(line: 126, column: 10, scope: !94)
!98 = !DILocation(line: 127, column: 10, scope: !94)
!99 = !DILocation(line: 128, column: 10, scope: !94)
!100 = !DILocation(line: 129, column: 10, scope: !94)
!101 = !DILocation(line: 130, column: 10, scope: !94)
!102 = !DILocation(line: 131, column: 10, scope: !94)
!103 = !DILocation(line: 132, column: 10, scope: !94)
!104 = !DILocation(line: 133, column: 11, scope: !94)
!105 = !DILocation(line: 134, column: 11, scope: !94)
!106 = !DILocation(line: 135, column: 11, scope: !94)
!107 = !DILocation(line: 136, column: 11, scope: !94)
!108 = !DILocation(line: 137, column: 11, scope: !94)
!109 = !DILocation(line: 138, column: 11, scope: !94)
!110 = !DILocation(line: 139, column: 11, scope: !94)
!111 = !DILocation(line: 140, column: 11, scope: !94)
!112 = !DILocation(line: 141, column: 11, scope: !94)
!113 = !DILocation(line: 142, column: 11, scope: !94)
!114 = !DILocation(line: 143, column: 11, scope: !94)
!115 = !DILocation(line: 144, column: 11, scope: !94)
!116 = !DILocation(line: 145, column: 11, scope: !94)
!117 = !DILocation(line: 146, column: 11, scope: !94)
!118 = !DILocation(line: 147, column: 5, scope: !94)
!119 = !DILocation(line: 148, column: 5, scope: !94)
