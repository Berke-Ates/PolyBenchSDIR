; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_syrk(i32 %0, i32 %1, double %2, double %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17) !dbg !3 {
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0, !dbg !7
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, double* %5, 1, !dbg !9
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %6, 2, !dbg !10
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %7, 3, 0, !dbg !11
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %9, 4, 0, !dbg !12
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %8, 3, 1, !dbg !13
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %10, 4, 1, !dbg !14
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %11, 0, !dbg !15
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %12, 1, !dbg !16
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %13, 2, !dbg !17
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %14, 3, 0, !dbg !18
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %16, 4, 0, !dbg !19
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %15, 3, 1, !dbg !20
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %17, 4, 1, !dbg !21
  %33 = sext i32 %1 to i64, !dbg !22
  %34 = sext i32 %0 to i64, !dbg !23
  br label %35, !dbg !24

35:                                               ; preds = %90, %18
  %36 = phi i64 [ %91, %90 ], [ 0, %18 ]
  %37 = icmp slt i64 %36, %34, !dbg !25
  br i1 %37, label %38, label %92, !dbg !26

38:                                               ; preds = %35
  %39 = add i64 %36, 1, !dbg !27
  br label %40, !dbg !28

40:                                               ; preds = %43, %38
  %41 = phi i64 [ %54, %43 ], [ 0, %38 ]
  %42 = icmp slt i64 %41, %39, !dbg !29
  br i1 %42, label %43, label %55, !dbg !30

43:                                               ; preds = %40
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1, !dbg !31
  %45 = mul i64 %36, 1200, !dbg !32
  %46 = add i64 %45, %41, !dbg !33
  %47 = getelementptr double, double* %44, i64 %46, !dbg !34
  %48 = load double, double* %47, align 8, !dbg !35
  %49 = fmul double %48, %3, !dbg !36
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1, !dbg !37
  %51 = mul i64 %36, 1200, !dbg !38
  %52 = add i64 %51, %41, !dbg !39
  %53 = getelementptr double, double* %50, i64 %52, !dbg !40
  store double %49, double* %53, align 8, !dbg !41
  %54 = add i64 %41, 1, !dbg !42
  br label %40, !dbg !43

55:                                               ; preds = %40
  br label %56, !dbg !44

56:                                               ; preds = %88, %55
  %57 = phi i64 [ %89, %88 ], [ 0, %55 ]
  %58 = icmp slt i64 %57, %33, !dbg !45
  br i1 %58, label %59, label %90, !dbg !46

59:                                               ; preds = %56
  %60 = add i64 %36, 1, !dbg !47
  br label %61, !dbg !48

61:                                               ; preds = %64, %59
  %62 = phi i64 [ %87, %64 ], [ 0, %59 ]
  %63 = icmp slt i64 %62, %60, !dbg !49
  br i1 %63, label %64, label %88, !dbg !50

64:                                               ; preds = %61
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !51
  %66 = mul i64 %36, 1000, !dbg !52
  %67 = add i64 %66, %57, !dbg !53
  %68 = getelementptr double, double* %65, i64 %67, !dbg !54
  %69 = load double, double* %68, align 8, !dbg !55
  %70 = fmul double %2, %69, !dbg !56
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !57
  %72 = mul i64 %62, 1000, !dbg !58
  %73 = add i64 %72, %57, !dbg !59
  %74 = getelementptr double, double* %71, i64 %73, !dbg !60
  %75 = load double, double* %74, align 8, !dbg !61
  %76 = fmul double %70, %75, !dbg !62
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1, !dbg !63
  %78 = mul i64 %36, 1200, !dbg !64
  %79 = add i64 %78, %62, !dbg !65
  %80 = getelementptr double, double* %77, i64 %79, !dbg !66
  %81 = load double, double* %80, align 8, !dbg !67
  %82 = fadd double %81, %76, !dbg !68
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1, !dbg !69
  %84 = mul i64 %36, 1200, !dbg !70
  %85 = add i64 %84, %62, !dbg !71
  %86 = getelementptr double, double* %83, i64 %85, !dbg !72
  store double %82, double* %86, align 8, !dbg !73
  %87 = add i64 %62, 1, !dbg !74
  br label %61, !dbg !75

88:                                               ; preds = %61
  %89 = add i64 %57, 1, !dbg !76
  br label %56, !dbg !77

90:                                               ; preds = %56
  %91 = add i64 %36, 1, !dbg !78
  br label %35, !dbg !79

92:                                               ; preds = %35
  ret void, !dbg !80
}

