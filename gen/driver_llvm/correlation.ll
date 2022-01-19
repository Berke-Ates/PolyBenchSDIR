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
@str3 = internal constant [5 x i8] c"corr\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @kernel_correlation(i32 %0, i32 %1, double %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, double* %17, double* %18, i64 %19, i64 %20, i64 %21, double* %22, double* %23, i64 %24, i64 %25, i64 %26) !dbg !3 {
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %3, 0, !dbg !7
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, double* %4, 1, !dbg !9
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %5, 2, !dbg !10
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %6, 3, 0, !dbg !11
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %8, 4, 0, !dbg !12
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %7, 3, 1, !dbg !13
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %9, 4, 1, !dbg !14
  %35 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { double*, double*, i64, [2 x i64], [2 x i64] } %34, { double*, double*, i64, [2 x i64], [2 x i64] }* %35, align 8, !dbg !16
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %10, 0, !dbg !17
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, double* %11, 1, !dbg !18
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %12, 2, !dbg !19
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %13, 3, 0, !dbg !20
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %15, 4, 0, !dbg !21
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 %14, 3, 1, !dbg !22
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %16, 4, 1, !dbg !23
  %43 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !24
  store { double*, double*, i64, [2 x i64], [2 x i64] } %42, { double*, double*, i64, [2 x i64], [2 x i64] }* %43, align 8, !dbg !25
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %17, 0, !dbg !26
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, double* %18, 1, !dbg !27
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %19, 2, !dbg !28
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, i64 %20, 3, 0, !dbg !29
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, i64 %21, 4, 0, !dbg !30
  %49 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !31
  store { double*, double*, i64, [1 x i64], [1 x i64] } %48, { double*, double*, i64, [1 x i64], [1 x i64] }* %49, align 8, !dbg !32
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %22, 0, !dbg !33
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, double* %23, 1, !dbg !34
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, i64 %24, 2, !dbg !35
  %53 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, i64 %25, 3, 0, !dbg !36
  %54 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, i64 %26, 4, 0, !dbg !37
  %55 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !38
  store { double*, double*, i64, [1 x i64], [1 x i64] } %54, { double*, double*, i64, [1 x i64], [1 x i64] }* %55, align 8, !dbg !39
  call void @__program_kernel_correlation(i32 %0, i32 %1, double %2, { double*, double*, i64, [2 x i64], [2 x i64] }* %35, { double*, double*, i64, [2 x i64], [2 x i64] }* %43, { double*, double*, i64, [1 x i64], [1 x i64] }* %49, { double*, double*, i64, [1 x i64], [1 x i64] }* %55), !dbg !40
  ret void, !dbg !41
}

