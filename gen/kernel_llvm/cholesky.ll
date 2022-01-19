; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_cholesky(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !3 {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !7
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1, !dbg !9
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !10
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !11
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !12
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !13
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !14
  %16 = sext i32 %0 to i64, !dbg !15
  br label %17, !dbg !16

17:                                               ; preds = %90, %8
  %18 = phi i64 [ %101, %90 ], [ 0, %8 ]
  %19 = icmp slt i64 %18, %16, !dbg !17
  br i1 %19, label %20, label %102, !dbg !18

20:                                               ; preds = %17
  br label %21, !dbg !19

21:                                               ; preds = %51, %20
  %22 = phi i64 [ %67, %51 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, %18, !dbg !20
  br i1 %23, label %24, label %68, !dbg !21

24:                                               ; preds = %21
  br label %25, !dbg !22

25:                                               ; preds = %28, %24
  %26 = phi i64 [ %50, %28 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, %22, !dbg !23
  br i1 %27, label %28, label %51, !dbg !24

28:                                               ; preds = %25
  %29 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !25
  %30 = mul i64 %18, 2000, !dbg !26
  %31 = add i64 %30, %26, !dbg !27
  %32 = getelementptr double, double* %29, i64 %31, !dbg !28
  %33 = load double, double* %32, align 8, !dbg !29
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !30
  %35 = mul i64 %22, 2000, !dbg !31
  %36 = add i64 %35, %26, !dbg !32
  %37 = getelementptr double, double* %34, i64 %36, !dbg !33
  %38 = load double, double* %37, align 8, !dbg !34
  %39 = fmul double %33, %38, !dbg !35
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !36
  %41 = mul i64 %18, 2000, !dbg !37
  %42 = add i64 %41, %22, !dbg !38
  %43 = getelementptr double, double* %40, i64 %42, !dbg !39
  %44 = load double, double* %43, align 8, !dbg !40
  %45 = fsub double %44, %39, !dbg !41
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !42
  %47 = mul i64 %18, 2000, !dbg !43
  %48 = add i64 %47, %22, !dbg !44
  %49 = getelementptr double, double* %46, i64 %48, !dbg !45
  store double %45, double* %49, align 8, !dbg !46
  %50 = add i64 %26, 1, !dbg !47
  br label %25, !dbg !48

51:                                               ; preds = %25
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !49
  %53 = mul i64 %22, 2000, !dbg !50
  %54 = add i64 %53, %22, !dbg !51
  %55 = getelementptr double, double* %52, i64 %54, !dbg !52
  %56 = load double, double* %55, align 8, !dbg !53
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !54
  %58 = mul i64 %18, 2000, !dbg !55
  %59 = add i64 %58, %22, !dbg !56
  %60 = getelementptr double, double* %57, i64 %59, !dbg !57
  %61 = load double, double* %60, align 8, !dbg !58
  %62 = fdiv double %61, %56, !dbg !59
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !60
  %64 = mul i64 %18, 2000, !dbg !61
  %65 = add i64 %64, %22, !dbg !62
  %66 = getelementptr double, double* %63, i64 %65, !dbg !63
  store double %62, double* %66, align 8, !dbg !64
  %67 = add i64 %22, 1, !dbg !65
  br label %21, !dbg !66

68:                                               ; preds = %21
  br label %69, !dbg !67

69:                                               ; preds = %72, %68
  %70 = phi i64 [ %89, %72 ], [ 0, %68 ]
  %71 = icmp slt i64 %70, %18, !dbg !68
  br i1 %71, label %72, label %90, !dbg !69

72:                                               ; preds = %69
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !70
  %74 = mul i64 %18, 2000, !dbg !71
  %75 = add i64 %74, %70, !dbg !72
  %76 = getelementptr double, double* %73, i64 %75, !dbg !73
  %77 = load double, double* %76, align 8, !dbg !74
  %78 = fmul double %77, %77, !dbg !75
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !76
  %80 = mul i64 %18, 2000, !dbg !77
  %81 = add i64 %80, %18, !dbg !78
  %82 = getelementptr double, double* %79, i64 %81, !dbg !79
  %83 = load double, double* %82, align 8, !dbg !80
  %84 = fsub double %83, %78, !dbg !81
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !82
  %86 = mul i64 %18, 2000, !dbg !83
  %87 = add i64 %86, %18, !dbg !84
  %88 = getelementptr double, double* %85, i64 %87, !dbg !85
  store double %84, double* %88, align 8, !dbg !86
  %89 = add i64 %70, 1, !dbg !87
  br label %69, !dbg !88

90:                                               ; preds = %69
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !89
  %92 = mul i64 %18, 2000, !dbg !90
  %93 = add i64 %92, %18, !dbg !91
  %94 = getelementptr double, double* %91, i64 %93, !dbg !92
  %95 = load double, double* %94, align 8, !dbg !93
  %96 = call double @llvm.sqrt.f64(double %95), !dbg !94
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !95
  %98 = mul i64 %18, 2000, !dbg !96
  %99 = add i64 %98, %18, !dbg !97
  %100 = getelementptr double, double* %97, i64 %99, !dbg !98
  store double %96, double* %100, align 8, !dbg !99
  %101 = add i64 %18, 1, !dbg !100
  br label %17, !dbg !101

102:                                              ; preds = %17
  ret void, !dbg !102
}

define void @_mlir_ciface_kernel_cholesky(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1) !dbg !103 {
  %3 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !104
  %4 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !106
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !107
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !108
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !109
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !110
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !111
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !112
  call void @renamed_kernel_cholesky(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #0

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_cholesky", linkageName: "kernel_cholesky", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!36 = !DILocation(line: 46, column: 11, scope: !8)
!37 = !DILocation(line: 48, column: 11, scope: !8)
!38 = !DILocation(line: 49, column: 11, scope: !8)
!39 = !DILocation(line: 50, column: 11, scope: !8)
!40 = !DILocation(line: 51, column: 11, scope: !8)
!41 = !DILocation(line: 52, column: 11, scope: !8)
!42 = !DILocation(line: 53, column: 11, scope: !8)
!43 = !DILocation(line: 55, column: 11, scope: !8)
!44 = !DILocation(line: 56, column: 11, scope: !8)
!45 = !DILocation(line: 57, column: 11, scope: !8)
!46 = !DILocation(line: 58, column: 5, scope: !8)
!47 = !DILocation(line: 59, column: 11, scope: !8)
!48 = !DILocation(line: 60, column: 5, scope: !8)
!49 = !DILocation(line: 62, column: 11, scope: !8)
!50 = !DILocation(line: 64, column: 11, scope: !8)
!51 = !DILocation(line: 65, column: 11, scope: !8)
!52 = !DILocation(line: 66, column: 11, scope: !8)
!53 = !DILocation(line: 67, column: 11, scope: !8)
!54 = !DILocation(line: 68, column: 11, scope: !8)
!55 = !DILocation(line: 70, column: 11, scope: !8)
!56 = !DILocation(line: 71, column: 11, scope: !8)
!57 = !DILocation(line: 72, column: 11, scope: !8)
!58 = !DILocation(line: 73, column: 11, scope: !8)
!59 = !DILocation(line: 74, column: 11, scope: !8)
!60 = !DILocation(line: 75, column: 11, scope: !8)
!61 = !DILocation(line: 77, column: 11, scope: !8)
!62 = !DILocation(line: 78, column: 11, scope: !8)
!63 = !DILocation(line: 79, column: 11, scope: !8)
!64 = !DILocation(line: 80, column: 5, scope: !8)
!65 = !DILocation(line: 81, column: 11, scope: !8)
!66 = !DILocation(line: 82, column: 5, scope: !8)
!67 = !DILocation(line: 86, column: 5, scope: !8)
!68 = !DILocation(line: 88, column: 11, scope: !8)
!69 = !DILocation(line: 89, column: 5, scope: !8)
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
!83 = !DILocation(line: 107, column: 11, scope: !8)
!84 = !DILocation(line: 108, column: 11, scope: !8)
!85 = !DILocation(line: 109, column: 11, scope: !8)
!86 = !DILocation(line: 110, column: 5, scope: !8)
!87 = !DILocation(line: 111, column: 11, scope: !8)
!88 = !DILocation(line: 112, column: 5, scope: !8)
!89 = !DILocation(line: 114, column: 11, scope: !8)
!90 = !DILocation(line: 116, column: 11, scope: !8)
!91 = !DILocation(line: 117, column: 11, scope: !8)
!92 = !DILocation(line: 118, column: 11, scope: !8)
!93 = !DILocation(line: 119, column: 11, scope: !8)
!94 = !DILocation(line: 120, column: 11, scope: !8)
!95 = !DILocation(line: 121, column: 11, scope: !8)
!96 = !DILocation(line: 123, column: 11, scope: !8)
!97 = !DILocation(line: 124, column: 12, scope: !8)
!98 = !DILocation(line: 125, column: 12, scope: !8)
!99 = !DILocation(line: 126, column: 5, scope: !8)
!100 = !DILocation(line: 127, column: 12, scope: !8)
!101 = !DILocation(line: 128, column: 5, scope: !8)
!102 = !DILocation(line: 130, column: 5, scope: !8)
!103 = distinct !DISubprogram(name: "_mlir_ciface_kernel_cholesky", linkageName: "_mlir_ciface_kernel_cholesky", scope: null, file: !4, line: 132, type: !5, scopeLine: 132, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!104 = !DILocation(line: 133, column: 10, scope: !105)
!105 = !DILexicalBlockFile(scope: !103, file: !4, discriminator: 0)
!106 = !DILocation(line: 134, column: 10, scope: !105)
!107 = !DILocation(line: 135, column: 10, scope: !105)
!108 = !DILocation(line: 136, column: 10, scope: !105)
!109 = !DILocation(line: 137, column: 10, scope: !105)
!110 = !DILocation(line: 138, column: 10, scope: !105)
!111 = !DILocation(line: 139, column: 10, scope: !105)
!112 = !DILocation(line: 140, column: 10, scope: !105)
!113 = !DILocation(line: 141, column: 5, scope: !105)
!114 = !DILocation(line: 142, column: 5, scope: !105)
