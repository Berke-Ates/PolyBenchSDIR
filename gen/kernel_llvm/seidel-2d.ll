; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @renamed_kernel_seidel_2d(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) !dbg !3 {
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !7
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, double* %3, 1, !dbg !9
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 2, !dbg !10
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %5, 3, 0, !dbg !11
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %7, 4, 0, !dbg !12
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %6, 3, 1, !dbg !13
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 %8, 4, 1, !dbg !14
  %17 = sext i32 %0 to i64, !dbg !15
  %18 = sext i32 %1 to i64, !dbg !16
  br label %19, !dbg !17

19:                                               ; preds = %106, %9
  %20 = phi i64 [ %107, %106 ], [ 0, %9 ]
  %21 = icmp slt i64 %20, %17, !dbg !18
  br i1 %21, label %22, label %108, !dbg !19

22:                                               ; preds = %19
  %23 = add i64 %18, -1, !dbg !20
  br label %24, !dbg !21

24:                                               ; preds = %104, %22
  %25 = phi i64 [ %105, %104 ], [ 1, %22 ]
  %26 = icmp slt i64 %25, %23, !dbg !22
  br i1 %26, label %27, label %106, !dbg !23

27:                                               ; preds = %24
  %28 = add i64 %18, -1, !dbg !24
  br label %29, !dbg !25

29:                                               ; preds = %32, %27
  %30 = phi i64 [ %103, %32 ], [ 1, %27 ]
  %31 = icmp slt i64 %30, %28, !dbg !26
  br i1 %31, label %32, label %104, !dbg !27

32:                                               ; preds = %29
  %33 = add i64 %25, -1, !dbg !28
  %34 = add i64 %30, -1, !dbg !29
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !30
  %36 = mul i64 %33, 2000, !dbg !31
  %37 = add i64 %36, %34, !dbg !32
  %38 = getelementptr double, double* %35, i64 %37, !dbg !33
  %39 = load double, double* %38, align 8, !dbg !34
  %40 = add i64 %25, -1, !dbg !35
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !36
  %42 = mul i64 %40, 2000, !dbg !37
  %43 = add i64 %42, %30, !dbg !38
  %44 = getelementptr double, double* %41, i64 %43, !dbg !39
  %45 = load double, double* %44, align 8, !dbg !40
  %46 = fadd double %39, %45, !dbg !41
  %47 = add i64 %25, -1, !dbg !42
  %48 = add i64 %30, 1, !dbg !43
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !44
  %50 = mul i64 %47, 2000, !dbg !45
  %51 = add i64 %50, %48, !dbg !46
  %52 = getelementptr double, double* %49, i64 %51, !dbg !47
  %53 = load double, double* %52, align 8, !dbg !48
  %54 = fadd double %46, %53, !dbg !49
  %55 = add i64 %30, -1, !dbg !50
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !51
  %57 = mul i64 %25, 2000, !dbg !52
  %58 = add i64 %57, %55, !dbg !53
  %59 = getelementptr double, double* %56, i64 %58, !dbg !54
  %60 = load double, double* %59, align 8, !dbg !55
  %61 = fadd double %54, %60, !dbg !56
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !57
  %63 = mul i64 %25, 2000, !dbg !58
  %64 = add i64 %63, %30, !dbg !59
  %65 = getelementptr double, double* %62, i64 %64, !dbg !60
  %66 = load double, double* %65, align 8, !dbg !61
  %67 = fadd double %61, %66, !dbg !62
  %68 = add i64 %30, 1, !dbg !63
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !64
  %70 = mul i64 %25, 2000, !dbg !65
  %71 = add i64 %70, %68, !dbg !66
  %72 = getelementptr double, double* %69, i64 %71, !dbg !67
  %73 = load double, double* %72, align 8, !dbg !68
  %74 = fadd double %67, %73, !dbg !69
  %75 = add i64 %25, 1, !dbg !70
  %76 = add i64 %30, -1, !dbg !71
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !72
  %78 = mul i64 %75, 2000, !dbg !73
  %79 = add i64 %78, %76, !dbg !74
  %80 = getelementptr double, double* %77, i64 %79, !dbg !75
  %81 = load double, double* %80, align 8, !dbg !76
  %82 = fadd double %74, %81, !dbg !77
  %83 = add i64 %25, 1, !dbg !78
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !79
  %85 = mul i64 %83, 2000, !dbg !80
  %86 = add i64 %85, %30, !dbg !81
  %87 = getelementptr double, double* %84, i64 %86, !dbg !82
  %88 = load double, double* %87, align 8, !dbg !83
  %89 = fadd double %82, %88, !dbg !84
  %90 = add i64 %25, 1, !dbg !85
  %91 = add i64 %30, 1, !dbg !86
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !87
  %93 = mul i64 %90, 2000, !dbg !88
  %94 = add i64 %93, %91, !dbg !89
  %95 = getelementptr double, double* %92, i64 %94, !dbg !90
  %96 = load double, double* %95, align 8, !dbg !91
  %97 = fadd double %89, %96, !dbg !92
  %98 = fdiv double %97, 9.000000e+00, !dbg !93
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !94
  %100 = mul i64 %25, 2000, !dbg !95
  %101 = add i64 %100, %30, !dbg !96
  %102 = getelementptr double, double* %99, i64 %101, !dbg !97
  store double %98, double* %102, align 8, !dbg !98
  %103 = add i64 %30, 1, !dbg !99
  br label %29, !dbg !100

104:                                              ; preds = %29
  %105 = add i64 %25, 1, !dbg !101
  br label %24, !dbg !102

106:                                              ; preds = %24
  %107 = add i64 %20, 1, !dbg !103
  br label %19, !dbg !104

108:                                              ; preds = %19
  ret void, !dbg !105
}