declare void @__program_kernel_correlation(i32, i32, double, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [1 x i64], [1 x i64] }*, { double*, double*, i64, [1 x i64], [1 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !42 {
  %3 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8, !dbg !43
  %4 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %3, 0, !dbg !45
  %5 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, double* %3, 1, !dbg !46
  %6 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, i64 0, 2, !dbg !47
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %6, i64 1, 3, 0, !dbg !48
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, i64 1, 4, 0, !dbg !49
  %9 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1680000) to i64)), !dbg !50
  %10 = bitcast i8* %9 to double*, !dbg !51
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %10, 0, !dbg !52
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, double* %10, 1, !dbg !53
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 0, 2, !dbg !54
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 1400, 3, 0, !dbg !55
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 1200, 3, 1, !dbg !56
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 1200, 4, 0, !dbg !57
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, i64 1, 4, 1, !dbg !58
  %18 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1440000) to i64)), !dbg !59
  %19 = bitcast i8* %18 to double*, !dbg !60
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0, !dbg !61
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, double* %19, 1, !dbg !62
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 0, 2, !dbg !63
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1200, 3, 0, !dbg !64
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 1200, 3, 1, !dbg !65
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 1200, 4, 0, !dbg !66
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 1, 4, 1, !dbg !67
  %27 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1200) to i64)), !dbg !68
  %28 = bitcast i8* %27 to double*, !dbg !69
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %28, 0, !dbg !70
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, double* %28, 1, !dbg !71
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 0, 2, !dbg !72
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 1200, 3, 0, !dbg !73
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 1, 4, 0, !dbg !74
  %34 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1200) to i64)), !dbg !75
  %35 = bitcast i8* %34 to double*, !dbg !76
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %35, 0, !dbg !77
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, double* %35, 1, !dbg !78
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 0, 2, !dbg !79
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 1200, 3, 0, !dbg !80
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 1, 4, 0, !dbg !81
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0, !dbg !82
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1, !dbg !83
  %43 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2, !dbg !84
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0, !dbg !85
  %45 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0, !dbg !86
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0, !dbg !87
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 1, !dbg !88
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 2, !dbg !89
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 0, !dbg !90
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 1, !dbg !91
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 0, !dbg !92
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 1, !dbg !93
  call void @init_array(i32 1200, i32 1400, double* %41, double* %42, i64 %43, i64 %44, i64 %45, double* %46, double* %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52), !dbg !94
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1, !dbg !95
  %54 = getelementptr double, double* %53, i64 0, !dbg !96
  %55 = load double, double* %54, align 8, !dbg !97
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0, !dbg !98
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 1, !dbg !99
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 2, !dbg !100
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 0, !dbg !101
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 1, !dbg !102
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 0, !dbg !103
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 1, !dbg !104
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 0, !dbg !105
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 1, !dbg !106
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 2, !dbg !107
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 0, !dbg !108
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 1, !dbg !109
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 0, !dbg !110
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 1, !dbg !111
  %70 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 0, !dbg !112
  %71 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1, !dbg !113
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 2, !dbg !114
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 3, 0, !dbg !115
  %74 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 4, 0, !dbg !116
  %75 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 0, !dbg !117
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 1, !dbg !118
  %77 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 2, !dbg !119
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 3, 0, !dbg !120
  %79 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 4, 0, !dbg !121
  call void @kernel_correlation(i32 1200, i32 1400, double %55, double* %56, double* %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, double* %63, double* %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, double* %70, double* %71, i64 %72, i64 %73, i64 %74, double* %75, double* %76, i64 %77, i64 %78, i64 %79), !dbg !122
  %80 = icmp sgt i32 %0, 42, !dbg !123
  br i1 %80, label %81, label %87, !dbg !124

81:                                               ; preds = %2
  %82 = getelementptr i8*, i8** %1, i64 0, !dbg !125
  %83 = load i8*, i8** %82, align 8, !dbg !126
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !127
  %85 = trunc i32 %84 to i1, !dbg !128
  %86 = xor i1 %85, true, !dbg !129
  br label %88, !dbg !130

87:                                               ; preds = %2
  br label %88, !dbg !131

88:                                               ; preds = %81, %87
  %89 = phi i1 [ false, %87 ], [ %86, %81 ]
  br label %90, !dbg !132

90:                                               ; preds = %88
  br i1 %89, label %91, label %99, !dbg !133

91:                                               ; preds = %90
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 0, !dbg !134
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 1, !dbg !135
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 2, !dbg !136
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 0, !dbg !137
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 1, !dbg !138
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 0, !dbg !139
  %98 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 1, !dbg !140
  call void @print_array(i32 1200, double* %92, double* %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98), !dbg !141
  br label %99, !dbg !142

99:                                               ; preds = %91, %90
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0, !dbg !143
  %101 = bitcast double* %100 to i8*, !dbg !144
  call void @free(i8* %101), !dbg !145
  %102 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 0, !dbg !146
  %103 = bitcast double* %102 to i8*, !dbg !147
  call void @free(i8* %103), !dbg !148
  %104 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 0, !dbg !149
  %105 = bitcast double* %104 to i8*, !dbg !150
  call void @free(i8* %105), !dbg !151
  %106 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 0, !dbg !152
  %107 = bitcast double* %106 to i8*, !dbg !153
  call void @free(i8* %107), !dbg !154
  ret i32 0, !dbg !155
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !156 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !157
  ret i32 %3, !dbg !159
}

