; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@str7 = internal constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00"
@str6 = internal constant [17 x i8] c"\0Aend   dump: %s\0A\00"
@str5 = internal constant [8 x i8] c"%0.2lf \00"
@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [2 x i8] c"y\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @kernel_atax(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23) !dbg !3 {
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !7
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, double* %3, 1, !dbg !9
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %4, 2, !dbg !10
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %5, 3, 0, !dbg !11
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %7, 4, 0, !dbg !12
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %6, 3, 1, !dbg !13
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %8, 4, 1, !dbg !14
  %32 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { double*, double*, i64, [2 x i64], [2 x i64] } %31, { double*, double*, i64, [2 x i64], [2 x i64] }* %32, align 8, !dbg !16
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0, !dbg !17
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, double* %10, 1, !dbg !18
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %11, 2, !dbg !19
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %12, 3, 0, !dbg !20
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 %13, 4, 0, !dbg !21
  %38 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !22
  store { double*, double*, i64, [1 x i64], [1 x i64] } %37, { double*, double*, i64, [1 x i64], [1 x i64] }* %38, align 8, !dbg !23
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %14, 0, !dbg !24
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, double* %15, 1, !dbg !25
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %16, 2, !dbg !26
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, i64 %17, 3, 0, !dbg !27
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %18, 4, 0, !dbg !28
  %44 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !29
  store { double*, double*, i64, [1 x i64], [1 x i64] } %43, { double*, double*, i64, [1 x i64], [1 x i64] }* %44, align 8, !dbg !30
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %19, 0, !dbg !31
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, double* %20, 1, !dbg !32
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, i64 %21, 2, !dbg !33
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, i64 %22, 3, 0, !dbg !34
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, i64 %23, 4, 0, !dbg !35
  %50 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !36
  store { double*, double*, i64, [1 x i64], [1 x i64] } %49, { double*, double*, i64, [1 x i64], [1 x i64] }* %50, align 8, !dbg !37
  call void @__program_kernel_atax(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %32, { double*, double*, i64, [1 x i64], [1 x i64] }* %38, { double*, double*, i64, [1 x i64], [1 x i64] }* %44, { double*, double*, i64, [1 x i64], [1 x i64] }* %50), !dbg !38
  ret void, !dbg !39
}

declare void @__program_kernel_atax(i32, i32, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [1 x i64], [1 x i64] }*, { double*, double*, i64, [1 x i64], [1 x i64] }*, { double*, double*, i64, [1 x i64], [1 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !40 {
  %3 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 3990000) to i64)), !dbg !41
  %4 = bitcast i8* %3 to double*, !dbg !43
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0, !dbg !44
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1, !dbg !45
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2, !dbg !46
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 1900, 3, 0, !dbg !47
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 2100, 3, 1, !dbg !48
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 2100, 4, 0, !dbg !49
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1, !dbg !50
  %12 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 2100) to i64)), !dbg !51
  %13 = bitcast i8* %12 to double*, !dbg !52
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0, !dbg !53
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, double* %13, 1, !dbg !54
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 0, 2, !dbg !55
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 2100, 3, 0, !dbg !56
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, i64 1, 4, 0, !dbg !57
  %19 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 2100) to i64)), !dbg !58
  %20 = bitcast i8* %19 to double*, !dbg !59
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %20, 0, !dbg !60
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, double* %20, 1, !dbg !61
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, i64 0, 2, !dbg !62
  %24 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %23, i64 2100, 3, 0, !dbg !63
  %25 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %24, i64 1, 4, 0, !dbg !64
  %26 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1900) to i64)), !dbg !65
  %27 = bitcast i8* %26 to double*, !dbg !66
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %27, 0, !dbg !67
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, double* %27, 1, !dbg !68
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 0, 2, !dbg !69
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 1900, 3, 0, !dbg !70
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 1, 4, 0, !dbg !71
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !72
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !73
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !74
  %36 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !75
  %37 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !76
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !77
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !78
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0, !dbg !79
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1, !dbg !80
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2, !dbg !81
  %43 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0, !dbg !82
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0, !dbg !83
  call void @init_array(i32 1900, i32 2100, double* %33, double* %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, double* %40, double* %41, i64 %42, i64 %43, i64 %44), !dbg !84
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !85
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !86
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !87
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !88
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !89
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !90
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !91
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0, !dbg !92
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1, !dbg !93
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2, !dbg !94
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0, !dbg !95
  %56 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0, !dbg !96
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0, !dbg !97
  %58 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1, !dbg !98
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2, !dbg !99
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0, !dbg !100
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0, !dbg !101
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0, !dbg !102
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 1, !dbg !103
  %64 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 2, !dbg !104
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 3, 0, !dbg !105
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 4, 0, !dbg !106
  call void @kernel_atax(i32 1900, i32 2100, double* %45, double* %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, double* %52, double* %53, i64 %54, i64 %55, i64 %56, double* %57, double* %58, i64 %59, i64 %60, i64 %61, double* %62, double* %63, i64 %64, i64 %65, i64 %66), !dbg !107
  %67 = icmp sgt i32 %0, 42, !dbg !108
  br i1 %67, label %68, label %74, !dbg !109

