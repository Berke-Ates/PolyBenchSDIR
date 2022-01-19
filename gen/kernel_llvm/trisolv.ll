; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_trisolv(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17) !dbg !3 {
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !7
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, double* %2, 1, !dbg !9
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %3, 2, !dbg !10
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %4, 3, 0, !dbg !11
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %6, 4, 0, !dbg !12
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %5, 3, 1, !dbg !13
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %7, 4, 1, !dbg !14
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %8, 0, !dbg !15
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, double* %9, 1, !dbg !16
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, i64 %10, 2, !dbg !17
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, i64 %11, 3, 0, !dbg !18
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 %12, 4, 0, !dbg !19
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0, !dbg !20
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, double* %14, 1, !dbg !21
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %15, 2, !dbg !22
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %16, 3, 0, !dbg !23
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %17, 4, 0, !dbg !24
  %36 = sext i32 %0 to i64, !dbg !25
  br label %37, !dbg !26

37:                                               ; preds = %66, %18
  %38 = phi i64 [ %78, %66 ], [ 0, %18 ]
  %39 = icmp slt i64 %38, %36, !dbg !27
  br i1 %39, label %40, label %79, !dbg !28

40:                                               ; preds = %37
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, 1, !dbg !29
  %42 = getelementptr double, double* %41, i64 %38, !dbg !30
  %43 = load double, double* %42, align 8, !dbg !31
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1, !dbg !32
  %45 = getelementptr double, double* %44, i64 %38, !dbg !33
  store double %43, double* %45, align 8, !dbg !34
  br label %46, !dbg !35

46:                                               ; preds = %49, %40
  %47 = phi i64 [ %65, %49 ], [ 0, %40 ]
  %48 = icmp slt i64 %47, %38, !dbg !36
  br i1 %48, label %49, label %66, !dbg !37

49:                                               ; preds = %46
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1, !dbg !38
  %51 = mul i64 %38, 2000, !dbg !39
  %52 = add i64 %51, %47, !dbg !40
  %53 = getelementptr double, double* %50, i64 %52, !dbg !41
  %54 = load double, double* %53, align 8, !dbg !42
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1, !dbg !43
  %56 = getelementptr double, double* %55, i64 %47, !dbg !44
  %57 = load double, double* %56, align 8, !dbg !45
  %58 = fmul double %54, %57, !dbg !46
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1, !dbg !47
  %60 = getelementptr double, double* %59, i64 %38, !dbg !48
  %61 = load double, double* %60, align 8, !dbg !49
  %62 = fsub double %61, %58, !dbg !50
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1, !dbg !51
  %64 = getelementptr double, double* %63, i64 %38, !dbg !52
  store double %62, double* %64, align 8, !dbg !53
  %65 = add i64 %47, 1, !dbg !54
  br label %46, !dbg !55

66:                                               ; preds = %46
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1, !dbg !56
  %68 = getelementptr double, double* %67, i64 %38, !dbg !57
  %69 = load double, double* %68, align 8, !dbg !58
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1, !dbg !59
  %71 = mul i64 %38, 2000, !dbg !60
  %72 = add i64 %71, %38, !dbg !61
  %73 = getelementptr double, double* %70, i64 %72, !dbg !62
  %74 = load double, double* %73, align 8, !dbg !63
  %75 = fdiv double %69, %74, !dbg !64
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1, !dbg !65
  %77 = getelementptr double, double* %76, i64 %38, !dbg !66
  store double %75, double* %77, align 8, !dbg !67
  %78 = add i64 %38, 1, !dbg !68
  br label %37, !dbg !69

79:                                               ; preds = %37
  ret void, !dbg !70
}

