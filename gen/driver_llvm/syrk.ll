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
@str3 = internal constant [2 x i8] c"C\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @kernel_syrk(i32 %0, i32 %1, double %2, double %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17) !dbg !3 {
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0, !dbg !7
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, double* %5, 1, !dbg !9
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %6, 2, !dbg !10
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %7, 3, 0, !dbg !11
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %9, 4, 0, !dbg !12
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %8, 3, 1, !dbg !13
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %10, 4, 1, !dbg !14
  %26 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { double*, double*, i64, [2 x i64], [2 x i64] } %25, { double*, double*, i64, [2 x i64], [2 x i64] }* %26, align 8, !dbg !16
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %11, 0, !dbg !17
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, double* %12, 1, !dbg !18
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %13, 2, !dbg !19
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %14, 3, 0, !dbg !20
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %16, 4, 0, !dbg !21
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %15, 3, 1, !dbg !22
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %17, 4, 1, !dbg !23
  %34 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !24
  store { double*, double*, i64, [2 x i64], [2 x i64] } %33, { double*, double*, i64, [2 x i64], [2 x i64] }* %34, align 8, !dbg !25
  call void @__program_kernel_syrk(i32 %0, i32 %1, double %2, double %3, { double*, double*, i64, [2 x i64], [2 x i64] }* %26, { double*, double*, i64, [2 x i64], [2 x i64] }* %34), !dbg !26
  ret void, !dbg !27
}

declare void @__program_kernel_syrk(i32, i32, double, double, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !28 {
  %3 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8, !dbg !29
  %4 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %3, 0, !dbg !31
  %5 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, double* %3, 1, !dbg !32
  %6 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, i64 0, 2, !dbg !33
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %6, i64 1, 3, 0, !dbg !34
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, i64 1, 4, 0, !dbg !35
  %9 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8, !dbg !36
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0, !dbg !37
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, double* %9, 1, !dbg !38
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, i64 0, 2, !dbg !39
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, i64 1, 3, 0, !dbg !40
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0, !dbg !41
  %15 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1440000) to i64)), !dbg !42
  %16 = bitcast i8* %15 to double*, !dbg !43
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0, !dbg !44
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1, !dbg !45
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2, !dbg !46
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 1200, 3, 0, !dbg !47
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 1200, 3, 1, !dbg !48
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 1200, 4, 0, !dbg !49
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1, !dbg !50
  %24 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1200000) to i64)), !dbg !51
  %25 = bitcast i8* %24 to double*, !dbg !52
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %25, 0, !dbg !53
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %25, 1, !dbg !54
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 0, 2, !dbg !55
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 1200, 3, 0, !dbg !56
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 1000, 3, 1, !dbg !57
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 1000, 4, 0, !dbg !58
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1, !dbg !59
  %33 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 0, !dbg !60
  %34 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !61
  %35 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 2, !dbg !62
  %36 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 3, 0, !dbg !63
  %37 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 4, 0, !dbg !64
  %38 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0, !dbg !65
  %39 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1, !dbg !66
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2, !dbg !67
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0, !dbg !68
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0, !dbg !69
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0, !dbg !70
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !71
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2, !dbg !72
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0, !dbg !73
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1, !dbg !74
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0, !dbg !75
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1, !dbg !76
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0, !dbg !77
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !78
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2, !dbg !79
  %53 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0, !dbg !80
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1, !dbg !81
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0, !dbg !82
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1, !dbg !83
  call void @init_array(i32 1200, i32 1000, double* %33, double* %34, i64 %35, i64 %36, i64 %37, double* %38, double* %39, i64 %40, i64 %41, i64 %42, double* %43, double* %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, double* %50, double* %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56), !dbg !84
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !85
  %58 = getelementptr double, double* %57, i64 0, !dbg !86
  %59 = load double, double* %58, align 8, !dbg !87
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1, !dbg !88
  %61 = getelementptr double, double* %60, i64 0, !dbg !89
  %62 = load double, double* %61, align 8, !dbg !90
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0, !dbg !91
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !92
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2, !dbg !93
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0, !dbg !94
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1, !dbg !95
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0, !dbg !96
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1, !dbg !97
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0, !dbg !98
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !99
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2, !dbg !100
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0, !dbg !101
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1, !dbg !102
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0, !dbg !103
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1, !dbg !104
  call void @kernel_syrk(i32 1200, i32 1000, double %59, double %62, double* %63, double* %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, double* %70, double* %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76), !dbg !105
  %77 = icmp sgt i32 %0, 42, !dbg !106
  br i1 %77, label %78, label %84, !dbg !107