68:                                               ; preds = %2
  %69 = getelementptr i8*, i8** %1, i64 0, !dbg !110
  %70 = load i8*, i8** %69, align 8, !dbg !111
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !112
  %72 = trunc i32 %71 to i1, !dbg !113
  %73 = xor i1 %72, true, !dbg !114
  br label %75, !dbg !115

74:                                               ; preds = %2
  br label %75, !dbg !116

75:                                               ; preds = %68, %74
  %76 = phi i1 [ false, %74 ], [ %73, %68 ]
  br label %77, !dbg !117

77:                                               ; preds = %75
  br i1 %76, label %78, label %84, !dbg !118

78:                                               ; preds = %77
  %79 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0, !dbg !119
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1, !dbg !120
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2, !dbg !121
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0, !dbg !122
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0, !dbg !123
  call void @print_array(i32 2100, double* %79, double* %80, i64 %81, i64 %82, i64 %83), !dbg !124
  br label %84, !dbg !125

84:                                               ; preds = %78, %77
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !126
  %86 = bitcast double* %85 to i8*, !dbg !127
  call void @free(i8* %86), !dbg !128
  %87 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0, !dbg !129
  %88 = bitcast double* %87 to i8*, !dbg !130
  call void @free(i8* %88), !dbg !131
  %89 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0, !dbg !132
  %90 = bitcast double* %89 to i8*, !dbg !133
  call void @free(i8* %90), !dbg !134
  %91 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0, !dbg !135
  %92 = bitcast double* %91 to i8*, !dbg !136
  call void @free(i8* %92), !dbg !137
  ret i32 0, !dbg !138
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !139 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !140
  ret i32 %3, !dbg !142
}

define internal void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13) !dbg !143 {
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !144
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, double* %3, 1, !dbg !146
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, i64 %4, 2, !dbg !147
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, i64 %5, 3, 0, !dbg !148
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 %7, 4, 0, !dbg !149
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 %6, 3, 1, !dbg !150
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %8, 4, 1, !dbg !151
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0, !dbg !152
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, double* %10, 1, !dbg !153
  %24 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %23, i64 %11, 2, !dbg !154
  %25 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %24, i64 %12, 3, 0, !dbg !155
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, i64 %13, 4, 0, !dbg !156
  %27 = sitofp i32 %1 to double, !dbg !157
  %28 = sext i32 %1 to i64, !dbg !158
  br label %29, !dbg !159

29:                                               ; preds = %32, %14
  %30 = phi i64 [ %39, %32 ], [ 0, %14 ]
  %31 = icmp slt i64 %30, %28, !dbg !160
  br i1 %31, label %32, label %40, !dbg !161

32:                                               ; preds = %29
  %33 = trunc i64 %30 to i32, !dbg !162
  %34 = sitofp i32 %33 to double, !dbg !163
  %35 = fdiv double %34, %27, !dbg !164
  %36 = fadd double 1.000000e+00, %35, !dbg !165
  %37 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, 1, !dbg !166
  %38 = getelementptr double, double* %37, i64 %30, !dbg !167
  store double %36, double* %38, align 8, !dbg !168
  %39 = add i64 %30, 1, !dbg !169
  br label %29, !dbg !170

40:                                               ; preds = %29
  %41 = sext i32 %0 to i64, !dbg !171
  br label %42, !dbg !172

42:                                               ; preds = %64, %40
  %43 = phi i64 [ %65, %64 ], [ 0, %40 ]
  %44 = icmp slt i64 %43, %41, !dbg !173
  br i1 %44, label %45, label %66, !dbg !174

45:                                               ; preds = %42
  %46 = trunc i64 %43 to i32, !dbg !175
  %47 = sext i32 %1 to i64, !dbg !176
  br label %48, !dbg !177

48:                                               ; preds = %51, %45
  %49 = phi i64 [ %63, %51 ], [ 0, %45 ]
  %50 = icmp slt i64 %49, %47, !dbg !178
  br i1 %50, label %51, label %64, !dbg !179

51:                                               ; preds = %48
  %52 = trunc i64 %49 to i32, !dbg !180
  %53 = add i32 %46, %52, !dbg !181
  %54 = srem i32 %53, %1, !dbg !182
  %55 = sitofp i32 %54 to double, !dbg !183
  %56 = mul i32 %0, 5, !dbg !184
  %57 = sitofp i32 %56 to double, !dbg !185
  %58 = fdiv double %55, %57, !dbg !186
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 1, !dbg !187
  %60 = mul i64 %43, 2100, !dbg !188
  %61 = add i64 %60, %49, !dbg !189
  %62 = getelementptr double, double* %59, i64 %61, !dbg !190
  store double %58, double* %62, align 8, !dbg !191
  %63 = add i64 %49, 1, !dbg !192
  br label %48, !dbg !193

64:                                               ; preds = %48
  %65 = add i64 %43, 1, !dbg !194
  br label %42, !dbg !195

66:                                               ; preds = %42
  ret void, !dbg !196
}