define internal void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13) !dbg !160 {
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0, !dbg !161
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, double* %3, 1, !dbg !163
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 %4, 2, !dbg !164
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, i64 %5, 3, 0, !dbg !165
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, i64 %6, 4, 0, !dbg !166
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %7, 0, !dbg !167
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, double* %8, 1, !dbg !168
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %9, 2, !dbg !169
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %10, 3, 0, !dbg !170
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %12, 4, 0, !dbg !171
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %11, 3, 1, !dbg !172
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %13, 4, 1, !dbg !173
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, 1, !dbg !174
  %28 = getelementptr double, double* %27, i64 0, !dbg !175
  store double 1.400000e+03, double* %28, align 8, !dbg !176
  br label %29, !dbg !177

29:                                               ; preds = %49, %14
  %30 = phi i64 [ %50, %49 ], [ 0, %14 ]
  %31 = icmp slt i64 %30, 1400, !dbg !178
  br i1 %31, label %32, label %51, !dbg !179

32:                                               ; preds = %29
  %33 = trunc i64 %30 to i32, !dbg !180
  br label %34, !dbg !181

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %48, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 1200, !dbg !182
  br i1 %36, label %37, label %49, !dbg !183

37:                                               ; preds = %34
  %38 = trunc i64 %35 to i32, !dbg !184
  %39 = mul i32 %33, %38, !dbg !185
  %40 = sitofp i32 %39 to double, !dbg !186
  %41 = fdiv double %40, 1.200000e+03, !dbg !187
  %42 = sitofp i32 %33 to double, !dbg !188
  %43 = fadd double %41, %42, !dbg !189
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 1, !dbg !190
  %45 = mul i64 %30, 1200, !dbg !191
  %46 = add i64 %45, %35, !dbg !192
  %47 = getelementptr double, double* %44, i64 %46, !dbg !193
  store double %43, double* %47, align 8, !dbg !194
  %48 = add i64 %35, 1, !dbg !195
  br label %34, !dbg !196

49:                                               ; preds = %34
  %50 = add i64 %30, 1, !dbg !197
  br label %29, !dbg !198

51:                                               ; preds = %29
  ret void, !dbg !199
}

define void @_mlir_ciface_init_array(i32 %0, i32 %1, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, { double*, double*, i64, [2 x i64], [2 x i64] }* %3) !dbg !200 {
  %5 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !201
  %6 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 0, !dbg !203
  %7 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 1, !dbg !204
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 2, !dbg !205
  %9 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 3, 0, !dbg !206
  %10 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, 4, 0, !dbg !207
  %11 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %3, align 8, !dbg !208
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !209
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !210
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !211
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !212
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !213
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !214
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !215
  call void @init_array(i32 %0, i32 %1, double* %6, double* %7, i64 %8, i64 %9, i64 %10, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18), !dbg !216
  ret void, !dbg !217
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !218 {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !219
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1, !dbg !221
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !222
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !223
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !224
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !225
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !226
  %16 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !227
  %17 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !228
  %18 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !229
  %19 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str3, i32 0, i32 0)), !dbg !230
  %20 = sext i32 %0 to i64, !dbg !231
  br label %21, !dbg !232

21:                                               ; preds = %48, %8
  %22 = phi i64 [ %49, %48 ], [ 0, %8 ]
  %23 = icmp slt i64 %22, %20, !dbg !233
  br i1 %23, label %24, label %50, !dbg !234

24:                                               ; preds = %21
  %25 = trunc i64 %22 to i32, !dbg !235
  %26 = sext i32 %0 to i64, !dbg !236
  br label %27, !dbg !237

27:                                               ; preds = %39, %24
  %28 = phi i64 [ %47, %39 ], [ 0, %24 ]
  %29 = icmp slt i64 %28, %26, !dbg !238
  br i1 %29, label %30, label %48, !dbg !239

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32, !dbg !240
  %32 = mul i32 %25, %0, !dbg !241
  %33 = add i32 %32, %31, !dbg !242
  %34 = srem i32 %33, 20, !dbg !243
  %35 = icmp eq i32 %34, 0, !dbg !244
  br i1 %35, label %36, label %39, !dbg !245

36:                                               ; preds = %30
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !246
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !247
  br label %39, !dbg !248

39:                                               ; preds = %36, %30
  %40 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !249
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !250
  %42 = mul i64 %22, 1200, !dbg !251
  %43 = add i64 %42, %28, !dbg !252
  %44 = getelementptr double, double* %41, i64 %43, !dbg !253
  %45 = load double, double* %44, align 8, !dbg !254
  %46 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %45), !dbg !255
  %47 = add i64 %28, 1, !dbg !256
  br label %27, !dbg !257

48:                                               ; preds = %27
  %49 = add i64 %22, 1, !dbg !258
  br label %21, !dbg !259