define void @_mlir_ciface_kernel_trisolv(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, { double*, double*, i64, [1 x i64], [1 x i64] }* %3) !dbg !71 {
  %5 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !72
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 0, !dbg !74
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 1, !dbg !75
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 2, !dbg !76
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 3, 0, !dbg !77
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 3, 1, !dbg !78
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 4, 0, !dbg !79
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 4, 1, !dbg !80
  %13 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !81
  %14 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 0, !dbg !82
  %15 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 1, !dbg !83
  %16 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 2, !dbg !84
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 3, 0, !dbg !85
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 4, 0, !dbg !86
  %19 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, align 8, !dbg !87
  %20 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 0, !dbg !88
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 1, !dbg !89
  %22 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 2, !dbg !90
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 3, 0, !dbg !91
  %24 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 4, 0, !dbg !92
  call void @renamed_kernel_trisolv(i32 %0, double* %6, double* %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %20, double* %21, i64 %22, i64 %23, i64 %24), !dbg !93
  ret void, !dbg !94
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_trisolv", linkageName: "kernel_trisolv", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!25 = !DILocation(line: 23, column: 11, scope: !8)
!26 = !DILocation(line: 26, column: 5, scope: !8)
!27 = !DILocation(line: 28, column: 11, scope: !8)
!28 = !DILocation(line: 29, column: 5, scope: !8)
!29 = !DILocation(line: 31, column: 11, scope: !8)
!30 = !DILocation(line: 32, column: 11, scope: !8)
!31 = !DILocation(line: 33, column: 11, scope: !8)
!32 = !DILocation(line: 34, column: 11, scope: !8)
!33 = !DILocation(line: 35, column: 11, scope: !8)
!34 = !DILocation(line: 36, column: 5, scope: !8)
!35 = !DILocation(line: 39, column: 5, scope: !8)
!36 = !DILocation(line: 41, column: 11, scope: !8)
!37 = !DILocation(line: 42, column: 5, scope: !8)
!38 = !DILocation(line: 44, column: 11, scope: !8)
!39 = !DILocation(line: 46, column: 11, scope: !8)
!40 = !DILocation(line: 47, column: 11, scope: !8)
!41 = !DILocation(line: 48, column: 11, scope: !8)
!42 = !DILocation(line: 49, column: 11, scope: !8)
!43 = !DILocation(line: 50, column: 11, scope: !8)
!44 = !DILocation(line: 51, column: 11, scope: !8)
!45 = !DILocation(line: 52, column: 11, scope: !8)
!46 = !DILocation(line: 53, column: 11, scope: !8)
!47 = !DILocation(line: 54, column: 11, scope: !8)
!48 = !DILocation(line: 55, column: 11, scope: !8)
!49 = !DILocation(line: 56, column: 11, scope: !8)
!50 = !DILocation(line: 57, column: 11, scope: !8)
!51 = !DILocation(line: 58, column: 11, scope: !8)
!52 = !DILocation(line: 59, column: 11, scope: !8)
!53 = !DILocation(line: 60, column: 5, scope: !8)
!54 = !DILocation(line: 61, column: 11, scope: !8)
!55 = !DILocation(line: 62, column: 5, scope: !8)
!56 = !DILocation(line: 64, column: 11, scope: !8)
!57 = !DILocation(line: 65, column: 11, scope: !8)
!58 = !DILocation(line: 66, column: 11, scope: !8)
!59 = !DILocation(line: 67, column: 11, scope: !8)
!60 = !DILocation(line: 69, column: 11, scope: !8)
!61 = !DILocation(line: 70, column: 11, scope: !8)
!62 = !DILocation(line: 71, column: 11, scope: !8)
!63 = !DILocation(line: 72, column: 11, scope: !8)
!64 = !DILocation(line: 73, column: 11, scope: !8)
!65 = !DILocation(line: 74, column: 11, scope: !8)
!66 = !DILocation(line: 75, column: 11, scope: !8)
!67 = !DILocation(line: 76, column: 5, scope: !8)
!68 = !DILocation(line: 77, column: 11, scope: !8)
!69 = !DILocation(line: 78, column: 5, scope: !8)
!70 = !DILocation(line: 80, column: 5, scope: !8)
!71 = distinct !DISubprogram(name: "_mlir_ciface_kernel_trisolv", linkageName: "_mlir_ciface_kernel_trisolv", scope: null, file: !4, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!72 = !DILocation(line: 83, column: 10, scope: !73)
!73 = !DILexicalBlockFile(scope: !71, file: !4, discriminator: 0)
!74 = !DILocation(line: 84, column: 10, scope: !73)
!75 = !DILocation(line: 85, column: 10, scope: !73)
!76 = !DILocation(line: 86, column: 10, scope: !73)
!77 = !DILocation(line: 87, column: 10, scope: !73)
!78 = !DILocation(line: 88, column: 10, scope: !73)
!79 = !DILocation(line: 89, column: 10, scope: !73)
!80 = !DILocation(line: 90, column: 10, scope: !73)
!81 = !DILocation(line: 91, column: 10, scope: !73)
!82 = !DILocation(line: 92, column: 10, scope: !73)
!83 = !DILocation(line: 93, column: 11, scope: !73)
!84 = !DILocation(line: 94, column: 11, scope: !73)
!85 = !DILocation(line: 95, column: 11, scope: !73)
!86 = !DILocation(line: 96, column: 11, scope: !73)
!87 = !DILocation(line: 97, column: 11, scope: !73)
!88 = !DILocation(line: 98, column: 11, scope: !73)
!89 = !DILocation(line: 99, column: 11, scope: !73)
!90 = !DILocation(line: 100, column: 11, scope: !73)
!91 = !DILocation(line: 101, column: 11, scope: !73)
!92 = !DILocation(line: 102, column: 11, scope: !73)
!93 = !DILocation(line: 103, column: 5, scope: !73)
!94 = !DILocation(line: 104, column: 5, scope: !73)