78:                                               ; preds = %2
  %79 = getelementptr i8*, i8** %1, i64 0, !dbg !108
  %80 = load i8*, i8** %79, align 8, !dbg !109
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !110
  %82 = trunc i32 %81 to i1, !dbg !111
  %83 = xor i1 %82, true, !dbg !112
  br label %85, !dbg !113

84:                                               ; preds = %2
  br label %85, !dbg !114

85:                                               ; preds = %78, %84
  %86 = phi i1 [ false, %84 ], [ %83, %78 ]
  br label %87, !dbg !115

87:                                               ; preds = %85
  br i1 %86, label %88, label %96, !dbg !116

88:                                               ; preds = %87
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0, !dbg !117
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !118
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2, !dbg !119
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0, !dbg !120
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1, !dbg !121
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0, !dbg !122
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1, !dbg !123
  call void @print_array(i32 1200, double* %89, double* %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95), !dbg !124
  br label %96, !dbg !125

96:                                               ; preds = %88, %87
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0, !dbg !126
  %98 = bitcast double* %97 to i8*, !dbg !127
  call void @free(i8* %98), !dbg !128
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0, !dbg !129
  %100 = bitcast double* %99 to i8*, !dbg !130
  call void @free(i8* %100), !dbg !131
  ret i32 0, !dbg !132
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !133 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !134
  ret i32 %3, !dbg !136
}

define internal void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25) !dbg !137 {
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0, !dbg !138
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, double* %3, 1, !dbg !140
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, i64 %4, 2, !dbg !141
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 %5, 3, 0, !dbg !142
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 %6, 4, 0, !dbg !143
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %7, 0, !dbg !144
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, double* %8, 1, !dbg !145
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %9, 2, !dbg !146
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %10, 3, 0, !dbg !147
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %11, 4, 0, !dbg !148
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0, !dbg !149
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, double* %13, 1, !dbg !150
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %14, 2, !dbg !151
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %15, 3, 0, !dbg !152
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 %17, 4, 0, !dbg !153
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %16, 3, 1, !dbg !154
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %18, 4, 1, !dbg !155
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0, !dbg !156
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, double* %20, 1, !dbg !157
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %21, 2, !dbg !158
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %22, 3, 0, !dbg !159
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 %24, 4, 0, !dbg !160
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, i64 %23, 3, 1, !dbg !161
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 %25, 4, 1, !dbg !162
  %51 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 1, !dbg !163
  %52 = getelementptr double, double* %51, i64 0, !dbg !164
  store double 1.500000e+00, double* %52, align 8, !dbg !165
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, 1, !dbg !166
  %54 = getelementptr double, double* %53, i64 0, !dbg !167
  store double 1.200000e+00, double* %54, align 8, !dbg !168
  %55 = sext i32 %0 to i64, !dbg !169
  br label %56, !dbg !170

56:                                               ; preds = %78, %26
  %57 = phi i64 [ %79, %78 ], [ 0, %26 ]
  %58 = icmp slt i64 %57, %55, !dbg !171
  br i1 %58, label %59, label %80, !dbg !172

59:                                               ; preds = %56
  %60 = trunc i64 %57 to i32, !dbg !173
  %61 = sext i32 %1 to i64, !dbg !174
  br label %62, !dbg !175

62:                                               ; preds = %65, %59
  %63 = phi i64 [ %77, %65 ], [ 0, %59 ]
  %64 = icmp slt i64 %63, %61, !dbg !176
  br i1 %64, label %65, label %78, !dbg !177

65:                                               ; preds = %62
  %66 = trunc i64 %63 to i32, !dbg !178
  %67 = mul i32 %60, %66, !dbg !179
  %68 = add i32 %67, 1, !dbg !180
  %69 = srem i32 %68, %0, !dbg !181
  %70 = sitofp i32 %69 to double, !dbg !182
  %71 = sitofp i32 %0 to double, !dbg !183
  %72 = fdiv double %70, %71, !dbg !184
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1, !dbg !185
  %74 = mul i64 %57, 1000, !dbg !186
  %75 = add i64 %74, %63, !dbg !187
  %76 = getelementptr double, double* %73, i64 %75, !dbg !188
  store double %72, double* %76, align 8, !dbg !189
  %77 = add i64 %63, 1, !dbg !190
  br label %62, !dbg !191

78:                                               ; preds = %62
  %79 = add i64 %57, 1, !dbg !192
  br label %56, !dbg !193

80:                                               ; preds = %56
  %81 = sext i32 %0 to i64, !dbg !194
  br label %82, !dbg !195

82:                                               ; preds = %104, %80
  %83 = phi i64 [ %105, %104 ], [ 0, %80 ]
  %84 = icmp slt i64 %83, %81, !dbg !196
  br i1 %84, label %85, label %106, !dbg !197

85:                                               ; preds = %82
  %86 = trunc i64 %83 to i32, !dbg !198
  %87 = sext i32 %0 to i64, !dbg !199
  br label %88, !dbg !200

88:                                               ; preds = %91, %85
  %89 = phi i64 [ %103, %91 ], [ 0, %85 ]
  %90 = icmp slt i64 %89, %87, !dbg !201
  br i1 %90, label %91, label %104, !dbg !202

91:                                               ; preds = %88
  %92 = trunc i64 %89 to i32, !dbg !203
  %93 = mul i32 %86, %92, !dbg !204
  %94 = add i32 %93, 2, !dbg !205
  %95 = srem i32 %94, %1, !dbg !206
  %96 = sitofp i32 %95 to double, !dbg !207
  %97 = sitofp i32 %1 to double, !dbg !208
  %98 = fdiv double %96, %97, !dbg !209
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, 1, !dbg !210
  %100 = mul i64 %83, 1200, !dbg !211
  %101 = add i64 %100, %89, !dbg !212
  %102 = getelementptr double, double* %99, i64 %101, !dbg !213
  store double %98, double* %102, align 8, !dbg !214
  %103 = add i64 %89, 1, !dbg !215
  br label %88, !dbg !216

104:                                              ; preds = %88
  %105 = add i64 %83, 1, !dbg !217
  br label %82, !dbg !218

106:                                              ; preds = %82
  ret void, !dbg !219
}

