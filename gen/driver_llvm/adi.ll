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
@str3 = internal constant [2 x i8] c"u\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @kernel_adi(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, double* %16, double* %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, double* %23, double* %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29) !dbg !3 {
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !7
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, double* %3, 1, !dbg !9
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %4, 2, !dbg !10
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %5, 3, 0, !dbg !11
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %7, 4, 0, !dbg !12
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %6, 3, 1, !dbg !13
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %8, 4, 1, !dbg !14
  %38 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { double*, double*, i64, [2 x i64], [2 x i64] } %37, { double*, double*, i64, [2 x i64], [2 x i64] }* %38, align 8, !dbg !16
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %9, 0, !dbg !17
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, double* %10, 1, !dbg !18
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 %11, 2, !dbg !19
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %12, 3, 0, !dbg !20
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %14, 4, 0, !dbg !21
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %13, 3, 1, !dbg !22
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %15, 4, 1, !dbg !23
  %46 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !24
  store { double*, double*, i64, [2 x i64], [2 x i64] } %45, { double*, double*, i64, [2 x i64], [2 x i64] }* %46, align 8, !dbg !25
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0, !dbg !26
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, double* %17, 1, !dbg !27
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, i64 %18, 2, !dbg !28
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 %19, 3, 0, !dbg !29
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %21, 4, 0, !dbg !30
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %20, 3, 1, !dbg !31
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %22, 4, 1, !dbg !32
  %54 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !33
  store { double*, double*, i64, [2 x i64], [2 x i64] } %53, { double*, double*, i64, [2 x i64], [2 x i64] }* %54, align 8, !dbg !34
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %23, 0, !dbg !35
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, double* %24, 1, !dbg !36
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %25, 2, !dbg !37
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %26, 3, 0, !dbg !38
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 %28, 4, 0, !dbg !39
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, i64 %27, 3, 1, !dbg !40
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %29, 4, 1, !dbg !41
  %62 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !42
  store { double*, double*, i64, [2 x i64], [2 x i64] } %61, { double*, double*, i64, [2 x i64], [2 x i64] }* %62, align 8, !dbg !43
  call void @__program_kernel_adi(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %38, { double*, double*, i64, [2 x i64], [2 x i64] }* %46, { double*, double*, i64, [2 x i64], [2 x i64] }* %54, { double*, double*, i64, [2 x i64], [2 x i64] }* %62), !dbg !44
  ret void, !dbg !45
}

declare void @__program_kernel_adi(i32, i32, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !46 {
  %3 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1000000) to i64)), !dbg !47
  %4 = bitcast i8* %3 to double*, !dbg !49
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0, !dbg !50
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1, !dbg !51
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2, !dbg !52
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 1000, 3, 0, !dbg !53
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 1000, 3, 1, !dbg !54
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 1000, 4, 0, !dbg !55
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1, !dbg !56
  %12 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1000000) to i64)), !dbg !57
  %13 = bitcast i8* %12 to double*, !dbg !58
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %13, 0, !dbg !59
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, double* %13, 1, !dbg !60
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 0, 2, !dbg !61
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, i64 1000, 3, 0, !dbg !62
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, i64 1000, 3, 1, !dbg !63
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 1000, 4, 0, !dbg !64
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 1, 4, 1, !dbg !65
  %21 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1000000) to i64)), !dbg !66
  %22 = bitcast i8* %21 to double*, !dbg !67
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %22, 0, !dbg !68
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, double* %22, 1, !dbg !69
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 0, 2, !dbg !70
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 1000, 3, 0, !dbg !71
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 1000, 3, 1, !dbg !72
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 1000, 4, 0, !dbg !73
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 1, 4, 1, !dbg !74
  %30 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1000000) to i64)), !dbg !75
  %31 = bitcast i8* %30 to double*, !dbg !76
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %31, 0, !dbg !77
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, double* %31, 1, !dbg !78
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 0, 2, !dbg !79
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 1000, 3, 0, !dbg !80
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 1000, 3, 1, !dbg !81
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 1000, 4, 0, !dbg !82
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 1, 4, 1, !dbg !83
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !84
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !85
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !86
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !87
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !88
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !89
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !90
  call void @init_array(i32 1000, double* %39, double* %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45), !dbg !91
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !92
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !93
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !94
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !95
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !96
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !97
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !98
  %53 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0, !dbg !99
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 1, !dbg !100
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 2, !dbg !101
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 0, !dbg !102
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 1, !dbg !103
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 0, !dbg !104
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 1, !dbg !105
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0, !dbg !106
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1, !dbg !107
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2, !dbg !108
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0, !dbg !109
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1, !dbg !110
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0, !dbg !111
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1, !dbg !112
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 0, !dbg !113
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 1, !dbg !114
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 2, !dbg !115
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 3, 0, !dbg !116
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 3, 1, !dbg !117
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 4, 0, !dbg !118
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 4, 1, !dbg !119
  call void @kernel_adi(i32 500, i32 1000, double* %46, double* %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, double* %53, double* %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, double* %60, double* %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, double* %67, double* %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73), !dbg !120
  %74 = icmp sgt i32 %0, 42, !dbg !121
  br i1 %74, label %75, label %81, !dbg !122