define void @_mlir_ciface_init_array(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, { double*, double*, i64, [1 x i64], [1 x i64] }* %3) !dbg !197 {
  %5 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, align 8, !dbg !198
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 0, !dbg !200
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 1, !dbg !201
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 2, !dbg !202
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 3, 0, !dbg !203
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 3, 1, !dbg !204
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 4, 0, !dbg !205
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, 4, 1, !dbg !206
  %13 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, align 8, !dbg !207
  %14 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 0, !dbg !208
  %15 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 1, !dbg !209
  %16 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 2, !dbg !210
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 3, 0, !dbg !211
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 4, 0, !dbg !212
  call void @init_array(i32 %0, i32 %1, double* %6, double* %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, double* %14, double* %15, i64 %16, i64 %17, i64 %18), !dbg !213
  ret void, !dbg !214
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5) !dbg !215 {
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0, !dbg !216
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, double* %2, 1, !dbg !218
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 %3, 2, !dbg !219
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, i64 %4, 3, 0, !dbg !220
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, i64 %5, 4, 0, !dbg !221
  %12 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !222
  %13 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !223
  %14 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !224
  %15 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !225
  %16 = sext i32 %0 to i64, !dbg !226
  br label %17, !dbg !227

17:                                               ; preds = %27, %6
  %18 = phi i64 [ %33, %27 ], [ 0, %6 ]
  %19 = icmp slt i64 %18, %16, !dbg !228
  br i1 %19, label %20, label %34, !dbg !229

20:                                               ; preds = %17
  %21 = trunc i64 %18 to i32, !dbg !230
  %22 = srem i32 %21, 20, !dbg !231
  %23 = icmp eq i32 %22, 0, !dbg !232
  br i1 %23, label %24, label %27, !dbg !233

24:                                               ; preds = %20
  %25 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !234
  %26 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !235
  br label %27, !dbg !236

27:                                               ; preds = %24, %20
  %28 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !237
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1, !dbg !238
  %30 = getelementptr double, double* %29, i64 %18, !dbg !239
  %31 = load double, double* %30, align 8, !dbg !240
  %32 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %31), !dbg !241
  %33 = add i64 %18, 1, !dbg !242
  br label %17, !dbg !243