define void @_mlir_ciface_kernel_syrk(i32 %0, i32 %1, double %2, double %3, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, { double*, double*, i64, [2 x i64], [2 x i64] }* %5) !dbg !81 {
  %7 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, align 8, !dbg !82
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 0, !dbg !84
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 1, !dbg !85
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 2, !dbg !86
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 3, 0, !dbg !87
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 3, 1, !dbg !88
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 4, 0, !dbg !89
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, 4, 1, !dbg !90
  %15 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !91
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 0, !dbg !92
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !93
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 2, !dbg !94
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 3, 0, !dbg !95
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 3, 1, !dbg !96
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 4, 0, !dbg !97
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 4, 1, !dbg !98
  call void @renamed_kernel_syrk(i32 %0, i32 %1, double %2, double %3, double* %8, double* %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, double* %16, double* %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22), !dbg !99
  ret void, !dbg !100
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_syrk", linkageName: "kernel_syrk", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!27 = !DILocation(line: 30, column: 11, scope: !8)
!28 = !DILocation(line: 32, column: 5, scope: !8)
!29 = !DILocation(line: 34, column: 11, scope: !8)
!30 = !DILocation(line: 35, column: 5, scope: !8)
!31 = !DILocation(line: 37, column: 11, scope: !8)
!32 = !DILocation(line: 39, column: 11, scope: !8)
!33 = !DILocation(line: 40, column: 11, scope: !8)
!34 = !DILocation(line: 41, column: 11, scope: !8)
!35 = !DILocation(line: 42, column: 11, scope: !8)
!36 = !DILocation(line: 43, column: 11, scope: !8)
!37 = !DILocation(line: 44, column: 11, scope: !8)
!38 = !DILocation(line: 46, column: 11, scope: !8)
!39 = !DILocation(line: 47, column: 11, scope: !8)
!40 = !DILocation(line: 48, column: 11, scope: !8)
!41 = !DILocation(line: 49, column: 5, scope: !8)
!42 = !DILocation(line: 50, column: 11, scope: !8)
!43 = !DILocation(line: 51, column: 5, scope: !8)
!44 = !DILocation(line: 55, column: 5, scope: !8)
!45 = !DILocation(line: 57, column: 11, scope: !8)
!46 = !DILocation(line: 58, column: 5, scope: !8)
!47 = !DILocation(line: 62, column: 11, scope: !8)
!48 = !DILocation(line: 64, column: 5, scope: !8)
!49 = !DILocation(line: 66, column: 11, scope: !8)
!50 = !DILocation(line: 67, column: 5, scope: !8)
!51 = !DILocation(line: 69, column: 11, scope: !8)
!52 = !DILocation(line: 71, column: 11, scope: !8)
!53 = !DILocation(line: 72, column: 11, scope: !8)
!54 = !DILocation(line: 73, column: 11, scope: !8)
!55 = !DILocation(line: 74, column: 11, scope: !8)
!56 = !DILocation(line: 75, column: 11, scope: !8)
!57 = !DILocation(line: 76, column: 11, scope: !8)
!58 = !DILocation(line: 78, column: 11, scope: !8)
!59 = !DILocation(line: 79, column: 11, scope: !8)
!60 = !DILocation(line: 80, column: 11, scope: !8)
!61 = !DILocation(line: 81, column: 11, scope: !8)
!62 = !DILocation(line: 82, column: 11, scope: !8)
!63 = !DILocation(line: 83, column: 11, scope: !8)
!64 = !DILocation(line: 85, column: 11, scope: !8)
!65 = !DILocation(line: 86, column: 11, scope: !8)
!66 = !DILocation(line: 87, column: 11, scope: !8)
!67 = !DILocation(line: 88, column: 11, scope: !8)
!68 = !DILocation(line: 89, column: 11, scope: !8)
!69 = !DILocation(line: 90, column: 11, scope: !8)
!70 = !DILocation(line: 92, column: 11, scope: !8)
!71 = !DILocation(line: 93, column: 11, scope: !8)
!72 = !DILocation(line: 94, column: 11, scope: !8)
!73 = !DILocation(line: 95, column: 5, scope: !8)
!74 = !DILocation(line: 96, column: 11, scope: !8)
!75 = !DILocation(line: 97, column: 5, scope: !8)
!76 = !DILocation(line: 99, column: 11, scope: !8)
!77 = !DILocation(line: 100, column: 5, scope: !8)
!78 = !DILocation(line: 102, column: 11, scope: !8)
!79 = !DILocation(line: 103, column: 5, scope: !8)
!80 = !DILocation(line: 105, column: 5, scope: !8)
!81 = distinct !DISubprogram(name: "_mlir_ciface_kernel_syrk", linkageName: "_mlir_ciface_kernel_syrk", scope: null, file: !4, line: 107, type: !5, scopeLine: 107, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!82 = !DILocation(line: 108, column: 10, scope: !83)
!83 = !DILexicalBlockFile(scope: !81, file: !4, discriminator: 0)
!84 = !DILocation(line: 109, column: 10, scope: !83)
!85 = !DILocation(line: 110, column: 10, scope: !83)
!86 = !DILocation(line: 111, column: 10, scope: !83)
!87 = !DILocation(line: 112, column: 10, scope: !83)
!88 = !DILocation(line: 113, column: 10, scope: !83)
!89 = !DILocation(line: 114, column: 10, scope: !83)
!90 = !DILocation(line: 115, column: 10, scope: !83)
!91 = !DILocation(line: 116, column: 10, scope: !83)
!92 = !DILocation(line: 117, column: 10, scope: !83)
!93 = !DILocation(line: 118, column: 11, scope: !83)
!94 = !DILocation(line: 119, column: 11, scope: !83)
!95 = !DILocation(line: 120, column: 11, scope: !83)
!96 = !DILocation(line: 121, column: 11, scope: !83)
!97 = !DILocation(line: 122, column: 11, scope: !83)
!98 = !DILocation(line: 123, column: 11, scope: !83)
!99 = !DILocation(line: 124, column: 5, scope: !83)
!100 = !DILocation(line: 125, column: 5, scope: !83)
