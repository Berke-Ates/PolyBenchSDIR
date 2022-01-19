; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_trmm(i32 %0, i32 %1, double %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16) !dbg !3 {
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %3, 0, !dbg !7
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, double* %4, 1, !dbg !9
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 %5, 2, !dbg !10
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %6, 3, 0, !dbg !11
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %8, 4, 0, !dbg !12
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %7, 3, 1, !dbg !13
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %9, 4, 1, !dbg !14
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %10, 0, !dbg !15
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, double* %11, 1, !dbg !16
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %12, 2, !dbg !17
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %13, 3, 0, !dbg !18
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %15, 4, 0, !dbg !19
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %14, 3, 1, !dbg !20
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %16, 4, 1, !dbg !21
  %32 = sext i32 %1 to i64, !dbg !22
  %33 = sext i32 %0 to i64, !dbg !23
  br label %34, !dbg !24

34:                                               ; preds = %81, %17
  %35 = phi i64 [ %82, %81 ], [ 0, %17 ]
  %36 = icmp slt i64 %35, %33, !dbg !25
  br i1 %36, label %37, label %83, !dbg !26

37:                                               ; preds = %34
  br label %38, !dbg !27

38:                                               ; preds = %69, %37
  %39 = phi i64 [ %80, %69 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, %32, !dbg !28
  br i1 %40, label %41, label %81, !dbg !29

41:                                               ; preds = %38
  %42 = add i64 %35, 1, !dbg !30
  br label %43, !dbg !31

43:                                               ; preds = %46, %41
  %44 = phi i64 [ %68, %46 ], [ %42, %41 ]
  %45 = icmp slt i64 %44, %33, !dbg !32
  br i1 %45, label %46, label %69, !dbg !33

46:                                               ; preds = %43
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 1, !dbg !34
  %48 = mul i64 %44, 1000, !dbg !35
  %49 = add i64 %48, %35, !dbg !36
  %50 = getelementptr double, double* %47, i64 %49, !dbg !37
  %51 = load double, double* %50, align 8, !dbg !38
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !39
  %53 = mul i64 %44, 1200, !dbg !40
  %54 = add i64 %53, %39, !dbg !41
  %55 = getelementptr double, double* %52, i64 %54, !dbg !42
  %56 = load double, double* %55, align 8, !dbg !43
  %57 = fmul double %51, %56, !dbg !44
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !45
  %59 = mul i64 %35, 1200, !dbg !46
  %60 = add i64 %59, %39, !dbg !47
  %61 = getelementptr double, double* %58, i64 %60, !dbg !48
  %62 = load double, double* %61, align 8, !dbg !49
  %63 = fadd double %62, %57, !dbg !50
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !51
  %65 = mul i64 %35, 1200, !dbg !52
  %66 = add i64 %65, %39, !dbg !53
  %67 = getelementptr double, double* %64, i64 %66, !dbg !54
  store double %63, double* %67, align 8, !dbg !55
  %68 = add i64 %44, 1, !dbg !56
  br label %43, !dbg !57

69:                                               ; preds = %43
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !58
  %71 = mul i64 %35, 1200, !dbg !59
  %72 = add i64 %71, %39, !dbg !60
  %73 = getelementptr double, double* %70, i64 %72, !dbg !61
  %74 = load double, double* %73, align 8, !dbg !62
  %75 = fmul double %2, %74, !dbg !63
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !64
  %77 = mul i64 %35, 1200, !dbg !65
  %78 = add i64 %77, %39, !dbg !66
  %79 = getelementptr double, double* %76, i64 %78, !dbg !67
  store double %75, double* %79, align 8, !dbg !68
  %80 = add i64 %39, 1, !dbg !69
  br label %38, !dbg !70

81:                                               ; preds = %38
  %82 = add i64 %35, 1, !dbg !71
  br label %34, !dbg !72

83:                                               ; preds = %34
  ret void, !dbg !73
}

define void @_mlir_ciface_kernel_trmm(i32 %0, i32 %1, double %2, { double*, double*, i64, [2 x i64], [2 x i64] }* %3, { double*, double*, i64, [2 x i64], [2 x i64] }* %4) !dbg !74 {
  %6 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %3, align 8, !dbg !75
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, 0, !dbg !77
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, 1, !dbg !78
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, 2, !dbg !79
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, 3, 0, !dbg !80
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, 3, 1, !dbg !81
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, 4, 0, !dbg !82
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, 4, 1, !dbg !83
  %14 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, align 8, !dbg !84
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, 0, !dbg !85
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, 1, !dbg !86
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, 2, !dbg !87
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, 3, 0, !dbg !88
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, 3, 1, !dbg !89
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, 4, 0, !dbg !90
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, 4, 1, !dbg !91
  call void @renamed_kernel_trmm(i32 %0, i32 %1, double %2, double* %7, double* %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, double* %15, double* %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21), !dbg !92
  ret void, !dbg !93
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_trmm", linkageName: "kernel_trmm", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!22 = !DILocation(line: 19, column: 11, scope: !8)
!23 = !DILocation(line: 20, column: 11, scope: !8)
!24 = !DILocation(line: 23, column: 5, scope: !8)
!25 = !DILocation(line: 25, column: 11, scope: !8)
!26 = !DILocation(line: 26, column: 5, scope: !8)
!27 = !DILocation(line: 30, column: 5, scope: !8)
!28 = !DILocation(line: 32, column: 11, scope: !8)
!29 = !DILocation(line: 33, column: 5, scope: !8)
!30 = !DILocation(line: 36, column: 11, scope: !8)
!31 = !DILocation(line: 38, column: 5, scope: !8)
!32 = !DILocation(line: 40, column: 11, scope: !8)
!33 = !DILocation(line: 41, column: 5, scope: !8)
!34 = !DILocation(line: 43, column: 11, scope: !8)
!35 = !DILocation(line: 45, column: 11, scope: !8)
!36 = !DILocation(line: 46, column: 11, scope: !8)
!37 = !DILocation(line: 47, column: 11, scope: !8)
!38 = !DILocation(line: 48, column: 11, scope: !8)
!39 = !DILocation(line: 49, column: 11, scope: !8)
!40 = !DILocation(line: 51, column: 11, scope: !8)
!41 = !DILocation(line: 52, column: 11, scope: !8)
!42 = !DILocation(line: 53, column: 11, scope: !8)
!43 = !DILocation(line: 54, column: 11, scope: !8)
!44 = !DILocation(line: 55, column: 11, scope: !8)
!45 = !DILocation(line: 56, column: 11, scope: !8)
!46 = !DILocation(line: 58, column: 11, scope: !8)
!47 = !DILocation(line: 59, column: 11, scope: !8)
!48 = !DILocation(line: 60, column: 11, scope: !8)
!49 = !DILocation(line: 61, column: 11, scope: !8)
!50 = !DILocation(line: 62, column: 11, scope: !8)
!51 = !DILocation(line: 63, column: 11, scope: !8)
!52 = !DILocation(line: 65, column: 11, scope: !8)
!53 = !DILocation(line: 66, column: 11, scope: !8)
!54 = !DILocation(line: 67, column: 11, scope: !8)
!55 = !DILocation(line: 68, column: 5, scope: !8)
!56 = !DILocation(line: 69, column: 11, scope: !8)
!57 = !DILocation(line: 70, column: 5, scope: !8)
!58 = !DILocation(line: 72, column: 11, scope: !8)
!59 = !DILocation(line: 74, column: 11, scope: !8)
!60 = !DILocation(line: 75, column: 11, scope: !8)
!61 = !DILocation(line: 76, column: 11, scope: !8)
!62 = !DILocation(line: 77, column: 11, scope: !8)
!63 = !DILocation(line: 78, column: 11, scope: !8)
!64 = !DILocation(line: 79, column: 11, scope: !8)
!65 = !DILocation(line: 81, column: 11, scope: !8)
!66 = !DILocation(line: 82, column: 11, scope: !8)
!67 = !DILocation(line: 83, column: 11, scope: !8)
!68 = !DILocation(line: 84, column: 5, scope: !8)
!69 = !DILocation(line: 85, column: 11, scope: !8)
!70 = !DILocation(line: 86, column: 5, scope: !8)
!71 = !DILocation(line: 88, column: 11, scope: !8)
!72 = !DILocation(line: 89, column: 5, scope: !8)
!73 = !DILocation(line: 91, column: 5, scope: !8)
!74 = distinct !DISubprogram(name: "_mlir_ciface_kernel_trmm", linkageName: "_mlir_ciface_kernel_trmm", scope: null, file: !4, line: 93, type: !5, scopeLine: 93, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!75 = !DILocation(line: 94, column: 10, scope: !76)
!76 = !DILexicalBlockFile(scope: !74, file: !4, discriminator: 0)
!77 = !DILocation(line: 95, column: 10, scope: !76)
!78 = !DILocation(line: 96, column: 10, scope: !76)
!79 = !DILocation(line: 97, column: 10, scope: !76)
!80 = !DILocation(line: 98, column: 10, scope: !76)
!81 = !DILocation(line: 99, column: 10, scope: !76)
!82 = !DILocation(line: 100, column: 10, scope: !76)
!83 = !DILocation(line: 101, column: 10, scope: !76)
!84 = !DILocation(line: 102, column: 10, scope: !76)
!85 = !DILocation(line: 103, column: 10, scope: !76)
!86 = !DILocation(line: 104, column: 11, scope: !76)
!87 = !DILocation(line: 105, column: 11, scope: !76)
!88 = !DILocation(line: 106, column: 11, scope: !76)
!89 = !DILocation(line: 107, column: 11, scope: !76)
!90 = !DILocation(line: 108, column: 11, scope: !76)
!91 = !DILocation(line: 109, column: 11, scope: !76)
!92 = !DILocation(line: 110, column: 5, scope: !76)
!93 = !DILocation(line: 111, column: 5, scope: !76)
