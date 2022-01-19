; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_atax(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23) !dbg !3 {
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !7
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, double* %3, 1, !dbg !9
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %4, 2, !dbg !10
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %5, 3, 0, !dbg !11
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %7, 4, 0, !dbg !12
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %6, 3, 1, !dbg !13
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %8, 4, 1, !dbg !14
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0, !dbg !15
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, double* %10, 1, !dbg !16
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %11, 2, !dbg !17
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %12, 3, 0, !dbg !18
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %13, 4, 0, !dbg !19
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %14, 0, !dbg !20
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, double* %15, 1, !dbg !21
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %16, 2, !dbg !22
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 %17, 3, 0, !dbg !23
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %18, 4, 0, !dbg !24
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %19, 0, !dbg !25
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, double* %20, 1, !dbg !26
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %21, 2, !dbg !27
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %22, 3, 0, !dbg !28
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %23, 4, 0, !dbg !29
  %47 = sext i32 %1 to i64, !dbg !30
  %48 = sext i32 %1 to i64, !dbg !31
  %49 = sext i32 %1 to i64, !dbg !32
  br label %50, !dbg !33

50:                                               ; preds = %53, %24
  %51 = phi i64 [ %56, %53 ], [ 0, %24 ]
  %52 = icmp slt i64 %51, %49, !dbg !34
  br i1 %52, label %53, label %57, !dbg !35

53:                                               ; preds = %50
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1, !dbg !36
  %55 = getelementptr double, double* %54, i64 %51, !dbg !37
  store double 0.000000e+00, double* %55, align 8, !dbg !38
  %56 = add i64 %51, 1, !dbg !39
  br label %50, !dbg !40

57:                                               ; preds = %50
  %58 = sext i32 %0 to i64, !dbg !41
  br label %59, !dbg !42

59:                                               ; preds = %106, %57
  %60 = phi i64 [ %107, %106 ], [ 0, %57 ]
  %61 = icmp slt i64 %60, %58, !dbg !43
  br i1 %61, label %62, label %108, !dbg !44

62:                                               ; preds = %59
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1, !dbg !45
  %64 = getelementptr double, double* %63, i64 %60, !dbg !46
  store double 0.000000e+00, double* %64, align 8, !dbg !47
  br label %65, !dbg !48

65:                                               ; preds = %68, %62
  %66 = phi i64 [ %84, %68 ], [ 0, %62 ]
  %67 = icmp slt i64 %66, %47, !dbg !49
  br i1 %67, label %68, label %85, !dbg !50

68:                                               ; preds = %65
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1, !dbg !51
  %70 = getelementptr double, double* %69, i64 %60, !dbg !52
  %71 = load double, double* %70, align 8, !dbg !53
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !54
  %73 = mul i64 %60, 2100, !dbg !55
  %74 = add i64 %73, %66, !dbg !56
  %75 = getelementptr double, double* %72, i64 %74, !dbg !57
  %76 = load double, double* %75, align 8, !dbg !58
  %77 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, 1, !dbg !59
  %78 = getelementptr double, double* %77, i64 %66, !dbg !60
  %79 = load double, double* %78, align 8, !dbg !61
  %80 = fmul double %76, %79, !dbg !62
  %81 = fadd double %71, %80, !dbg !63
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1, !dbg !64
  %83 = getelementptr double, double* %82, i64 %60, !dbg !65
  store double %81, double* %83, align 8, !dbg !66
  %84 = add i64 %66, 1, !dbg !67
  br label %65, !dbg !68

85:                                               ; preds = %65
  br label %86, !dbg !69

86:                                               ; preds = %89, %85
  %87 = phi i64 [ %105, %89 ], [ 0, %85 ]
  %88 = icmp slt i64 %87, %48, !dbg !70
  br i1 %88, label %89, label %106, !dbg !71

89:                                               ; preds = %86
  %90 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1, !dbg !72
  %91 = getelementptr double, double* %90, i64 %87, !dbg !73
  %92 = load double, double* %91, align 8, !dbg !74
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !75
  %94 = mul i64 %60, 2100, !dbg !76
  %95 = add i64 %94, %87, !dbg !77
  %96 = getelementptr double, double* %93, i64 %95, !dbg !78
  %97 = load double, double* %96, align 8, !dbg !79
  %98 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1, !dbg !80
  %99 = getelementptr double, double* %98, i64 %60, !dbg !81
  %100 = load double, double* %99, align 8, !dbg !82
  %101 = fmul double %97, %100, !dbg !83
  %102 = fadd double %92, %101, !dbg !84
  %103 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1, !dbg !85
  %104 = getelementptr double, double* %103, i64 %87, !dbg !86
  store double %102, double* %104, align 8, !dbg !87
  %105 = add i64 %87, 1, !dbg !88
  br label %86, !dbg !89

106:                                              ; preds = %86
  %107 = add i64 %60, 1, !dbg !90
  br label %59, !dbg !91

108:                                              ; preds = %59
  ret void, !dbg !92
}