define void @_mlir_ciface_kernel_seidel_2d(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %2) !dbg !106 {
  %4 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, align 8, !dbg !107
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 0, !dbg !109
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 1, !dbg !110
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 2, !dbg !111
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 3, 0, !dbg !112
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 3, 1, !dbg !113
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 4, 0, !dbg !114
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 4, 1, !dbg !115
  call void @renamed_kernel_seidel_2d(i32 %0, i32 %1, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11), !dbg !116
  ret void, !dbg !117
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_seidel_2d", linkageName: "kernel_seidel_2d", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!17 = !DILocation(line: 16, column: 5, scope: !8)
!18 = !DILocation(line: 18, column: 11, scope: !8)
!19 = !DILocation(line: 19, column: 5, scope: !8)
!20 = !DILocation(line: 23, column: 11, scope: !8)
!21 = !DILocation(line: 25, column: 5, scope: !8)
!22 = !DILocation(line: 27, column: 11, scope: !8)
!23 = !DILocation(line: 28, column: 5, scope: !8)
!24 = !DILocation(line: 32, column: 11, scope: !8)
!25 = !DILocation(line: 34, column: 5, scope: !8)
!26 = !DILocation(line: 36, column: 11, scope: !8)
!27 = !DILocation(line: 37, column: 5, scope: !8)
!28 = !DILocation(line: 40, column: 11, scope: !8)
!29 = !DILocation(line: 42, column: 11, scope: !8)
!30 = !DILocation(line: 43, column: 11, scope: !8)
!31 = !DILocation(line: 45, column: 11, scope: !8)
!32 = !DILocation(line: 46, column: 11, scope: !8)
!33 = !DILocation(line: 47, column: 11, scope: !8)
!34 = !DILocation(line: 48, column: 11, scope: !8)
!35 = !DILocation(line: 50, column: 11, scope: !8)
!36 = !DILocation(line: 51, column: 11, scope: !8)
!37 = !DILocation(line: 53, column: 11, scope: !8)
!38 = !DILocation(line: 54, column: 11, scope: !8)
!39 = !DILocation(line: 55, column: 11, scope: !8)
!40 = !DILocation(line: 56, column: 11, scope: !8)
!41 = !DILocation(line: 57, column: 11, scope: !8)
!42 = !DILocation(line: 59, column: 11, scope: !8)
!43 = !DILocation(line: 61, column: 11, scope: !8)
!44 = !DILocation(line: 62, column: 11, scope: !8)
!45 = !DILocation(line: 64, column: 11, scope: !8)
!46 = !DILocation(line: 65, column: 11, scope: !8)
!47 = !DILocation(line: 66, column: 11, scope: !8)
!48 = !DILocation(line: 67, column: 11, scope: !8)
!49 = !DILocation(line: 68, column: 11, scope: !8)
!50 = !DILocation(line: 70, column: 11, scope: !8)
!51 = !DILocation(line: 71, column: 11, scope: !8)
!52 = !DILocation(line: 73, column: 11, scope: !8)
!53 = !DILocation(line: 74, column: 11, scope: !8)
!54 = !DILocation(line: 75, column: 11, scope: !8)
!55 = !DILocation(line: 76, column: 11, scope: !8)
!56 = !DILocation(line: 77, column: 11, scope: !8)
!57 = !DILocation(line: 78, column: 11, scope: !8)
!58 = !DILocation(line: 80, column: 11, scope: !8)
!59 = !DILocation(line: 81, column: 11, scope: !8)
!60 = !DILocation(line: 82, column: 11, scope: !8)
!61 = !DILocation(line: 83, column: 11, scope: !8)
!62 = !DILocation(line: 84, column: 11, scope: !8)
!63 = !DILocation(line: 86, column: 11, scope: !8)
!64 = !DILocation(line: 87, column: 11, scope: !8)
!65 = !DILocation(line: 89, column: 11, scope: !8)
!66 = !DILocation(line: 90, column: 11, scope: !8)
!67 = !DILocation(line: 91, column: 11, scope: !8)
!68 = !DILocation(line: 92, column: 11, scope: !8)
!69 = !DILocation(line: 93, column: 11, scope: !8)
!70 = !DILocation(line: 95, column: 11, scope: !8)
!71 = !DILocation(line: 97, column: 11, scope: !8)
!72 = !DILocation(line: 98, column: 11, scope: !8)
!73 = !DILocation(line: 100, column: 11, scope: !8)
!74 = !DILocation(line: 101, column: 11, scope: !8)
!75 = !DILocation(line: 102, column: 11, scope: !8)
!76 = !DILocation(line: 103, column: 11, scope: !8)
!77 = !DILocation(line: 104, column: 11, scope: !8)
!78 = !DILocation(line: 106, column: 11, scope: !8)
!79 = !DILocation(line: 107, column: 11, scope: !8)
!80 = !DILocation(line: 109, column: 11, scope: !8)
!81 = !DILocation(line: 110, column: 11, scope: !8)
!82 = !DILocation(line: 111, column: 11, scope: !8)
!83 = !DILocation(line: 112, column: 12, scope: !8)
!84 = !DILocation(line: 113, column: 12, scope: !8)
!85 = !DILocation(line: 115, column: 12, scope: !8)
!86 = !DILocation(line: 117, column: 12, scope: !8)
!87 = !DILocation(line: 118, column: 12, scope: !8)
!88 = !DILocation(line: 120, column: 12, scope: !8)
!89 = !DILocation(line: 121, column: 12, scope: !8)
!90 = !DILocation(line: 122, column: 12, scope: !8)
!91 = !DILocation(line: 123, column: 12, scope: !8)
!92 = !DILocation(line: 124, column: 12, scope: !8)
!93 = !DILocation(line: 125, column: 12, scope: !8)
!94 = !DILocation(line: 126, column: 12, scope: !8)
!95 = !DILocation(line: 128, column: 12, scope: !8)
!96 = !DILocation(line: 129, column: 12, scope: !8)
!97 = !DILocation(line: 130, column: 12, scope: !8)
!98 = !DILocation(line: 131, column: 5, scope: !8)
!99 = !DILocation(line: 132, column: 12, scope: !8)
!100 = !DILocation(line: 133, column: 5, scope: !8)
!101 = !DILocation(line: 135, column: 12, scope: !8)
!102 = !DILocation(line: 136, column: 5, scope: !8)
!103 = !DILocation(line: 138, column: 12, scope: !8)
!104 = !DILocation(line: 139, column: 5, scope: !8)
!105 = !DILocation(line: 141, column: 5, scope: !8)
!106 = distinct !DISubprogram(name: "_mlir_ciface_kernel_seidel_2d", linkageName: "_mlir_ciface_kernel_seidel_2d", scope: null, file: !4, line: 143, type: !5, scopeLine: 143, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!107 = !DILocation(line: 144, column: 10, scope: !108)
!108 = !DILexicalBlockFile(scope: !106, file: !4, discriminator: 0)
!109 = !DILocation(line: 145, column: 10, scope: !108)
!110 = !DILocation(line: 146, column: 10, scope: !108)
!111 = !DILocation(line: 147, column: 10, scope: !108)
!112 = !DILocation(line: 148, column: 10, scope: !108)
!113 = !DILocation(line: 149, column: 10, scope: !108)
!114 = !DILocation(line: 150, column: 10, scope: !108)
!115 = !DILocation(line: 151, column: 10, scope: !108)
!116 = !DILocation(line: 152, column: 5, scope: !108)
!117 = !DILocation(line: 153, column: 5, scope: !108)