75:                                               ; preds = %2
  %76 = getelementptr i8*, i8** %1, i64 0, !dbg !123
  %77 = load i8*, i8** %76, align 8, !dbg !124
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !125
  %79 = trunc i32 %78 to i1, !dbg !126
  %80 = xor i1 %79, true, !dbg !127
  br label %82, !dbg !128

81:                                               ; preds = %2
  br label %82, !dbg !129

82:                                               ; preds = %75, %81
  %83 = phi i1 [ false, %81 ], [ %80, %75 ]
  br label %84, !dbg !130

84:                                               ; preds = %82
  br i1 %83, label %85, label %93, !dbg !131

85:                                               ; preds = %84
  %86 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !132
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !133
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !134
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !135
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !136
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !137
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !138
  call void @print_array(i32 1000, double* %86, double* %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92), !dbg !139
  br label %93, !dbg !140

93:                                               ; preds = %85, %84
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !141
  %95 = bitcast double* %94 to i8*, !dbg !142
  call void @free(i8* %95), !dbg !143
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0, !dbg !144
  %97 = bitcast double* %96 to i8*, !dbg !145
  call void @free(i8* %97), !dbg !146
  %98 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0, !dbg !147
  %99 = bitcast double* %98 to i8*, !dbg !148
  call void @free(i8* %99), !dbg !149
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 0, !dbg !150
  %101 = bitcast double* %100 to i8*, !dbg !151
  call void @free(i8* %101), !dbg !152
  ret i32 0, !dbg !153
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !154 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !155
  ret i32 %3, !dbg !157
}

define internal void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !158 {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !159
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1, !dbg !161
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !162
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !163
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !164
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !165
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !166
  %16 = sext i32 %0 to i64, !dbg !167
  br label %17, !dbg !168

17:                                               ; preds = %38, %8
  %18 = phi i64 [ %39, %38 ], [ 0, %8 ]
  %19 = icmp slt i64 %18, %16, !dbg !169
  br i1 %19, label %20, label %40, !dbg !170

20:                                               ; preds = %17
  %21 = trunc i64 %18 to i32, !dbg !171
  %22 = sext i32 %0 to i64, !dbg !172
  br label %23, !dbg !173

23:                                               ; preds = %26, %20
  %24 = phi i64 [ %37, %26 ], [ 0, %20 ]
  %25 = icmp slt i64 %24, %22, !dbg !174
  br i1 %25, label %26, label %38, !dbg !175

26:                                               ; preds = %23
  %27 = trunc i64 %24 to i32, !dbg !176
  %28 = add i32 %21, %0, !dbg !177
  %29 = sub i32 %28, %27, !dbg !178
  %30 = sitofp i32 %29 to double, !dbg !179
  %31 = sitofp i32 %0 to double, !dbg !180
  %32 = fdiv double %30, %31, !dbg !181
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !182
  %34 = mul i64 %18, 1000, !dbg !183
  %35 = add i64 %34, %24, !dbg !184
  %36 = getelementptr double, double* %33, i64 %35, !dbg !185
  store double %32, double* %36, align 8, !dbg !186
  %37 = add i64 %24, 1, !dbg !187
  br label %23, !dbg !188

38:                                               ; preds = %23
  %39 = add i64 %18, 1, !dbg !189
  br label %17, !dbg !190

40:                                               ; preds = %17
  ret void, !dbg !191
}