define void @_mlir_ciface_kernel_atax(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, { double*, double*, i64, [1 x i64], [1 x i64] }* %5) !dbg !93 {
  %7 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, align 8, !dbg !94
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 0, !dbg !96
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 1, !dbg !97
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 2, !dbg !98
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 3, 0, !dbg !99
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 3, 1, !dbg !100
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 4, 0, !dbg !101
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 4, 1, !dbg !102
  %15 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, align 8, !dbg !103
  %16 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, 0, !dbg !104
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, 1, !dbg !105
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, 2, !dbg !106
  %19 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, 3, 0, !dbg !107
  %20 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, 4, 0, !dbg !108
  %21 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, align 8, !dbg !109
  %22 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 0, !dbg !110
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !111
  %24 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 2, !dbg !112
  %25 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 3, 0, !dbg !113
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 4, 0, !dbg !114
  %27 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, align 8, !dbg !115
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, 0, !dbg !116
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, 1, !dbg !117
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, 2, !dbg !118
  %31 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, 3, 0, !dbg !119
  %32 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, 4, 0, !dbg !120
  call void @renamed_kernel_atax(i32 %0, i32 %1, double* %8, double* %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, double* %16, double* %17, i64 %18, i64 %19, i64 %20, double* %22, double* %23, i64 %24, i64 %25, i64 %26, double* %28, double* %29, i64 %30, i64 %31, i64 %32), !dbg !121
  ret void, !dbg !122
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_atax", linkageName: "kernel_atax", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!33 = !DILocation(line: 35, column: 5, scope: !8)
!34 = !DILocation(line: 37, column: 11, scope: !8)
!35 = !DILocation(line: 38, column: 5, scope: !8)
!36 = !DILocation(line: 40, column: 11, scope: !8)
!37 = !DILocation(line: 41, column: 11, scope: !8)
!38 = !DILocation(line: 42, column: 5, scope: !8)
!39 = !DILocation(line: 43, column: 11, scope: !8)
!40 = !DILocation(line: 44, column: 5, scope: !8)
!41 = !DILocation(line: 46, column: 11, scope: !8)
!42 = !DILocation(line: 49, column: 5, scope: !8)
!43 = !DILocation(line: 51, column: 11, scope: !8)
!44 = !DILocation(line: 52, column: 5, scope: !8)
!45 = !DILocation(line: 54, column: 11, scope: !8)
!46 = !DILocation(line: 55, column: 11, scope: !8)
!47 = !DILocation(line: 56, column: 5, scope: !8)
!48 = !DILocation(line: 59, column: 5, scope: !8)
!49 = !DILocation(line: 61, column: 11, scope: !8)
!50 = !DILocation(line: 62, column: 5, scope: !8)
!51 = !DILocation(line: 64, column: 11, scope: !8)
!52 = !DILocation(line: 65, column: 11, scope: !8)
!53 = !DILocation(line: 66, column: 11, scope: !8)
!54 = !DILocation(line: 67, column: 11, scope: !8)
!55 = !DILocation(line: 69, column: 11, scope: !8)
!56 = !DILocation(line: 70, column: 11, scope: !8)
!57 = !DILocation(line: 71, column: 11, scope: !8)
!58 = !DILocation(line: 72, column: 11, scope: !8)
!59 = !DILocation(line: 73, column: 11, scope: !8)
!60 = !DILocation(line: 74, column: 11, scope: !8)
!61 = !DILocation(line: 75, column: 11, scope: !8)
!62 = !DILocation(line: 76, column: 11, scope: !8)
!63 = !DILocation(line: 77, column: 11, scope: !8)
!64 = !DILocation(line: 78, column: 11, scope: !8)
!65 = !DILocation(line: 79, column: 11, scope: !8)
!66 = !DILocation(line: 80, column: 5, scope: !8)
!67 = !DILocation(line: 81, column: 11, scope: !8)
!68 = !DILocation(line: 82, column: 5, scope: !8)
!69 = !DILocation(line: 86, column: 5, scope: !8)
!70 = !DILocation(line: 88, column: 11, scope: !8)
!71 = !DILocation(line: 89, column: 5, scope: !8)
!72 = !DILocation(line: 91, column: 11, scope: !8)
!73 = !DILocation(line: 92, column: 11, scope: !8)
!74 = !DILocation(line: 93, column: 11, scope: !8)
!75 = !DILocation(line: 94, column: 11, scope: !8)
!76 = !DILocation(line: 96, column: 11, scope: !8)
!77 = !DILocation(line: 97, column: 11, scope: !8)
!78 = !DILocation(line: 98, column: 11, scope: !8)
!79 = !DILocation(line: 99, column: 11, scope: !8)
!80 = !DILocation(line: 100, column: 11, scope: !8)
!81 = !DILocation(line: 101, column: 11, scope: !8)
!82 = !DILocation(line: 102, column: 11, scope: !8)
!83 = !DILocation(line: 103, column: 11, scope: !8)
!84 = !DILocation(line: 104, column: 11, scope: !8)
!85 = !DILocation(line: 105, column: 11, scope: !8)
!86 = !DILocation(line: 106, column: 11, scope: !8)
!87 = !DILocation(line: 107, column: 5, scope: !8)
!88 = !DILocation(line: 108, column: 11, scope: !8)
!89 = !DILocation(line: 109, column: 5, scope: !8)
!90 = !DILocation(line: 111, column: 11, scope: !8)
!91 = !DILocation(line: 112, column: 5, scope: !8)
!92 = !DILocation(line: 114, column: 5, scope: !8)
!93 = distinct !DISubprogram(name: "_mlir_ciface_kernel_atax", linkageName: "_mlir_ciface_kernel_atax", scope: null, file: !4, line: 116, type: !5, scopeLine: 116, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!94 = !DILocation(line: 117, column: 10, scope: !95)
!95 = !DILexicalBlockFile(scope: !93, file: !4, discriminator: 0)
!96 = !DILocation(line: 118, column: 10, scope: !95)
!97 = !DILocation(line: 119, column: 10, scope: !95)
!98 = !DILocation(line: 120, column: 10, scope: !95)
!99 = !DILocation(line: 121, column: 10, scope: !95)
!100 = !DILocation(line: 122, column: 10, scope: !95)
!101 = !DILocation(line: 123, column: 10, scope: !95)
!102 = !DILocation(line: 124, column: 10, scope: !95)
!103 = !DILocation(line: 125, column: 10, scope: !95)
!104 = !DILocation(line: 126, column: 10, scope: !95)
!105 = !DILocation(line: 127, column: 11, scope: !95)
!106 = !DILocation(line: 128, column: 11, scope: !95)
!107 = !DILocation(line: 129, column: 11, scope: !95)
!108 = !DILocation(line: 130, column: 11, scope: !95)
!109 = !DILocation(line: 131, column: 11, scope: !95)
!110 = !DILocation(line: 132, column: 11, scope: !95)
!111 = !DILocation(line: 133, column: 11, scope: !95)
!112 = !DILocation(line: 134, column: 11, scope: !95)
!113 = !DILocation(line: 135, column: 11, scope: !95)
!114 = !DILocation(line: 136, column: 11, scope: !95)
!115 = !DILocation(line: 137, column: 11, scope: !95)
!116 = !DILocation(line: 138, column: 11, scope: !95)
!117 = !DILocation(line: 139, column: 11, scope: !95)
!118 = !DILocation(line: 140, column: 11, scope: !95)
!119 = !DILocation(line: 141, column: 11, scope: !95)
!120 = !DILocation(line: 142, column: 11, scope: !95)
!121 = !DILocation(line: 143, column: 5, scope: !95)
!122 = !DILocation(line: 144, column: 5, scope: !95)