50:                                               ; preds = %21
  %51 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !260
  %52 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str3, i32 0, i32 0)), !dbg !261
  %53 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !262
  %54 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !263
  ret void, !dbg !264
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1) !dbg !265 {
  %3 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !266
  %4 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !268
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !269
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !270
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !271
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !272
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !273
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !274
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !275
  ret void, !dbg !276
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_correlation", linkageName: "kernel_correlation", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!31 = !DILocation(line: 34, column: 11, scope: !8)
!32 = !DILocation(line: 35, column: 5, scope: !8)
!33 = !DILocation(line: 37, column: 11, scope: !8)
!34 = !DILocation(line: 38, column: 11, scope: !8)
!35 = !DILocation(line: 39, column: 11, scope: !8)
!36 = !DILocation(line: 40, column: 11, scope: !8)
!37 = !DILocation(line: 41, column: 11, scope: !8)
!38 = !DILocation(line: 43, column: 11, scope: !8)
!39 = !DILocation(line: 44, column: 5, scope: !8)
!40 = !DILocation(line: 45, column: 5, scope: !8)
!41 = !DILocation(line: 46, column: 5, scope: !8)
!42 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 60, type: !5, scopeLine: 60, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!43 = !DILocation(line: 73, column: 11, scope: !44)
!44 = !DILexicalBlockFile(scope: !42, file: !4, discriminator: 0)
!45 = !DILocation(line: 75, column: 11, scope: !44)
!46 = !DILocation(line: 76, column: 11, scope: !44)
!47 = !DILocation(line: 78, column: 11, scope: !44)
!48 = !DILocation(line: 79, column: 11, scope: !44)
!49 = !DILocation(line: 80, column: 11, scope: !44)
!50 = !DILocation(line: 88, column: 11, scope: !44)
!51 = !DILocation(line: 89, column: 11, scope: !44)
!52 = !DILocation(line: 91, column: 11, scope: !44)
!53 = !DILocation(line: 92, column: 11, scope: !44)
!54 = !DILocation(line: 94, column: 11, scope: !44)
!55 = !DILocation(line: 95, column: 11, scope: !44)
!56 = !DILocation(line: 96, column: 11, scope: !44)
!57 = !DILocation(line: 97, column: 11, scope: !44)
!58 = !DILocation(line: 98, column: 11, scope: !44)
!59 = !DILocation(line: 106, column: 11, scope: !44)
!60 = !DILocation(line: 107, column: 11, scope: !44)
!61 = !DILocation(line: 109, column: 11, scope: !44)
!62 = !DILocation(line: 110, column: 11, scope: !44)
!63 = !DILocation(line: 112, column: 11, scope: !44)
!64 = !DILocation(line: 113, column: 11, scope: !44)
!65 = !DILocation(line: 114, column: 11, scope: !44)
!66 = !DILocation(line: 115, column: 11, scope: !44)
!67 = !DILocation(line: 116, column: 11, scope: !44)
!68 = !DILocation(line: 122, column: 11, scope: !44)
!69 = !DILocation(line: 123, column: 11, scope: !44)
!70 = !DILocation(line: 125, column: 11, scope: !44)
!71 = !DILocation(line: 126, column: 11, scope: !44)
!72 = !DILocation(line: 128, column: 11, scope: !44)
!73 = !DILocation(line: 129, column: 11, scope: !44)
!74 = !DILocation(line: 130, column: 11, scope: !44)
!75 = !DILocation(line: 136, column: 11, scope: !44)
!76 = !DILocation(line: 137, column: 11, scope: !44)
!77 = !DILocation(line: 139, column: 11, scope: !44)
!78 = !DILocation(line: 140, column: 11, scope: !44)
!79 = !DILocation(line: 142, column: 11, scope: !44)
!80 = !DILocation(line: 143, column: 11, scope: !44)
!81 = !DILocation(line: 144, column: 11, scope: !44)
!82 = !DILocation(line: 145, column: 11, scope: !44)
!83 = !DILocation(line: 146, column: 11, scope: !44)
!84 = !DILocation(line: 147, column: 11, scope: !44)
!85 = !DILocation(line: 148, column: 11, scope: !44)
!86 = !DILocation(line: 149, column: 11, scope: !44)
!87 = !DILocation(line: 150, column: 11, scope: !44)
!88 = !DILocation(line: 151, column: 11, scope: !44)
!89 = !DILocation(line: 152, column: 11, scope: !44)
!90 = !DILocation(line: 153, column: 11, scope: !44)
!91 = !DILocation(line: 154, column: 11, scope: !44)
!92 = !DILocation(line: 155, column: 11, scope: !44)
!93 = !DILocation(line: 156, column: 11, scope: !44)
!94 = !DILocation(line: 157, column: 5, scope: !44)
!95 = !DILocation(line: 159, column: 11, scope: !44)
!96 = !DILocation(line: 160, column: 11, scope: !44)
!97 = !DILocation(line: 161, column: 11, scope: !44)
!98 = !DILocation(line: 162, column: 12, scope: !44)
!99 = !DILocation(line: 163, column: 12, scope: !44)
!100 = !DILocation(line: 164, column: 12, scope: !44)
!101 = !DILocation(line: 165, column: 12, scope: !44)
!102 = !DILocation(line: 166, column: 12, scope: !44)
!103 = !DILocation(line: 167, column: 12, scope: !44)
!104 = !DILocation(line: 168, column: 12, scope: !44)
!105 = !DILocation(line: 169, column: 12, scope: !44)
!106 = !DILocation(line: 170, column: 12, scope: !44)
!107 = !DILocation(line: 171, column: 12, scope: !44)
!108 = !DILocation(line: 172, column: 12, scope: !44)
!109 = !DILocation(line: 173, column: 12, scope: !44)
!110 = !DILocation(line: 174, column: 12, scope: !44)
!111 = !DILocation(line: 175, column: 12, scope: !44)
!112 = !DILocation(line: 176, column: 12, scope: !44)
!113 = !DILocation(line: 177, column: 12, scope: !44)
!114 = !DILocation(line: 178, column: 12, scope: !44)
!115 = !DILocation(line: 179, column: 12, scope: !44)
!116 = !DILocation(line: 180, column: 12, scope: !44)
!117 = !DILocation(line: 181, column: 12, scope: !44)
!118 = !DILocation(line: 182, column: 12, scope: !44)
!119 = !DILocation(line: 183, column: 12, scope: !44)
!120 = !DILocation(line: 184, column: 12, scope: !44)
!121 = !DILocation(line: 185, column: 12, scope: !44)
!122 = !DILocation(line: 186, column: 5, scope: !44)
!123 = !DILocation(line: 187, column: 12, scope: !44)
!124 = !DILocation(line: 188, column: 5, scope: !44)
!125 = !DILocation(line: 190, column: 12, scope: !44)
!126 = !DILocation(line: 191, column: 12, scope: !44)
!127 = !DILocation(line: 194, column: 12, scope: !44)
!128 = !DILocation(line: 195, column: 12, scope: !44)
!129 = !DILocation(line: 196, column: 12, scope: !44)
!130 = !DILocation(line: 197, column: 5, scope: !44)
!131 = !DILocation(line: 199, column: 5, scope: !44)
!132 = !DILocation(line: 201, column: 5, scope: !44)
!133 = !DILocation(line: 203, column: 5, scope: !44)
!134 = !DILocation(line: 205, column: 12, scope: !44)
!135 = !DILocation(line: 206, column: 12, scope: !44)
!136 = !DILocation(line: 207, column: 12, scope: !44)
!137 = !DILocation(line: 208, column: 12, scope: !44)
!138 = !DILocation(line: 209, column: 12, scope: !44)
!139 = !DILocation(line: 210, column: 12, scope: !44)
!140 = !DILocation(line: 211, column: 12, scope: !44)
!141 = !DILocation(line: 212, column: 5, scope: !44)
!142 = !DILocation(line: 213, column: 5, scope: !44)
!143 = !DILocation(line: 215, column: 12, scope: !44)
!144 = !DILocation(line: 216, column: 12, scope: !44)
!145 = !DILocation(line: 217, column: 5, scope: !44)
!146 = !DILocation(line: 218, column: 12, scope: !44)
!147 = !DILocation(line: 219, column: 12, scope: !44)
!148 = !DILocation(line: 220, column: 5, scope: !44)
!149 = !DILocation(line: 221, column: 12, scope: !44)
!150 = !DILocation(line: 222, column: 12, scope: !44)
!151 = !DILocation(line: 223, column: 5, scope: !44)
!152 = !DILocation(line: 224, column: 12, scope: !44)
!153 = !DILocation(line: 225, column: 12, scope: !44)
!154 = !DILocation(line: 226, column: 5, scope: !44)
!155 = !DILocation(line: 227, column: 5, scope: !44)
!156 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 229, type: !5, scopeLine: 229, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!157 = !DILocation(line: 230, column: 10, scope: !158)
!158 = !DILexicalBlockFile(scope: !156, file: !4, discriminator: 0)
!159 = !DILocation(line: 231, column: 5, scope: !158)
!160 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 233, type: !5, scopeLine: 233, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!161 = !DILocation(line: 235, column: 10, scope: !162)
!162 = !DILexicalBlockFile(scope: !160, file: !4, discriminator: 0)
!163 = !DILocation(line: 236, column: 10, scope: !162)
!164 = !DILocation(line: 237, column: 10, scope: !162)
!165 = !DILocation(line: 238, column: 10, scope: !162)
!166 = !DILocation(line: 239, column: 10, scope: !162)
!167 = !DILocation(line: 241, column: 10, scope: !162)
!168 = !DILocation(line: 242, column: 10, scope: !162)
!169 = !DILocation(line: 243, column: 10, scope: !162)
!170 = !DILocation(line: 244, column: 11, scope: !162)
!171 = !DILocation(line: 245, column: 11, scope: !162)
!172 = !DILocation(line: 246, column: 11, scope: !162)
!173 = !DILocation(line: 247, column: 11, scope: !162)
!174 = !DILocation(line: 255, column: 11, scope: !162)
!175 = !DILocation(line: 256, column: 11, scope: !162)
!176 = !DILocation(line: 257, column: 5, scope: !162)
!177 = !DILocation(line: 258, column: 5, scope: !162)
!178 = !DILocation(line: 260, column: 11, scope: !162)
!179 = !DILocation(line: 261, column: 5, scope: !162)
!180 = !DILocation(line: 263, column: 11, scope: !162)
!181 = !DILocation(line: 264, column: 5, scope: !162)
!182 = !DILocation(line: 266, column: 11, scope: !162)
!183 = !DILocation(line: 267, column: 5, scope: !162)
!184 = !DILocation(line: 269, column: 11, scope: !162)
!185 = !DILocation(line: 270, column: 11, scope: !162)
!186 = !DILocation(line: 271, column: 11, scope: !162)
!187 = !DILocation(line: 272, column: 11, scope: !162)
!188 = !DILocation(line: 273, column: 11, scope: !162)
!189 = !DILocation(line: 274, column: 11, scope: !162)
!190 = !DILocation(line: 275, column: 11, scope: !162)
!191 = !DILocation(line: 277, column: 11, scope: !162)
!192 = !DILocation(line: 278, column: 11, scope: !162)
!193 = !DILocation(line: 279, column: 11, scope: !162)
!194 = !DILocation(line: 280, column: 5, scope: !162)
!195 = !DILocation(line: 281, column: 11, scope: !162)
!196 = !DILocation(line: 282, column: 5, scope: !162)
!197 = !DILocation(line: 284, column: 11, scope: !162)
!198 = !DILocation(line: 285, column: 5, scope: !162)
!199 = !DILocation(line: 287, column: 5, scope: !162)
!200 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 289, type: !5, scopeLine: 289, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!201 = !DILocation(line: 290, column: 10, scope: !202)
!202 = !DILexicalBlockFile(scope: !200, file: !4, discriminator: 0)
!203 = !DILocation(line: 291, column: 10, scope: !202)
!204 = !DILocation(line: 292, column: 10, scope: !202)
!205 = !DILocation(line: 293, column: 10, scope: !202)
!206 = !DILocation(line: 294, column: 10, scope: !202)
!207 = !DILocation(line: 295, column: 10, scope: !202)
!208 = !DILocation(line: 296, column: 10, scope: !202)
!209 = !DILocation(line: 297, column: 10, scope: !202)
!210 = !DILocation(line: 298, column: 10, scope: !202)
!211 = !DILocation(line: 299, column: 10, scope: !202)
!212 = !DILocation(line: 300, column: 11, scope: !202)
!213 = !DILocation(line: 301, column: 11, scope: !202)
!214 = !DILocation(line: 302, column: 11, scope: !202)
!215 = !DILocation(line: 303, column: 11, scope: !202)
!216 = !DILocation(line: 304, column: 5, scope: !202)
!217 = !DILocation(line: 305, column: 5, scope: !202)
!218 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 307, type: !5, scopeLine: 307, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!219 = !DILocation(line: 309, column: 10, scope: !220)
!220 = !DILexicalBlockFile(scope: !218, file: !4, discriminator: 0)
!221 = !DILocation(line: 310, column: 10, scope: !220)
!222 = !DILocation(line: 311, column: 10, scope: !220)
!223 = !DILocation(line: 312, column: 10, scope: !220)
!224 = !DILocation(line: 313, column: 10, scope: !220)
!225 = !DILocation(line: 314, column: 10, scope: !220)
!226 = !DILocation(line: 315, column: 10, scope: !220)
!227 = !DILocation(line: 321, column: 11, scope: !220)
!228 = !DILocation(line: 324, column: 11, scope: !220)
!229 = !DILocation(line: 326, column: 11, scope: !220)
!230 = !DILocation(line: 331, column: 11, scope: !220)
!231 = !DILocation(line: 332, column: 11, scope: !220)
!232 = !DILocation(line: 333, column: 5, scope: !220)
!233 = !DILocation(line: 335, column: 11, scope: !220)
!234 = !DILocation(line: 336, column: 5, scope: !220)
!235 = !DILocation(line: 338, column: 11, scope: !220)
!236 = !DILocation(line: 339, column: 11, scope: !220)
!237 = !DILocation(line: 340, column: 5, scope: !220)
!238 = !DILocation(line: 342, column: 11, scope: !220)
!239 = !DILocation(line: 343, column: 5, scope: !220)
!240 = !DILocation(line: 345, column: 11, scope: !220)
!241 = !DILocation(line: 346, column: 11, scope: !220)
!242 = !DILocation(line: 347, column: 11, scope: !220)
!243 = !DILocation(line: 348, column: 11, scope: !220)
!244 = !DILocation(line: 349, column: 11, scope: !220)
!245 = !DILocation(line: 350, column: 5, scope: !220)
!246 = !DILocation(line: 353, column: 11, scope: !220)
!247 = !DILocation(line: 356, column: 11, scope: !220)
!248 = !DILocation(line: 357, column: 5, scope: !220)
!249 = !DILocation(line: 360, column: 11, scope: !220)
!250 = !DILocation(line: 363, column: 11, scope: !220)
!251 = !DILocation(line: 365, column: 11, scope: !220)
!252 = !DILocation(line: 366, column: 11, scope: !220)
!253 = !DILocation(line: 367, column: 11, scope: !220)
!254 = !DILocation(line: 368, column: 11, scope: !220)
!255 = !DILocation(line: 369, column: 11, scope: !220)
!256 = !DILocation(line: 370, column: 11, scope: !220)
!257 = !DILocation(line: 371, column: 5, scope: !220)
!258 = !DILocation(line: 373, column: 11, scope: !220)
!259 = !DILocation(line: 374, column: 5, scope: !220)
!260 = !DILocation(line: 377, column: 11, scope: !220)
!261 = !DILocation(line: 382, column: 11, scope: !220)
!262 = !DILocation(line: 384, column: 11, scope: !220)
!263 = !DILocation(line: 387, column: 11, scope: !220)
!264 = !DILocation(line: 388, column: 5, scope: !220)
!265 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 390, type: !5, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!266 = !DILocation(line: 391, column: 10, scope: !267)
!267 = !DILexicalBlockFile(scope: !265, file: !4, discriminator: 0)
!268 = !DILocation(line: 392, column: 10, scope: !267)
!269 = !DILocation(line: 393, column: 10, scope: !267)
!270 = !DILocation(line: 394, column: 10, scope: !267)
!271 = !DILocation(line: 395, column: 10, scope: !267)
!272 = !DILocation(line: 396, column: 10, scope: !267)
!273 = !DILocation(line: 397, column: 10, scope: !267)
!274 = !DILocation(line: 398, column: 10, scope: !267)
!275 = !DILocation(line: 399, column: 5, scope: !267)
!276 = !DILocation(line: 400, column: 5, scope: !267)