define void @_mlir_ciface_init_array(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1) !dbg !192 {
  %3 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !193
  %4 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !195
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !196
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !197
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !198
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !199
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !200
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !201
  call void @init_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !202
  ret void, !dbg !203
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !204 {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !205
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1, !dbg !207
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !208
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !209
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !210
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !211
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !212
  %16 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !213
  %17 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !214
  %18 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !215
  %19 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !216
  %20 = sext i32 %0 to i64, !dbg !217
  br label %21, !dbg !218

21:                                               ; preds = %48, %8
  %22 = phi i64 [ %49, %48 ], [ 0, %8 ]
  %23 = icmp slt i64 %22, %20, !dbg !219
  br i1 %23, label %24, label %50, !dbg !220

24:                                               ; preds = %21
  %25 = trunc i64 %22 to i32, !dbg !221
  %26 = sext i32 %0 to i64, !dbg !222
  br label %27, !dbg !223

27:                                               ; preds = %39, %24
  %28 = phi i64 [ %47, %39 ], [ 0, %24 ]
  %29 = icmp slt i64 %28, %26, !dbg !224
  br i1 %29, label %30, label %48, !dbg !225

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32, !dbg !226
  %32 = mul i32 %25, %0, !dbg !227
  %33 = add i32 %32, %31, !dbg !228
  %34 = srem i32 %33, 20, !dbg !229
  %35 = icmp eq i32 %34, 0, !dbg !230
  br i1 %35, label %36, label %39, !dbg !231

36:                                               ; preds = %30
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !232
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !233
  br label %39, !dbg !234

39:                                               ; preds = %36, %30
  %40 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !235
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !236
  %42 = mul i64 %22, 1000, !dbg !237
  %43 = add i64 %42, %28, !dbg !238
  %44 = getelementptr double, double* %41, i64 %43, !dbg !239
  %45 = load double, double* %44, align 8, !dbg !240
  %46 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %45), !dbg !241
  %47 = add i64 %28, 1, !dbg !242
  br label %27, !dbg !243

48:                                               ; preds = %27
  %49 = add i64 %22, 1, !dbg !244
  br label %21, !dbg !245

50:                                               ; preds = %21
  %51 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !246
  %52 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !247
  %53 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !248
  %54 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !249
  ret void, !dbg !250
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1) !dbg !251 {
  %3 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !252
  %4 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !254
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !255
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !256
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !257
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !258
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !259
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !260
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !261
  ret void, !dbg !262
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_adi", linkageName: "kernel_adi", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!22 = !DILocation(line: 22, column: 11, scope: !8)
!23 = !DILocation(line: 23, column: 11, scope: !8)
!24 = !DILocation(line: 25, column: 11, scope: !8)
!25 = !DILocation(line: 26, column: 5, scope: !8)
!26 = !DILocation(line: 28, column: 11, scope: !8)
!27 = !DILocation(line: 29, column: 11, scope: !8)
!28 = !DILocation(line: 30, column: 11, scope: !8)
!29 = !DILocation(line: 31, column: 11, scope: !8)
!30 = !DILocation(line: 32, column: 11, scope: !8)
!31 = !DILocation(line: 33, column: 11, scope: !8)
!32 = !DILocation(line: 34, column: 11, scope: !8)
!33 = !DILocation(line: 36, column: 11, scope: !8)
!34 = !DILocation(line: 37, column: 5, scope: !8)
!35 = !DILocation(line: 39, column: 11, scope: !8)
!36 = !DILocation(line: 40, column: 11, scope: !8)
!37 = !DILocation(line: 41, column: 11, scope: !8)
!38 = !DILocation(line: 42, column: 11, scope: !8)
!39 = !DILocation(line: 43, column: 11, scope: !8)
!40 = !DILocation(line: 44, column: 11, scope: !8)
!41 = !DILocation(line: 45, column: 11, scope: !8)
!42 = !DILocation(line: 47, column: 11, scope: !8)
!43 = !DILocation(line: 48, column: 5, scope: !8)
!44 = !DILocation(line: 49, column: 5, scope: !8)
!45 = !DILocation(line: 50, column: 5, scope: !8)
!46 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!47 = !DILocation(line: 79, column: 11, scope: !48)
!48 = !DILexicalBlockFile(scope: !46, file: !4, discriminator: 0)
!49 = !DILocation(line: 80, column: 11, scope: !48)
!50 = !DILocation(line: 82, column: 11, scope: !48)
!51 = !DILocation(line: 83, column: 11, scope: !48)
!52 = !DILocation(line: 85, column: 11, scope: !48)
!53 = !DILocation(line: 86, column: 11, scope: !48)
!54 = !DILocation(line: 87, column: 11, scope: !48)
!55 = !DILocation(line: 88, column: 11, scope: !48)
!56 = !DILocation(line: 89, column: 11, scope: !48)
!57 = !DILocation(line: 97, column: 11, scope: !48)
!58 = !DILocation(line: 98, column: 11, scope: !48)
!59 = !DILocation(line: 100, column: 11, scope: !48)
!60 = !DILocation(line: 101, column: 11, scope: !48)
!61 = !DILocation(line: 103, column: 11, scope: !48)
!62 = !DILocation(line: 104, column: 11, scope: !48)
!63 = !DILocation(line: 105, column: 11, scope: !48)
!64 = !DILocation(line: 106, column: 11, scope: !48)
!65 = !DILocation(line: 107, column: 11, scope: !48)
!66 = !DILocation(line: 115, column: 11, scope: !48)
!67 = !DILocation(line: 116, column: 11, scope: !48)
!68 = !DILocation(line: 118, column: 11, scope: !48)
!69 = !DILocation(line: 119, column: 11, scope: !48)
!70 = !DILocation(line: 121, column: 11, scope: !48)
!71 = !DILocation(line: 122, column: 11, scope: !48)
!72 = !DILocation(line: 123, column: 11, scope: !48)
!73 = !DILocation(line: 124, column: 11, scope: !48)
!74 = !DILocation(line: 125, column: 11, scope: !48)
!75 = !DILocation(line: 133, column: 11, scope: !48)
!76 = !DILocation(line: 134, column: 11, scope: !48)
!77 = !DILocation(line: 136, column: 11, scope: !48)
!78 = !DILocation(line: 137, column: 11, scope: !48)
!79 = !DILocation(line: 139, column: 11, scope: !48)
!80 = !DILocation(line: 140, column: 11, scope: !48)
!81 = !DILocation(line: 141, column: 11, scope: !48)
!82 = !DILocation(line: 142, column: 11, scope: !48)
!83 = !DILocation(line: 143, column: 11, scope: !48)
!84 = !DILocation(line: 144, column: 11, scope: !48)
!85 = !DILocation(line: 145, column: 11, scope: !48)
!86 = !DILocation(line: 146, column: 11, scope: !48)
!87 = !DILocation(line: 147, column: 11, scope: !48)
!88 = !DILocation(line: 148, column: 11, scope: !48)
!89 = !DILocation(line: 149, column: 11, scope: !48)
!90 = !DILocation(line: 150, column: 11, scope: !48)
!91 = !DILocation(line: 151, column: 5, scope: !48)
!92 = !DILocation(line: 152, column: 11, scope: !48)
!93 = !DILocation(line: 153, column: 11, scope: !48)
!94 = !DILocation(line: 154, column: 11, scope: !48)
!95 = !DILocation(line: 155, column: 11, scope: !48)
!96 = !DILocation(line: 156, column: 11, scope: !48)
!97 = !DILocation(line: 157, column: 11, scope: !48)
!98 = !DILocation(line: 158, column: 11, scope: !48)
!99 = !DILocation(line: 159, column: 11, scope: !48)
!100 = !DILocation(line: 160, column: 11, scope: !48)
!101 = !DILocation(line: 161, column: 11, scope: !48)
!102 = !DILocation(line: 162, column: 11, scope: !48)
!103 = !DILocation(line: 163, column: 11, scope: !48)
!104 = !DILocation(line: 164, column: 11, scope: !48)
!105 = !DILocation(line: 165, column: 11, scope: !48)
!106 = !DILocation(line: 166, column: 12, scope: !48)
!107 = !DILocation(line: 167, column: 12, scope: !48)
!108 = !DILocation(line: 168, column: 12, scope: !48)
!109 = !DILocation(line: 169, column: 12, scope: !48)
!110 = !DILocation(line: 170, column: 12, scope: !48)
!111 = !DILocation(line: 171, column: 12, scope: !48)
!112 = !DILocation(line: 172, column: 12, scope: !48)
!113 = !DILocation(line: 173, column: 12, scope: !48)
!114 = !DILocation(line: 174, column: 12, scope: !48)
!115 = !DILocation(line: 175, column: 12, scope: !48)
!116 = !DILocation(line: 176, column: 12, scope: !48)
!117 = !DILocation(line: 177, column: 12, scope: !48)
!118 = !DILocation(line: 178, column: 12, scope: !48)
!119 = !DILocation(line: 179, column: 12, scope: !48)
!120 = !DILocation(line: 180, column: 5, scope: !48)
!121 = !DILocation(line: 181, column: 12, scope: !48)
!122 = !DILocation(line: 182, column: 5, scope: !48)
!123 = !DILocation(line: 184, column: 12, scope: !48)
!124 = !DILocation(line: 185, column: 12, scope: !48)
!125 = !DILocation(line: 188, column: 12, scope: !48)
!126 = !DILocation(line: 189, column: 12, scope: !48)
!127 = !DILocation(line: 190, column: 12, scope: !48)
!128 = !DILocation(line: 191, column: 5, scope: !48)
!129 = !DILocation(line: 193, column: 5, scope: !48)
!130 = !DILocation(line: 195, column: 5, scope: !48)
!131 = !DILocation(line: 197, column: 5, scope: !48)
!132 = !DILocation(line: 199, column: 12, scope: !48)
!133 = !DILocation(line: 200, column: 12, scope: !48)
!134 = !DILocation(line: 201, column: 12, scope: !48)
!135 = !DILocation(line: 202, column: 12, scope: !48)
!136 = !DILocation(line: 203, column: 12, scope: !48)
!137 = !DILocation(line: 204, column: 12, scope: !48)
!138 = !DILocation(line: 205, column: 12, scope: !48)
!139 = !DILocation(line: 206, column: 5, scope: !48)
!140 = !DILocation(line: 207, column: 5, scope: !48)
!141 = !DILocation(line: 209, column: 12, scope: !48)
!142 = !DILocation(line: 210, column: 12, scope: !48)
!143 = !DILocation(line: 211, column: 5, scope: !48)
!144 = !DILocation(line: 212, column: 12, scope: !48)
!145 = !DILocation(line: 213, column: 12, scope: !48)
!146 = !DILocation(line: 214, column: 5, scope: !48)
!147 = !DILocation(line: 215, column: 12, scope: !48)
!148 = !DILocation(line: 216, column: 12, scope: !48)
!149 = !DILocation(line: 217, column: 5, scope: !48)
!150 = !DILocation(line: 218, column: 12, scope: !48)
!151 = !DILocation(line: 219, column: 12, scope: !48)
!152 = !DILocation(line: 220, column: 5, scope: !48)
!153 = !DILocation(line: 221, column: 5, scope: !48)
!154 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 223, type: !5, scopeLine: 223, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!155 = !DILocation(line: 224, column: 10, scope: !156)
!156 = !DILexicalBlockFile(scope: !154, file: !4, discriminator: 0)
!157 = !DILocation(line: 225, column: 5, scope: !156)
!158 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 227, type: !5, scopeLine: 227, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!159 = !DILocation(line: 229, column: 10, scope: !160)
!160 = !DILexicalBlockFile(scope: !158, file: !4, discriminator: 0)
!161 = !DILocation(line: 230, column: 10, scope: !160)
!162 = !DILocation(line: 231, column: 10, scope: !160)
!163 = !DILocation(line: 232, column: 10, scope: !160)
!164 = !DILocation(line: 233, column: 10, scope: !160)
!165 = !DILocation(line: 234, column: 10, scope: !160)
!166 = !DILocation(line: 235, column: 10, scope: !160)
!167 = !DILocation(line: 238, column: 11, scope: !160)
!168 = !DILocation(line: 239, column: 5, scope: !160)
!169 = !DILocation(line: 241, column: 11, scope: !160)
!170 = !DILocation(line: 242, column: 5, scope: !160)
!171 = !DILocation(line: 244, column: 11, scope: !160)
!172 = !DILocation(line: 245, column: 11, scope: !160)
!173 = !DILocation(line: 246, column: 5, scope: !160)
!174 = !DILocation(line: 248, column: 11, scope: !160)
!175 = !DILocation(line: 249, column: 5, scope: !160)
!176 = !DILocation(line: 251, column: 11, scope: !160)
!177 = !DILocation(line: 252, column: 11, scope: !160)
!178 = !DILocation(line: 253, column: 11, scope: !160)
!179 = !DILocation(line: 254, column: 11, scope: !160)
!180 = !DILocation(line: 255, column: 11, scope: !160)
!181 = !DILocation(line: 256, column: 11, scope: !160)
!182 = !DILocation(line: 257, column: 11, scope: !160)
!183 = !DILocation(line: 259, column: 11, scope: !160)
!184 = !DILocation(line: 260, column: 11, scope: !160)
!185 = !DILocation(line: 261, column: 11, scope: !160)
!186 = !DILocation(line: 262, column: 5, scope: !160)
!187 = !DILocation(line: 263, column: 11, scope: !160)
!188 = !DILocation(line: 264, column: 5, scope: !160)
!189 = !DILocation(line: 266, column: 11, scope: !160)
!190 = !DILocation(line: 267, column: 5, scope: !160)
!191 = !DILocation(line: 269, column: 5, scope: !160)
!192 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 271, type: !5, scopeLine: 271, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!193 = !DILocation(line: 272, column: 10, scope: !194)
!194 = !DILexicalBlockFile(scope: !192, file: !4, discriminator: 0)
!195 = !DILocation(line: 273, column: 10, scope: !194)
!196 = !DILocation(line: 274, column: 10, scope: !194)
!197 = !DILocation(line: 275, column: 10, scope: !194)
!198 = !DILocation(line: 276, column: 10, scope: !194)
!199 = !DILocation(line: 277, column: 10, scope: !194)
!200 = !DILocation(line: 278, column: 10, scope: !194)
!201 = !DILocation(line: 279, column: 10, scope: !194)
!202 = !DILocation(line: 280, column: 5, scope: !194)
!203 = !DILocation(line: 281, column: 5, scope: !194)
!204 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 283, type: !5, scopeLine: 283, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!205 = !DILocation(line: 285, column: 10, scope: !206)
!206 = !DILexicalBlockFile(scope: !204, file: !4, discriminator: 0)
!207 = !DILocation(line: 286, column: 10, scope: !206)
!208 = !DILocation(line: 287, column: 10, scope: !206)
!209 = !DILocation(line: 288, column: 10, scope: !206)
!210 = !DILocation(line: 289, column: 10, scope: !206)
!211 = !DILocation(line: 290, column: 10, scope: !206)
!212 = !DILocation(line: 291, column: 10, scope: !206)
!213 = !DILocation(line: 297, column: 11, scope: !206)
!214 = !DILocation(line: 300, column: 11, scope: !206)
!215 = !DILocation(line: 302, column: 11, scope: !206)
!216 = !DILocation(line: 307, column: 11, scope: !206)
!217 = !DILocation(line: 308, column: 11, scope: !206)
!218 = !DILocation(line: 309, column: 5, scope: !206)
!219 = !DILocation(line: 311, column: 11, scope: !206)
!220 = !DILocation(line: 312, column: 5, scope: !206)
!221 = !DILocation(line: 314, column: 11, scope: !206)
!222 = !DILocation(line: 315, column: 11, scope: !206)
!223 = !DILocation(line: 316, column: 5, scope: !206)
!224 = !DILocation(line: 318, column: 11, scope: !206)
!225 = !DILocation(line: 319, column: 5, scope: !206)
!226 = !DILocation(line: 321, column: 11, scope: !206)
!227 = !DILocation(line: 322, column: 11, scope: !206)
!228 = !DILocation(line: 323, column: 11, scope: !206)
!229 = !DILocation(line: 324, column: 11, scope: !206)
!230 = !DILocation(line: 325, column: 11, scope: !206)
!231 = !DILocation(line: 326, column: 5, scope: !206)
!232 = !DILocation(line: 329, column: 11, scope: !206)
!233 = !DILocation(line: 332, column: 11, scope: !206)
!234 = !DILocation(line: 333, column: 5, scope: !206)
!235 = !DILocation(line: 336, column: 11, scope: !206)
!236 = !DILocation(line: 339, column: 11, scope: !206)
!237 = !DILocation(line: 341, column: 11, scope: !206)
!238 = !DILocation(line: 342, column: 11, scope: !206)
!239 = !DILocation(line: 343, column: 11, scope: !206)
!240 = !DILocation(line: 344, column: 11, scope: !206)
!241 = !DILocation(line: 345, column: 11, scope: !206)
!242 = !DILocation(line: 346, column: 11, scope: !206)
!243 = !DILocation(line: 347, column: 5, scope: !206)
!244 = !DILocation(line: 349, column: 11, scope: !206)
!245 = !DILocation(line: 350, column: 5, scope: !206)
!246 = !DILocation(line: 353, column: 11, scope: !206)
!247 = !DILocation(line: 358, column: 11, scope: !206)
!248 = !DILocation(line: 360, column: 11, scope: !206)
!249 = !DILocation(line: 363, column: 11, scope: !206)
!250 = !DILocation(line: 364, column: 5, scope: !206)
!251 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 366, type: !5, scopeLine: 366, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!252 = !DILocation(line: 367, column: 10, scope: !253)
!253 = !DILexicalBlockFile(scope: !251, file: !4, discriminator: 0)
!254 = !DILocation(line: 368, column: 10, scope: !253)
!255 = !DILocation(line: 369, column: 10, scope: !253)
!256 = !DILocation(line: 370, column: 10, scope: !253)
!257 = !DILocation(line: 371, column: 10, scope: !253)
!258 = !DILocation(line: 372, column: 10, scope: !253)
!259 = !DILocation(line: 373, column: 10, scope: !253)
!260 = !DILocation(line: 374, column: 10, scope: !253)
!261 = !DILocation(line: 375, column: 5, scope: !253)
!262 = !DILocation(line: 376, column: 5, scope: !253)