34:                                               ; preds = %17
  %35 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !244
  %36 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !245
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !246
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !247
  ret void, !dbg !248
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [1 x i64], [1 x i64] }* %1) !dbg !249 {
  %3 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !250
  %4 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 0, !dbg !252
  %5 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 1, !dbg !253
  %6 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 2, !dbg !254
  %7 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 3, 0, !dbg !255
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 4, 0, !dbg !256
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8), !dbg !257
  ret void, !dbg !258
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_atax", linkageName: "kernel_atax", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "<stdin>", directory: "/home/xdb/bachelor-thesis/workspace/mlir-dace/.idea/PolyBenchSDIR/")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 6, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 7, column: 10, scope: !8)
!10 = !DILocation(line: 8, column: 10, scope: !8)
!11 = !DILocation(line: 9, column: 10, scope: !8)
!12 = !DILocation(line: 10, column: 10, scope: !8)
!13 = !DILocation(line: 11, column: 10, scope: !8)
!14 = !DILocation(line: 12, column: 10, scope: !8)
!15 = !DILocation(line: 14, column: 10, scope: !8)
!16 = !DILocation(line: 15, column: 5, scope: !8)
!17 = !DILocation(line: 17, column: 11, scope: !8)
!18 = !DILocation(line: 18, column: 11, scope: !8)
!19 = !DILocation(line: 19, column: 11, scope: !8)
!20 = !DILocation(line: 20, column: 11, scope: !8)
!21 = !DILocation(line: 21, column: 11, scope: !8)
!22 = !DILocation(line: 23, column: 11, scope: !8)
!23 = !DILocation(line: 24, column: 5, scope: !8)
!24 = !DILocation(line: 26, column: 11, scope: !8)
!25 = !DILocation(line: 27, column: 11, scope: !8)
!26 = !DILocation(line: 28, column: 11, scope: !8)
!27 = !DILocation(line: 29, column: 11, scope: !8)
!28 = !DILocation(line: 30, column: 11, scope: !8)
!29 = !DILocation(line: 32, column: 11, scope: !8)
!30 = !DILocation(line: 33, column: 5, scope: !8)
!31 = !DILocation(line: 35, column: 11, scope: !8)
!32 = !DILocation(line: 36, column: 11, scope: !8)
!33 = !DILocation(line: 37, column: 11, scope: !8)
!34 = !DILocation(line: 38, column: 11, scope: !8)
!35 = !DILocation(line: 39, column: 11, scope: !8)
!36 = !DILocation(line: 41, column: 11, scope: !8)
!37 = !DILocation(line: 42, column: 5, scope: !8)
!38 = !DILocation(line: 43, column: 5, scope: !8)
!39 = !DILocation(line: 44, column: 5, scope: !8)
!40 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 58, type: !5, scopeLine: 58, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!41 = !DILocation(line: 73, column: 11, scope: !42)
!42 = !DILexicalBlockFile(scope: !40, file: !4, discriminator: 0)
!43 = !DILocation(line: 74, column: 11, scope: !42)
!44 = !DILocation(line: 76, column: 11, scope: !42)
!45 = !DILocation(line: 77, column: 11, scope: !42)
!46 = !DILocation(line: 79, column: 11, scope: !42)
!47 = !DILocation(line: 80, column: 11, scope: !42)
!48 = !DILocation(line: 81, column: 11, scope: !42)
!49 = !DILocation(line: 82, column: 11, scope: !42)
!50 = !DILocation(line: 83, column: 11, scope: !42)
!51 = !DILocation(line: 89, column: 11, scope: !42)
!52 = !DILocation(line: 90, column: 11, scope: !42)
!53 = !DILocation(line: 92, column: 11, scope: !42)
!54 = !DILocation(line: 93, column: 11, scope: !42)
!55 = !DILocation(line: 95, column: 11, scope: !42)
!56 = !DILocation(line: 96, column: 11, scope: !42)
!57 = !DILocation(line: 97, column: 11, scope: !42)
!58 = !DILocation(line: 103, column: 11, scope: !42)
!59 = !DILocation(line: 104, column: 11, scope: !42)
!60 = !DILocation(line: 106, column: 11, scope: !42)
!61 = !DILocation(line: 107, column: 11, scope: !42)
!62 = !DILocation(line: 109, column: 11, scope: !42)
!63 = !DILocation(line: 110, column: 11, scope: !42)
!64 = !DILocation(line: 111, column: 11, scope: !42)
!65 = !DILocation(line: 117, column: 11, scope: !42)
!66 = !DILocation(line: 118, column: 11, scope: !42)
!67 = !DILocation(line: 120, column: 11, scope: !42)
!68 = !DILocation(line: 121, column: 11, scope: !42)
!69 = !DILocation(line: 123, column: 11, scope: !42)
!70 = !DILocation(line: 124, column: 11, scope: !42)
!71 = !DILocation(line: 125, column: 11, scope: !42)
!72 = !DILocation(line: 126, column: 11, scope: !42)
!73 = !DILocation(line: 127, column: 11, scope: !42)
!74 = !DILocation(line: 128, column: 11, scope: !42)
!75 = !DILocation(line: 129, column: 11, scope: !42)
!76 = !DILocation(line: 130, column: 11, scope: !42)
!77 = !DILocation(line: 131, column: 11, scope: !42)
!78 = !DILocation(line: 132, column: 11, scope: !42)
!79 = !DILocation(line: 133, column: 11, scope: !42)
!80 = !DILocation(line: 134, column: 11, scope: !42)
!81 = !DILocation(line: 135, column: 11, scope: !42)
!82 = !DILocation(line: 136, column: 11, scope: !42)
!83 = !DILocation(line: 137, column: 11, scope: !42)
!84 = !DILocation(line: 138, column: 5, scope: !42)
!85 = !DILocation(line: 139, column: 11, scope: !42)
!86 = !DILocation(line: 140, column: 11, scope: !42)
!87 = !DILocation(line: 141, column: 11, scope: !42)
!88 = !DILocation(line: 142, column: 11, scope: !42)
!89 = !DILocation(line: 143, column: 11, scope: !42)
!90 = !DILocation(line: 144, column: 11, scope: !42)
!91 = !DILocation(line: 145, column: 11, scope: !42)
!92 = !DILocation(line: 146, column: 11, scope: !42)
!93 = !DILocation(line: 147, column: 11, scope: !42)
!94 = !DILocation(line: 148, column: 11, scope: !42)
!95 = !DILocation(line: 149, column: 11, scope: !42)
!96 = !DILocation(line: 150, column: 11, scope: !42)
!97 = !DILocation(line: 151, column: 11, scope: !42)
!98 = !DILocation(line: 152, column: 11, scope: !42)
!99 = !DILocation(line: 153, column: 11, scope: !42)
!100 = !DILocation(line: 154, column: 11, scope: !42)
!101 = !DILocation(line: 155, column: 11, scope: !42)
!102 = !DILocation(line: 156, column: 11, scope: !42)
!103 = !DILocation(line: 157, column: 11, scope: !42)
!104 = !DILocation(line: 158, column: 11, scope: !42)
!105 = !DILocation(line: 159, column: 11, scope: !42)
!106 = !DILocation(line: 160, column: 12, scope: !42)
!107 = !DILocation(line: 161, column: 5, scope: !42)
!108 = !DILocation(line: 162, column: 12, scope: !42)
!109 = !DILocation(line: 163, column: 5, scope: !42)
!110 = !DILocation(line: 165, column: 12, scope: !42)
!111 = !DILocation(line: 166, column: 12, scope: !42)
!112 = !DILocation(line: 169, column: 12, scope: !42)
!113 = !DILocation(line: 170, column: 12, scope: !42)
!114 = !DILocation(line: 171, column: 12, scope: !42)
!115 = !DILocation(line: 172, column: 5, scope: !42)
!116 = !DILocation(line: 174, column: 5, scope: !42)
!117 = !DILocation(line: 176, column: 5, scope: !42)
!118 = !DILocation(line: 178, column: 5, scope: !42)
!119 = !DILocation(line: 180, column: 12, scope: !42)
!120 = !DILocation(line: 181, column: 12, scope: !42)
!121 = !DILocation(line: 182, column: 12, scope: !42)
!122 = !DILocation(line: 183, column: 12, scope: !42)
!123 = !DILocation(line: 184, column: 12, scope: !42)
!124 = !DILocation(line: 185, column: 5, scope: !42)
!125 = !DILocation(line: 186, column: 5, scope: !42)
!126 = !DILocation(line: 188, column: 12, scope: !42)
!127 = !DILocation(line: 189, column: 12, scope: !42)
!128 = !DILocation(line: 190, column: 5, scope: !42)
!129 = !DILocation(line: 191, column: 12, scope: !42)
!130 = !DILocation(line: 192, column: 12, scope: !42)
!131 = !DILocation(line: 193, column: 5, scope: !42)
!132 = !DILocation(line: 194, column: 12, scope: !42)
!133 = !DILocation(line: 195, column: 12, scope: !42)
!134 = !DILocation(line: 196, column: 5, scope: !42)
!135 = !DILocation(line: 197, column: 12, scope: !42)
!136 = !DILocation(line: 198, column: 12, scope: !42)
!137 = !DILocation(line: 199, column: 5, scope: !42)
!138 = !DILocation(line: 200, column: 5, scope: !42)
!139 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 202, type: !5, scopeLine: 202, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!140 = !DILocation(line: 203, column: 10, scope: !141)
!141 = !DILexicalBlockFile(scope: !139, file: !4, discriminator: 0)
!142 = !DILocation(line: 204, column: 5, scope: !141)
!143 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 206, type: !5, scopeLine: 206, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!144 = !DILocation(line: 208, column: 10, scope: !145)
!145 = !DILexicalBlockFile(scope: !143, file: !4, discriminator: 0)
!146 = !DILocation(line: 209, column: 10, scope: !145)
!147 = !DILocation(line: 210, column: 10, scope: !145)
!148 = !DILocation(line: 211, column: 10, scope: !145)
!149 = !DILocation(line: 212, column: 10, scope: !145)
!150 = !DILocation(line: 213, column: 10, scope: !145)
!151 = !DILocation(line: 214, column: 10, scope: !145)
!152 = !DILocation(line: 216, column: 10, scope: !145)
!153 = !DILocation(line: 217, column: 11, scope: !145)
!154 = !DILocation(line: 218, column: 11, scope: !145)
!155 = !DILocation(line: 219, column: 11, scope: !145)
!156 = !DILocation(line: 220, column: 11, scope: !145)
!157 = !DILocation(line: 225, column: 11, scope: !145)
!158 = !DILocation(line: 226, column: 11, scope: !145)
!159 = !DILocation(line: 227, column: 5, scope: !145)
!160 = !DILocation(line: 229, column: 11, scope: !145)
!161 = !DILocation(line: 230, column: 5, scope: !145)
!162 = !DILocation(line: 232, column: 11, scope: !145)
!163 = !DILocation(line: 233, column: 11, scope: !145)
!164 = !DILocation(line: 234, column: 11, scope: !145)
!165 = !DILocation(line: 235, column: 11, scope: !145)
!166 = !DILocation(line: 236, column: 11, scope: !145)
!167 = !DILocation(line: 237, column: 11, scope: !145)
!168 = !DILocation(line: 238, column: 5, scope: !145)
!169 = !DILocation(line: 239, column: 11, scope: !145)
!170 = !DILocation(line: 240, column: 5, scope: !145)
!171 = !DILocation(line: 242, column: 11, scope: !145)
!172 = !DILocation(line: 243, column: 5, scope: !145)
!173 = !DILocation(line: 245, column: 11, scope: !145)
!174 = !DILocation(line: 246, column: 5, scope: !145)
!175 = !DILocation(line: 248, column: 11, scope: !145)
!176 = !DILocation(line: 249, column: 11, scope: !145)
!177 = !DILocation(line: 250, column: 5, scope: !145)
!178 = !DILocation(line: 252, column: 11, scope: !145)
!179 = !DILocation(line: 253, column: 5, scope: !145)
!180 = !DILocation(line: 255, column: 11, scope: !145)
!181 = !DILocation(line: 256, column: 11, scope: !145)
!182 = !DILocation(line: 257, column: 11, scope: !145)
!183 = !DILocation(line: 258, column: 11, scope: !145)
!184 = !DILocation(line: 259, column: 11, scope: !145)
!185 = !DILocation(line: 260, column: 11, scope: !145)
!186 = !DILocation(line: 261, column: 11, scope: !145)
!187 = !DILocation(line: 262, column: 11, scope: !145)
!188 = !DILocation(line: 264, column: 11, scope: !145)
!189 = !DILocation(line: 265, column: 11, scope: !145)
!190 = !DILocation(line: 266, column: 11, scope: !145)
!191 = !DILocation(line: 267, column: 5, scope: !145)
!192 = !DILocation(line: 268, column: 11, scope: !145)
!193 = !DILocation(line: 269, column: 5, scope: !145)
!194 = !DILocation(line: 271, column: 11, scope: !145)
!195 = !DILocation(line: 272, column: 5, scope: !145)
!196 = !DILocation(line: 274, column: 5, scope: !145)
!197 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 276, type: !5, scopeLine: 276, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!198 = !DILocation(line: 277, column: 10, scope: !199)
!199 = !DILexicalBlockFile(scope: !197, file: !4, discriminator: 0)
!200 = !DILocation(line: 278, column: 10, scope: !199)
!201 = !DILocation(line: 279, column: 10, scope: !199)
!202 = !DILocation(line: 280, column: 10, scope: !199)
!203 = !DILocation(line: 281, column: 10, scope: !199)
!204 = !DILocation(line: 282, column: 10, scope: !199)
!205 = !DILocation(line: 283, column: 10, scope: !199)
!206 = !DILocation(line: 284, column: 10, scope: !199)
!207 = !DILocation(line: 285, column: 10, scope: !199)
!208 = !DILocation(line: 286, column: 10, scope: !199)
!209 = !DILocation(line: 287, column: 11, scope: !199)
!210 = !DILocation(line: 288, column: 11, scope: !199)
!211 = !DILocation(line: 289, column: 11, scope: !199)
!212 = !DILocation(line: 290, column: 11, scope: !199)
!213 = !DILocation(line: 291, column: 5, scope: !199)
!214 = !DILocation(line: 292, column: 5, scope: !199)
!215 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 294, type: !5, scopeLine: 294, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!216 = !DILocation(line: 296, column: 10, scope: !217)
!217 = !DILexicalBlockFile(scope: !215, file: !4, discriminator: 0)
!218 = !DILocation(line: 297, column: 10, scope: !217)
!219 = !DILocation(line: 298, column: 10, scope: !217)
!220 = !DILocation(line: 299, column: 10, scope: !217)
!221 = !DILocation(line: 300, column: 10, scope: !217)
!222 = !DILocation(line: 306, column: 11, scope: !217)
!223 = !DILocation(line: 309, column: 11, scope: !217)
!224 = !DILocation(line: 311, column: 11, scope: !217)
!225 = !DILocation(line: 316, column: 11, scope: !217)
!226 = !DILocation(line: 317, column: 11, scope: !217)
!227 = !DILocation(line: 318, column: 5, scope: !217)
!228 = !DILocation(line: 320, column: 11, scope: !217)
!229 = !DILocation(line: 321, column: 5, scope: !217)
!230 = !DILocation(line: 323, column: 11, scope: !217)
!231 = !DILocation(line: 324, column: 11, scope: !217)
!232 = !DILocation(line: 325, column: 11, scope: !217)
!233 = !DILocation(line: 326, column: 5, scope: !217)
!234 = !DILocation(line: 329, column: 11, scope: !217)
!235 = !DILocation(line: 332, column: 11, scope: !217)
!236 = !DILocation(line: 333, column: 5, scope: !217)
!237 = !DILocation(line: 336, column: 11, scope: !217)
!238 = !DILocation(line: 339, column: 11, scope: !217)
!239 = !DILocation(line: 340, column: 11, scope: !217)
!240 = !DILocation(line: 341, column: 11, scope: !217)
!241 = !DILocation(line: 342, column: 11, scope: !217)
!242 = !DILocation(line: 343, column: 11, scope: !217)
!243 = !DILocation(line: 344, column: 5, scope: !217)
!244 = !DILocation(line: 347, column: 11, scope: !217)
!245 = !DILocation(line: 352, column: 11, scope: !217)
!246 = !DILocation(line: 354, column: 11, scope: !217)
!247 = !DILocation(line: 357, column: 11, scope: !217)
!248 = !DILocation(line: 358, column: 5, scope: !217)
!249 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 360, type: !5, scopeLine: 360, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!250 = !DILocation(line: 361, column: 10, scope: !251)
!251 = !DILexicalBlockFile(scope: !249, file: !4, discriminator: 0)
!252 = !DILocation(line: 362, column: 10, scope: !251)
!253 = !DILocation(line: 363, column: 10, scope: !251)
!254 = !DILocation(line: 364, column: 10, scope: !251)
!255 = !DILocation(line: 365, column: 10, scope: !251)
!256 = !DILocation(line: 366, column: 10, scope: !251)
!257 = !DILocation(line: 367, column: 5, scope: !251)
!258 = !DILocation(line: 368, column: 5, scope: !251)