define void @_mlir_ciface_init_array(i32 %0, i32 %1, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, { double*, double*, i64, [2 x i64], [2 x i64] }* %5) !dbg !220 {
  %7 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !221
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 0, !dbg !223
  %9 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !224
  %10 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 2, !dbg !225
  %11 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 3, 0, !dbg !226
  %12 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, 4, 0, !dbg !227
  %13 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %3, align 8, !dbg !228
  %14 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 0, !dbg !229
  %15 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 1, !dbg !230
  %16 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 2, !dbg !231
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 3, 0, !dbg !232
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, 4, 0, !dbg !233
  %19 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %4, align 8, !dbg !234
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, 0, !dbg !235
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, 1, !dbg !236
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, 2, !dbg !237
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, 3, 0, !dbg !238
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, 3, 1, !dbg !239
  %25 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, 4, 0, !dbg !240
  %26 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, 4, 1, !dbg !241
  %27 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !242
  %28 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, 0, !dbg !243
  %29 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, 1, !dbg !244
  %30 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, 2, !dbg !245
  %31 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, 3, 0, !dbg !246
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, 3, 1, !dbg !247
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, 4, 0, !dbg !248
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, 4, 1, !dbg !249
  call void @init_array(i32 %0, i32 %1, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %20, double* %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, double* %28, double* %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34), !dbg !250
  ret void, !dbg !251
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !252 {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !253
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1, !dbg !255
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !256
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !257
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !258
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !259
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !260
  %16 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !261
  %17 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !262
  %18 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !263
  %19 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !264
  %20 = sext i32 %0 to i64, !dbg !265
  br label %21, !dbg !266

21:                                               ; preds = %48, %8
  %22 = phi i64 [ %49, %48 ], [ 0, %8 ]
  %23 = icmp slt i64 %22, %20, !dbg !267
  br i1 %23, label %24, label %50, !dbg !268

24:                                               ; preds = %21
  %25 = trunc i64 %22 to i32, !dbg !269
  %26 = sext i32 %0 to i64, !dbg !270
  br label %27, !dbg !271

27:                                               ; preds = %39, %24
  %28 = phi i64 [ %47, %39 ], [ 0, %24 ]
  %29 = icmp slt i64 %28, %26, !dbg !272
  br i1 %29, label %30, label %48, !dbg !273

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32, !dbg !274
  %32 = mul i32 %25, %0, !dbg !275
  %33 = add i32 %32, %31, !dbg !276
  %34 = srem i32 %33, 20, !dbg !277
  %35 = icmp eq i32 %34, 0, !dbg !278
  br i1 %35, label %36, label %39, !dbg !279

36:                                               ; preds = %30
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !280
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !281
  br label %39, !dbg !282

39:                                               ; preds = %36, %30
  %40 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !283
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !284
  %42 = mul i64 %22, 1200, !dbg !285
  %43 = add i64 %42, %28, !dbg !286
  %44 = getelementptr double, double* %41, i64 %43, !dbg !287
  %45 = load double, double* %44, align 8, !dbg !288
  %46 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %45), !dbg !289
  %47 = add i64 %28, 1, !dbg !290
  br label %27, !dbg !291

48:                                               ; preds = %27
  %49 = add i64 %22, 1, !dbg !292
  br label %21, !dbg !293

50:                                               ; preds = %21
  %51 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !294
  %52 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !295
  %53 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !296
  %54 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !297
  ret void, !dbg !298
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1) !dbg !299 {
  %3 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !300
  %4 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !302
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !303
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !304
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !305
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !306
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !307
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !308
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !309
  ret void, !dbg !310
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_syrk", linkageName: "kernel_syrk", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!26 = !DILocation(line: 27, column: 5, scope: !8)
!27 = !DILocation(line: 28, column: 5, scope: !8)
!28 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!29 = !DILocation(line: 55, column: 11, scope: !30)
!30 = !DILexicalBlockFile(scope: !28, file: !4, discriminator: 0)
!31 = !DILocation(line: 57, column: 11, scope: !30)
!32 = !DILocation(line: 58, column: 11, scope: !30)
!33 = !DILocation(line: 60, column: 11, scope: !30)
!34 = !DILocation(line: 61, column: 11, scope: !30)
!35 = !DILocation(line: 62, column: 11, scope: !30)
!36 = !DILocation(line: 68, column: 11, scope: !30)
!37 = !DILocation(line: 70, column: 11, scope: !30)
!38 = !DILocation(line: 71, column: 11, scope: !30)
!39 = !DILocation(line: 73, column: 11, scope: !30)
!40 = !DILocation(line: 74, column: 11, scope: !30)
!41 = !DILocation(line: 75, column: 11, scope: !30)
!42 = !DILocation(line: 83, column: 11, scope: !30)
!43 = !DILocation(line: 84, column: 11, scope: !30)
!44 = !DILocation(line: 86, column: 11, scope: !30)
!45 = !DILocation(line: 87, column: 11, scope: !30)
!46 = !DILocation(line: 89, column: 11, scope: !30)
!47 = !DILocation(line: 90, column: 11, scope: !30)
!48 = !DILocation(line: 91, column: 11, scope: !30)
!49 = !DILocation(line: 92, column: 11, scope: !30)
!50 = !DILocation(line: 93, column: 11, scope: !30)
!51 = !DILocation(line: 101, column: 11, scope: !30)
!52 = !DILocation(line: 102, column: 11, scope: !30)
!53 = !DILocation(line: 104, column: 11, scope: !30)
!54 = !DILocation(line: 105, column: 11, scope: !30)
!55 = !DILocation(line: 107, column: 11, scope: !30)
!56 = !DILocation(line: 108, column: 11, scope: !30)
!57 = !DILocation(line: 109, column: 11, scope: !30)
!58 = !DILocation(line: 110, column: 11, scope: !30)
!59 = !DILocation(line: 111, column: 11, scope: !30)
!60 = !DILocation(line: 112, column: 11, scope: !30)
!61 = !DILocation(line: 113, column: 11, scope: !30)
!62 = !DILocation(line: 114, column: 11, scope: !30)
!63 = !DILocation(line: 115, column: 11, scope: !30)
!64 = !DILocation(line: 116, column: 11, scope: !30)
!65 = !DILocation(line: 117, column: 11, scope: !30)
!66 = !DILocation(line: 118, column: 11, scope: !30)
!67 = !DILocation(line: 119, column: 11, scope: !30)
!68 = !DILocation(line: 120, column: 11, scope: !30)
!69 = !DILocation(line: 121, column: 11, scope: !30)
!70 = !DILocation(line: 122, column: 11, scope: !30)
!71 = !DILocation(line: 123, column: 11, scope: !30)
!72 = !DILocation(line: 124, column: 11, scope: !30)
!73 = !DILocation(line: 125, column: 11, scope: !30)
!74 = !DILocation(line: 126, column: 11, scope: !30)
!75 = !DILocation(line: 127, column: 11, scope: !30)
!76 = !DILocation(line: 128, column: 11, scope: !30)
!77 = !DILocation(line: 129, column: 11, scope: !30)
!78 = !DILocation(line: 130, column: 11, scope: !30)
!79 = !DILocation(line: 131, column: 11, scope: !30)
!80 = !DILocation(line: 132, column: 11, scope: !30)
!81 = !DILocation(line: 133, column: 11, scope: !30)
!82 = !DILocation(line: 134, column: 11, scope: !30)
!83 = !DILocation(line: 135, column: 11, scope: !30)
!84 = !DILocation(line: 136, column: 5, scope: !30)
!85 = !DILocation(line: 138, column: 11, scope: !30)
!86 = !DILocation(line: 139, column: 11, scope: !30)
!87 = !DILocation(line: 140, column: 11, scope: !30)
!88 = !DILocation(line: 142, column: 11, scope: !30)
!89 = !DILocation(line: 143, column: 11, scope: !30)
!90 = !DILocation(line: 144, column: 12, scope: !30)
!91 = !DILocation(line: 145, column: 12, scope: !30)
!92 = !DILocation(line: 146, column: 12, scope: !30)
!93 = !DILocation(line: 147, column: 12, scope: !30)
!94 = !DILocation(line: 148, column: 12, scope: !30)
!95 = !DILocation(line: 149, column: 12, scope: !30)
!96 = !DILocation(line: 150, column: 12, scope: !30)
!97 = !DILocation(line: 151, column: 12, scope: !30)
!98 = !DILocation(line: 152, column: 12, scope: !30)
!99 = !DILocation(line: 153, column: 12, scope: !30)
!100 = !DILocation(line: 154, column: 12, scope: !30)
!101 = !DILocation(line: 155, column: 12, scope: !30)
!102 = !DILocation(line: 156, column: 12, scope: !30)
!103 = !DILocation(line: 157, column: 12, scope: !30)
!104 = !DILocation(line: 158, column: 12, scope: !30)
!105 = !DILocation(line: 159, column: 5, scope: !30)
!106 = !DILocation(line: 160, column: 12, scope: !30)
!107 = !DILocation(line: 161, column: 5, scope: !30)
!108 = !DILocation(line: 163, column: 12, scope: !30)
!109 = !DILocation(line: 164, column: 12, scope: !30)
!110 = !DILocation(line: 167, column: 12, scope: !30)
!111 = !DILocation(line: 168, column: 12, scope: !30)
!112 = !DILocation(line: 169, column: 12, scope: !30)
!113 = !DILocation(line: 170, column: 5, scope: !30)
!114 = !DILocation(line: 172, column: 5, scope: !30)
!115 = !DILocation(line: 174, column: 5, scope: !30)
!116 = !DILocation(line: 176, column: 5, scope: !30)
!117 = !DILocation(line: 178, column: 12, scope: !30)
!118 = !DILocation(line: 179, column: 12, scope: !30)
!119 = !DILocation(line: 180, column: 12, scope: !30)
!120 = !DILocation(line: 181, column: 12, scope: !30)
!121 = !DILocation(line: 182, column: 12, scope: !30)
!122 = !DILocation(line: 183, column: 12, scope: !30)
!123 = !DILocation(line: 184, column: 12, scope: !30)
!124 = !DILocation(line: 185, column: 5, scope: !30)
!125 = !DILocation(line: 186, column: 5, scope: !30)
!126 = !DILocation(line: 188, column: 12, scope: !30)
!127 = !DILocation(line: 189, column: 12, scope: !30)
!128 = !DILocation(line: 190, column: 5, scope: !30)
!129 = !DILocation(line: 191, column: 12, scope: !30)
!130 = !DILocation(line: 192, column: 12, scope: !30)
!131 = !DILocation(line: 193, column: 5, scope: !30)
!132 = !DILocation(line: 194, column: 5, scope: !30)
!133 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 196, type: !5, scopeLine: 196, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!134 = !DILocation(line: 197, column: 10, scope: !135)
!135 = !DILexicalBlockFile(scope: !133, file: !4, discriminator: 0)
!136 = !DILocation(line: 198, column: 5, scope: !135)
!137 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 200, type: !5, scopeLine: 200, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!138 = !DILocation(line: 202, column: 10, scope: !139)
!139 = !DILexicalBlockFile(scope: !137, file: !4, discriminator: 0)
!140 = !DILocation(line: 203, column: 10, scope: !139)
!141 = !DILocation(line: 204, column: 10, scope: !139)
!142 = !DILocation(line: 205, column: 10, scope: !139)
!143 = !DILocation(line: 206, column: 10, scope: !139)
!144 = !DILocation(line: 208, column: 10, scope: !139)
!145 = !DILocation(line: 209, column: 10, scope: !139)
!146 = !DILocation(line: 210, column: 10, scope: !139)
!147 = !DILocation(line: 211, column: 11, scope: !139)
!148 = !DILocation(line: 212, column: 11, scope: !139)
!149 = !DILocation(line: 214, column: 11, scope: !139)
!150 = !DILocation(line: 215, column: 11, scope: !139)
!151 = !DILocation(line: 216, column: 11, scope: !139)
!152 = !DILocation(line: 217, column: 11, scope: !139)
!153 = !DILocation(line: 218, column: 11, scope: !139)
!154 = !DILocation(line: 219, column: 11, scope: !139)
!155 = !DILocation(line: 220, column: 11, scope: !139)
!156 = !DILocation(line: 222, column: 11, scope: !139)
!157 = !DILocation(line: 223, column: 11, scope: !139)
!158 = !DILocation(line: 224, column: 11, scope: !139)
!159 = !DILocation(line: 225, column: 11, scope: !139)
!160 = !DILocation(line: 226, column: 11, scope: !139)
!161 = !DILocation(line: 227, column: 11, scope: !139)
!162 = !DILocation(line: 228, column: 11, scope: !139)
!163 = !DILocation(line: 236, column: 11, scope: !139)
!164 = !DILocation(line: 237, column: 11, scope: !139)
!165 = !DILocation(line: 238, column: 5, scope: !139)
!166 = !DILocation(line: 240, column: 11, scope: !139)
!167 = !DILocation(line: 241, column: 11, scope: !139)
!168 = !DILocation(line: 242, column: 5, scope: !139)
!169 = !DILocation(line: 243, column: 11, scope: !139)
!170 = !DILocation(line: 244, column: 5, scope: !139)
!171 = !DILocation(line: 246, column: 11, scope: !139)
!172 = !DILocation(line: 247, column: 5, scope: !139)
!173 = !DILocation(line: 249, column: 11, scope: !139)
!174 = !DILocation(line: 250, column: 11, scope: !139)
!175 = !DILocation(line: 251, column: 5, scope: !139)
!176 = !DILocation(line: 253, column: 11, scope: !139)
!177 = !DILocation(line: 254, column: 5, scope: !139)
!178 = !DILocation(line: 256, column: 11, scope: !139)
!179 = !DILocation(line: 257, column: 11, scope: !139)
!180 = !DILocation(line: 258, column: 11, scope: !139)
!181 = !DILocation(line: 259, column: 11, scope: !139)
!182 = !DILocation(line: 260, column: 11, scope: !139)
!183 = !DILocation(line: 261, column: 11, scope: !139)
!184 = !DILocation(line: 262, column: 11, scope: !139)
!185 = !DILocation(line: 263, column: 11, scope: !139)
!186 = !DILocation(line: 265, column: 11, scope: !139)
!187 = !DILocation(line: 266, column: 11, scope: !139)
!188 = !DILocation(line: 267, column: 11, scope: !139)
!189 = !DILocation(line: 268, column: 5, scope: !139)
!190 = !DILocation(line: 269, column: 11, scope: !139)
!191 = !DILocation(line: 270, column: 5, scope: !139)
!192 = !DILocation(line: 272, column: 11, scope: !139)
!193 = !DILocation(line: 273, column: 5, scope: !139)
!194 = !DILocation(line: 275, column: 11, scope: !139)
!195 = !DILocation(line: 276, column: 5, scope: !139)
!196 = !DILocation(line: 278, column: 11, scope: !139)
!197 = !DILocation(line: 279, column: 5, scope: !139)
!198 = !DILocation(line: 281, column: 11, scope: !139)
!199 = !DILocation(line: 282, column: 11, scope: !139)
!200 = !DILocation(line: 283, column: 5, scope: !139)
!201 = !DILocation(line: 285, column: 11, scope: !139)
!202 = !DILocation(line: 286, column: 5, scope: !139)
!203 = !DILocation(line: 288, column: 11, scope: !139)
!204 = !DILocation(line: 289, column: 11, scope: !139)
!205 = !DILocation(line: 290, column: 11, scope: !139)
!206 = !DILocation(line: 291, column: 11, scope: !139)
!207 = !DILocation(line: 292, column: 11, scope: !139)
!208 = !DILocation(line: 293, column: 11, scope: !139)
!209 = !DILocation(line: 294, column: 11, scope: !139)
!210 = !DILocation(line: 295, column: 11, scope: !139)
!211 = !DILocation(line: 297, column: 11, scope: !139)
!212 = !DILocation(line: 298, column: 11, scope: !139)
!213 = !DILocation(line: 299, column: 11, scope: !139)
!214 = !DILocation(line: 300, column: 5, scope: !139)
!215 = !DILocation(line: 301, column: 11, scope: !139)
!216 = !DILocation(line: 302, column: 5, scope: !139)
!217 = !DILocation(line: 304, column: 11, scope: !139)
!218 = !DILocation(line: 305, column: 5, scope: !139)
!219 = !DILocation(line: 307, column: 5, scope: !139)
!220 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 309, type: !5, scopeLine: 309, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!221 = !DILocation(line: 310, column: 10, scope: !222)
!222 = !DILexicalBlockFile(scope: !220, file: !4, discriminator: 0)
!223 = !DILocation(line: 311, column: 10, scope: !222)
!224 = !DILocation(line: 312, column: 10, scope: !222)
!225 = !DILocation(line: 313, column: 10, scope: !222)
!226 = !DILocation(line: 314, column: 10, scope: !222)
!227 = !DILocation(line: 315, column: 10, scope: !222)
!228 = !DILocation(line: 316, column: 10, scope: !222)
!229 = !DILocation(line: 317, column: 10, scope: !222)
!230 = !DILocation(line: 318, column: 10, scope: !222)
!231 = !DILocation(line: 319, column: 10, scope: !222)
!232 = !DILocation(line: 320, column: 11, scope: !222)
!233 = !DILocation(line: 321, column: 11, scope: !222)
!234 = !DILocation(line: 322, column: 11, scope: !222)
!235 = !DILocation(line: 323, column: 11, scope: !222)
!236 = !DILocation(line: 324, column: 11, scope: !222)
!237 = !DILocation(line: 325, column: 11, scope: !222)
!238 = !DILocation(line: 326, column: 11, scope: !222)
!239 = !DILocation(line: 327, column: 11, scope: !222)
!240 = !DILocation(line: 328, column: 11, scope: !222)
!241 = !DILocation(line: 329, column: 11, scope: !222)
!242 = !DILocation(line: 330, column: 11, scope: !222)
!243 = !DILocation(line: 331, column: 11, scope: !222)
!244 = !DILocation(line: 332, column: 11, scope: !222)
!245 = !DILocation(line: 333, column: 11, scope: !222)
!246 = !DILocation(line: 334, column: 11, scope: !222)
!247 = !DILocation(line: 335, column: 11, scope: !222)
!248 = !DILocation(line: 336, column: 11, scope: !222)
!249 = !DILocation(line: 337, column: 11, scope: !222)
!250 = !DILocation(line: 338, column: 5, scope: !222)
!251 = !DILocation(line: 339, column: 5, scope: !222)
!252 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 341, type: !5, scopeLine: 341, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!253 = !DILocation(line: 343, column: 10, scope: !254)
!254 = !DILexicalBlockFile(scope: !252, file: !4, discriminator: 0)
!255 = !DILocation(line: 344, column: 10, scope: !254)
!256 = !DILocation(line: 345, column: 10, scope: !254)
!257 = !DILocation(line: 346, column: 10, scope: !254)
!258 = !DILocation(line: 347, column: 10, scope: !254)
!259 = !DILocation(line: 348, column: 10, scope: !254)
!260 = !DILocation(line: 349, column: 10, scope: !254)
!261 = !DILocation(line: 355, column: 11, scope: !254)
!262 = !DILocation(line: 358, column: 11, scope: !254)
!263 = !DILocation(line: 360, column: 11, scope: !254)
!264 = !DILocation(line: 365, column: 11, scope: !254)
!265 = !DILocation(line: 366, column: 11, scope: !254)
!266 = !DILocation(line: 367, column: 5, scope: !254)
!267 = !DILocation(line: 369, column: 11, scope: !254)
!268 = !DILocation(line: 370, column: 5, scope: !254)
!269 = !DILocation(line: 372, column: 11, scope: !254)
!270 = !DILocation(line: 373, column: 11, scope: !254)
!271 = !DILocation(line: 374, column: 5, scope: !254)
!272 = !DILocation(line: 376, column: 11, scope: !254)
!273 = !DILocation(line: 377, column: 5, scope: !254)
!274 = !DILocation(line: 379, column: 11, scope: !254)
!275 = !DILocation(line: 380, column: 11, scope: !254)
!276 = !DILocation(line: 381, column: 11, scope: !254)
!277 = !DILocation(line: 382, column: 11, scope: !254)
!278 = !DILocation(line: 383, column: 11, scope: !254)
!279 = !DILocation(line: 384, column: 5, scope: !254)
!280 = !DILocation(line: 387, column: 11, scope: !254)
!281 = !DILocation(line: 390, column: 11, scope: !254)
!282 = !DILocation(line: 391, column: 5, scope: !254)
!283 = !DILocation(line: 394, column: 11, scope: !254)
!284 = !DILocation(line: 397, column: 11, scope: !254)
!285 = !DILocation(line: 399, column: 11, scope: !254)
!286 = !DILocation(line: 400, column: 11, scope: !254)
!287 = !DILocation(line: 401, column: 11, scope: !254)
!288 = !DILocation(line: 402, column: 11, scope: !254)
!289 = !DILocation(line: 403, column: 11, scope: !254)
!290 = !DILocation(line: 404, column: 11, scope: !254)
!291 = !DILocation(line: 405, column: 5, scope: !254)
!292 = !DILocation(line: 407, column: 11, scope: !254)
!293 = !DILocation(line: 408, column: 5, scope: !254)
!294 = !DILocation(line: 411, column: 11, scope: !254)
!295 = !DILocation(line: 416, column: 11, scope: !254)
!296 = !DILocation(line: 418, column: 11, scope: !254)
!297 = !DILocation(line: 421, column: 11, scope: !254)
!298 = !DILocation(line: 422, column: 5, scope: !254)
!299 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 424, type: !5, scopeLine: 424, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!300 = !DILocation(line: 425, column: 10, scope: !301)
!301 = !DILexicalBlockFile(scope: !299, file: !4, discriminator: 0)
!302 = !DILocation(line: 426, column: 10, scope: !301)
!303 = !DILocation(line: 427, column: 10, scope: !301)
!304 = !DILocation(line: 428, column: 10, scope: !301)
!305 = !DILocation(line: 429, column: 10, scope: !301)
!306 = !DILocation(line: 430, column: 10, scope: !301)
!307 = !DILocation(line: 431, column: 10, scope: !301)
!308 = !DILocation(line: 432, column: 10, scope: !301)
!309 = !DILocation(line: 433, column: 5, scope: !301)
!310 = !DILocation(line: 434, column: 5, scope: !301)
