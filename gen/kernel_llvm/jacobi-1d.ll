; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @renamed_kernel_jacobi_1d(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11) !dbg !3 {
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0, !dbg !7
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, double* %3, 1, !dbg !9
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 %4, 2, !dbg !10
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 %5, 3, 0, !dbg !11
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 %6, 4, 0, !dbg !12
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %7, 0, !dbg !13
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, double* %8, 1, !dbg !14
  %20 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, i64 %9, 2, !dbg !15
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, i64 %10, 3, 0, !dbg !16
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, i64 %11, 4, 0, !dbg !17
  %23 = sext i32 %1 to i64, !dbg !18
  %24 = sext i32 %1 to i64, !dbg !19
  %25 = sext i32 %0 to i64, !dbg !20
  br label %26, !dbg !21

26:                                               ; preds = %75, %12
  %27 = phi i64 [ %76, %75 ], [ 0, %12 ]
  %28 = icmp slt i64 %27, %25, !dbg !22
  br i1 %28, label %29, label %77, !dbg !23

29:                                               ; preds = %26
  %30 = add i64 %23, -1, !dbg !24
  br label %31, !dbg !25

31:                                               ; preds = %34, %29
  %32 = phi i64 [ %51, %34 ], [ 1, %29 ]
  %33 = icmp slt i64 %32, %30, !dbg !26
  br i1 %33, label %34, label %52, !dbg !27

34:                                               ; preds = %31
  %35 = add i64 %32, -1, !dbg !28
  %36 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 1, !dbg !29
  %37 = getelementptr double, double* %36, i64 %35, !dbg !30
  %38 = load double, double* %37, align 8, !dbg !31
  %39 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 1, !dbg !32
  %40 = getelementptr double, double* %39, i64 %32, !dbg !33
  %41 = load double, double* %40, align 8, !dbg !34
  %42 = fadd double %38, %41, !dbg !35
  %43 = add i64 %32, 1, !dbg !36
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 1, !dbg !37
  %45 = getelementptr double, double* %44, i64 %43, !dbg !38
  %46 = load double, double* %45, align 8, !dbg !39
  %47 = fadd double %42, %46, !dbg !40
  %48 = fmul double 3.333300e-01, %47, !dbg !41
  %49 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 1, !dbg !42
  %50 = getelementptr double, double* %49, i64 %32, !dbg !43
  store double %48, double* %50, align 8, !dbg !44
  %51 = add i64 %32, 1, !dbg !45
  br label %31, !dbg !46

52:                                               ; preds = %31
  %53 = add i64 %24, -1, !dbg !47
  br label %54, !dbg !48

54:                                               ; preds = %57, %52
  %55 = phi i64 [ %74, %57 ], [ 1, %52 ]
  %56 = icmp slt i64 %55, %53, !dbg !49
  br i1 %56, label %57, label %75, !dbg !50

57:                                               ; preds = %54
  %58 = add i64 %55, -1, !dbg !51
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 1, !dbg !52
  %60 = getelementptr double, double* %59, i64 %58, !dbg !53
  %61 = load double, double* %60, align 8, !dbg !54
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 1, !dbg !55
  %63 = getelementptr double, double* %62, i64 %55, !dbg !56
  %64 = load double, double* %63, align 8, !dbg !57
  %65 = fadd double %61, %64, !dbg !58
  %66 = add i64 %55, 1, !dbg !59
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 1, !dbg !60
  %68 = getelementptr double, double* %67, i64 %66, !dbg !61
  %69 = load double, double* %68, align 8, !dbg !62
  %70 = fadd double %65, %69, !dbg !63
  %71 = fmul double 3.333300e-01, %70, !dbg !64
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 1, !dbg !65
  %73 = getelementptr double, double* %72, i64 %55, !dbg !66
  store double %71, double* %73, align 8, !dbg !67
  %74 = add i64 %55, 1, !dbg !68
  br label %54, !dbg !69

75:                                               ; preds = %54
  %76 = add i64 %27, 1, !dbg !70
  br label %26, !dbg !71

77:                                               ; preds = %26
  ret void, !dbg !72
}

define void @_mlir_ciface_kernel_jacobi_1d(i32 %0, i32 %1, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, { double*, double*, i64, [1 x i64], [1 x i64] }* %3) !dbg !73 {
  %5 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !74
  %6 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 0, !dbg !76
  %7 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 1, !dbg !77
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 2, !dbg !78
  %9 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 3, 0, !dbg !79
  %10 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 4, 0, !dbg !80
  %11 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, align 8, !dbg !81
  %12 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 0, !dbg !82
  %13 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1, !dbg !83
  %14 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 2, !dbg !84
  %15 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 3, 0, !dbg !85
  %16 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 4, 0, !dbg !86
  call void @renamed_kernel_jacobi_1d(i32 %0, i32 %1, double* %6, double* %7, i64 %8, i64 %9, i64 %10, double* %12, double* %13, i64 %14, i64 %15, i64 %16), !dbg !87
  ret void, !dbg !88
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_jacobi_1d", linkageName: "kernel_jacobi_1d", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!21 = !DILocation(line: 21, column: 5, scope: !8)
!22 = !DILocation(line: 23, column: 11, scope: !8)
!23 = !DILocation(line: 24, column: 5, scope: !8)
!24 = !DILocation(line: 28, column: 11, scope: !8)
!25 = !DILocation(line: 30, column: 5, scope: !8)
!26 = !DILocation(line: 32, column: 11, scope: !8)
!27 = !DILocation(line: 33, column: 5, scope: !8)
!28 = !DILocation(line: 36, column: 11, scope: !8)
!29 = !DILocation(line: 37, column: 11, scope: !8)
!30 = !DILocation(line: 38, column: 11, scope: !8)
!31 = !DILocation(line: 39, column: 11, scope: !8)
!32 = !DILocation(line: 40, column: 11, scope: !8)
!33 = !DILocation(line: 41, column: 11, scope: !8)
!34 = !DILocation(line: 42, column: 11, scope: !8)
!35 = !DILocation(line: 43, column: 11, scope: !8)
!36 = !DILocation(line: 45, column: 11, scope: !8)
!37 = !DILocation(line: 46, column: 11, scope: !8)
!38 = !DILocation(line: 47, column: 11, scope: !8)
!39 = !DILocation(line: 48, column: 11, scope: !8)
!40 = !DILocation(line: 49, column: 11, scope: !8)
!41 = !DILocation(line: 50, column: 11, scope: !8)
!42 = !DILocation(line: 51, column: 11, scope: !8)
!43 = !DILocation(line: 52, column: 11, scope: !8)
!44 = !DILocation(line: 53, column: 5, scope: !8)
!45 = !DILocation(line: 54, column: 11, scope: !8)
!46 = !DILocation(line: 55, column: 5, scope: !8)
!47 = !DILocation(line: 59, column: 11, scope: !8)
!48 = !DILocation(line: 61, column: 5, scope: !8)
!49 = !DILocation(line: 63, column: 11, scope: !8)
!50 = !DILocation(line: 64, column: 5, scope: !8)
!51 = !DILocation(line: 67, column: 11, scope: !8)
!52 = !DILocation(line: 68, column: 11, scope: !8)
!53 = !DILocation(line: 69, column: 11, scope: !8)
!54 = !DILocation(line: 70, column: 11, scope: !8)
!55 = !DILocation(line: 71, column: 11, scope: !8)
!56 = !DILocation(line: 72, column: 11, scope: !8)
!57 = !DILocation(line: 73, column: 11, scope: !8)
!58 = !DILocation(line: 74, column: 11, scope: !8)
!59 = !DILocation(line: 76, column: 11, scope: !8)
!60 = !DILocation(line: 77, column: 11, scope: !8)
!61 = !DILocation(line: 78, column: 11, scope: !8)
!62 = !DILocation(line: 79, column: 11, scope: !8)
!63 = !DILocation(line: 80, column: 11, scope: !8)
!64 = !DILocation(line: 81, column: 11, scope: !8)
!65 = !DILocation(line: 82, column: 11, scope: !8)
!66 = !DILocation(line: 83, column: 11, scope: !8)
!67 = !DILocation(line: 84, column: 5, scope: !8)
!68 = !DILocation(line: 85, column: 11, scope: !8)
!69 = !DILocation(line: 86, column: 5, scope: !8)
!70 = !DILocation(line: 88, column: 11, scope: !8)
!71 = !DILocation(line: 89, column: 5, scope: !8)
!72 = !DILocation(line: 91, column: 5, scope: !8)
!73 = distinct !DISubprogram(name: "_mlir_ciface_kernel_jacobi_1d", linkageName: "_mlir_ciface_kernel_jacobi_1d", scope: null, file: !4, line: 93, type: !5, scopeLine: 93, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!74 = !DILocation(line: 94, column: 10, scope: !75)
!75 = !DILexicalBlockFile(scope: !73, file: !4, discriminator: 0)
!76 = !DILocation(line: 95, column: 10, scope: !75)
!77 = !DILocation(line: 96, column: 10, scope: !75)
!78 = !DILocation(line: 97, column: 10, scope: !75)
!79 = !DILocation(line: 98, column: 10, scope: !75)
!80 = !DILocation(line: 99, column: 10, scope: !75)
!81 = !DILocation(line: 100, column: 10, scope: !75)
!82 = !DILocation(line: 101, column: 10, scope: !75)
!83 = !DILocation(line: 102, column: 10, scope: !75)
!84 = !DILocation(line: 103, column: 10, scope: !75)
!85 = !DILocation(line: 104, column: 11, scope: !75)
!86 = !DILocation(line: 105, column: 11, scope: !75)
!87 = !DILocation(line: 106, column: 5, scope: !75)
!88 = !DILocation(line: 107, column: 5, scope: !75)
