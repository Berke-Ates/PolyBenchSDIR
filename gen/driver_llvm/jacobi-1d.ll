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
@str3 = internal constant [2 x i8] c"A\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_jacobi_1d(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11) !dbg !3 {
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0, !dbg !7
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, double* %3, 1, !dbg !9
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 %4, 2, !dbg !10
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 %5, 3, 0, !dbg !11
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 %6, 4, 0, !dbg !12
  %18 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !13
  store { double*, double*, i64, [1 x i64], [1 x i64] } %17, { double*, double*, i64, [1 x i64], [1 x i64] }* %18, align 8, !dbg !14
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %7, 0, !dbg !15
  %20 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, double* %8, 1, !dbg !16
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, i64 %9, 2, !dbg !17
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, i64 %10, 3, 0, !dbg !18
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, i64 %11, 4, 0, !dbg !19
  %24 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !20
  store { double*, double*, i64, [1 x i64], [1 x i64] } %23, { double*, double*, i64, [1 x i64], [1 x i64] }* %24, align 8, !dbg !21
  call void @__program_kernel_jacobi_1d(i32 %0, i32 %1, { double*, double*, i64, [1 x i64], [1 x i64] }* %18, { double*, double*, i64, [1 x i64], [1 x i64] }* %24), !dbg !22
  ret void, !dbg !23
}

declare void @__program_kernel_jacobi_1d(i32, i32, { double*, double*, i64, [1 x i64], [1 x i64] }*, { double*, double*, i64, [1 x i64], [1 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !24 {
  %3 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 2000) to i64)), !dbg !25
  %4 = bitcast i8* %3 to double*, !dbg !27
  %5 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %4, 0, !dbg !28
  %6 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, double* %4, 1, !dbg !29
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %6, i64 0, 2, !dbg !30
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, i64 2000, 3, 0, !dbg !31
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 1, 4, 0, !dbg !32
  %10 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 2000) to i64)), !dbg !33
  %11 = bitcast i8* %10 to double*, !dbg !34
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %11, 0, !dbg !35
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, double* %11, 1, !dbg !36
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 0, 2, !dbg !37
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 2000, 3, 0, !dbg !38
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 1, 4, 0, !dbg !39
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0, !dbg !40
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 1, !dbg !41
  %19 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 2, !dbg !42
  %20 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 3, 0, !dbg !43
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 4, 0, !dbg !44
  %22 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0, !dbg !45
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1, !dbg !46
  %24 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 2, !dbg !47
  %25 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 3, 0, !dbg !48
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 4, 0, !dbg !49
  call void @init_array(i32 2000, double* %17, double* %18, i64 %19, i64 %20, i64 %21, double* %22, double* %23, i64 %24, i64 %25, i64 %26), !dbg !50
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0, !dbg !51
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 1, !dbg !52
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 2, !dbg !53
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 3, 0, !dbg !54
  %31 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 4, 0, !dbg !55
  %32 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0, !dbg !56
  %33 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1, !dbg !57
  %34 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 2, !dbg !58
  %35 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 3, 0, !dbg !59
  %36 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 4, 0, !dbg !60
  call void @kernel_jacobi_1d(i32 500, i32 2000, double* %27, double* %28, i64 %29, i64 %30, i64 %31, double* %32, double* %33, i64 %34, i64 %35, i64 %36), !dbg !61
  %37 = icmp sgt i32 %0, 42, !dbg !62
  br i1 %37, label %38, label %44, !dbg !63

38:                                               ; preds = %2
  %39 = getelementptr i8*, i8** %1, i64 0, !dbg !64
  %40 = load i8*, i8** %39, align 8, !dbg !65
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !66
  %42 = trunc i32 %41 to i1, !dbg !67
  %43 = xor i1 %42, true, !dbg !68
  br label %45, !dbg !69

44:                                               ; preds = %2
  br label %45, !dbg !70

45:                                               ; preds = %38, %44
  %46 = phi i1 [ false, %44 ], [ %43, %38 ]
  br label %47, !dbg !71

47:                                               ; preds = %45
  br i1 %46, label %48, label %54, !dbg !72

48:                                               ; preds = %47
  %49 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0, !dbg !73
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 1, !dbg !74
  %51 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 2, !dbg !75
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 3, 0, !dbg !76
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 4, 0, !dbg !77
  call void @print_array(i32 2000, double* %49, double* %50, i64 %51, i64 %52, i64 %53), !dbg !78
  br label %54, !dbg !79

54:                                               ; preds = %48, %47
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0, !dbg !80
  %56 = bitcast double* %55 to i8*, !dbg !81
  call void @free(i8* %56), !dbg !82
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0, !dbg !83
  %58 = bitcast double* %57 to i8*, !dbg !84
  call void @free(i8* %58), !dbg !85
  ret i32 0, !dbg !86
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !87 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !88
  ret i32 %3, !dbg !90
}

define internal void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10) !dbg !91 {
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0, !dbg !92
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, double* %2, 1, !dbg !94
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 %3, 2, !dbg !95
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 %4, 3, 0, !dbg !96
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 %5, 4, 0, !dbg !97
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0, !dbg !98
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, double* %7, 1, !dbg !99
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, i64 %8, 2, !dbg !100
  %20 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, i64 %9, 3, 0, !dbg !101
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, i64 %10, 4, 0, !dbg !102
  %22 = sext i32 %0 to i64, !dbg !103
  br label %23, !dbg !104

23:                                               ; preds = %26, %11
  %24 = phi i64 [ %40, %26 ], [ 0, %11 ]
  %25 = icmp slt i64 %24, %22, !dbg !105
  br i1 %25, label %26, label %41, !dbg !106

26:                                               ; preds = %23
  %27 = trunc i64 %24 to i32, !dbg !107
  %28 = sitofp i32 %27 to double, !dbg !108
  %29 = fadd double %28, 2.000000e+00, !dbg !109
  %30 = sitofp i32 %0 to double, !dbg !110
  %31 = fdiv double %29, %30, !dbg !111
  %32 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1, !dbg !112
  %33 = getelementptr double, double* %32, i64 %24, !dbg !113
  store double %31, double* %33, align 8, !dbg !114
  %34 = sitofp i32 %27 to double, !dbg !115
  %35 = fadd double %34, 3.000000e+00, !dbg !116
  %36 = sitofp i32 %0 to double, !dbg !117
  %37 = fdiv double %35, %36, !dbg !118
  %38 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !119
  %39 = getelementptr double, double* %38, i64 %24, !dbg !120
  store double %37, double* %39, align 8, !dbg !121
  %40 = add i64 %24, 1, !dbg !122
  br label %23, !dbg !123

41:                                               ; preds = %23
  ret void, !dbg !124
}

define void @_mlir_ciface_init_array(i32 %0, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, { double*, double*, i64, [1 x i64], [1 x i64] }* %2) !dbg !125 {
  %4 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !126
  %5 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, 0, !dbg !128
  %6 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, 1, !dbg !129
  %7 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, 2, !dbg !130
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, 3, 0, !dbg !131
  %9 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, 4, 0, !dbg !132
  %10 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %2, align 8, !dbg !133
  %11 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, 0, !dbg !134
  %12 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, 1, !dbg !135
  %13 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, 2, !dbg !136
  %14 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, 3, 0, !dbg !137
  %15 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, 4, 0, !dbg !138
  call void @init_array(i32 %0, double* %5, double* %6, i64 %7, i64 %8, i64 %9, double* %11, double* %12, i64 %13, i64 %14, i64 %15), !dbg !139
  ret void, !dbg !140
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5) !dbg !141 {
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0, !dbg !142
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, double* %2, 1, !dbg !144
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 %3, 2, !dbg !145
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, i64 %4, 3, 0, !dbg !146
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, i64 %5, 4, 0, !dbg !147
  %12 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !148
  %13 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !149
  %14 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !150
  %15 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !151
  %16 = sext i32 %0 to i64, !dbg !152
  br label %17, !dbg !153

17:                                               ; preds = %27, %6
  %18 = phi i64 [ %33, %27 ], [ 0, %6 ]
  %19 = icmp slt i64 %18, %16, !dbg !154
  br i1 %19, label %20, label %34, !dbg !155

20:                                               ; preds = %17
  %21 = trunc i64 %18 to i32, !dbg !156
  %22 = srem i32 %21, 20, !dbg !157
  %23 = icmp eq i32 %22, 0, !dbg !158
  br i1 %23, label %24, label %27, !dbg !159

24:                                               ; preds = %20
  %25 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !160
  %26 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !161
  br label %27, !dbg !162

27:                                               ; preds = %24, %20
  %28 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !163
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1, !dbg !164
  %30 = getelementptr double, double* %29, i64 %18, !dbg !165
  %31 = load double, double* %30, align 8, !dbg !166
  %32 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %31), !dbg !167
  %33 = add i64 %18, 1, !dbg !168
  br label %17, !dbg !169

34:                                               ; preds = %17
  %35 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !170
  %36 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !171
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !172
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !173
  ret void, !dbg !174
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [1 x i64], [1 x i64] }* %1) !dbg !175 {
  %3 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !176
  %4 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 0, !dbg !178
  %5 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 1, !dbg !179
  %6 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 2, !dbg !180
  %7 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 3, 0, !dbg !181
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 4, 0, !dbg !182
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8), !dbg !183
  ret void, !dbg !184
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_jacobi_1d", linkageName: "kernel_jacobi_1d", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "<stdin>", directory: "/home/xdb/bachelor-thesis/workspace/mlir-dace/.idea/PolyBenchSDIR/")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 6, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 7, column: 10, scope: !8)
!10 = !DILocation(line: 8, column: 10, scope: !8)
!11 = !DILocation(line: 9, column: 10, scope: !8)
!12 = !DILocation(line: 10, column: 10, scope: !8)
!13 = !DILocation(line: 12, column: 10, scope: !8)
!14 = !DILocation(line: 13, column: 5, scope: !8)
!15 = !DILocation(line: 15, column: 10, scope: !8)
!16 = !DILocation(line: 16, column: 11, scope: !8)
!17 = !DILocation(line: 17, column: 11, scope: !8)
!18 = !DILocation(line: 18, column: 11, scope: !8)
!19 = !DILocation(line: 19, column: 11, scope: !8)
!20 = !DILocation(line: 21, column: 11, scope: !8)
!21 = !DILocation(line: 22, column: 5, scope: !8)
!22 = !DILocation(line: 23, column: 5, scope: !8)
!23 = !DILocation(line: 24, column: 5, scope: !8)
!24 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!25 = !DILocation(line: 51, column: 11, scope: !26)
!26 = !DILexicalBlockFile(scope: !24, file: !4, discriminator: 0)
!27 = !DILocation(line: 52, column: 11, scope: !26)
!28 = !DILocation(line: 54, column: 11, scope: !26)
!29 = !DILocation(line: 55, column: 11, scope: !26)
!30 = !DILocation(line: 57, column: 11, scope: !26)
!31 = !DILocation(line: 58, column: 11, scope: !26)
!32 = !DILocation(line: 59, column: 11, scope: !26)
!33 = !DILocation(line: 65, column: 11, scope: !26)
!34 = !DILocation(line: 66, column: 11, scope: !26)
!35 = !DILocation(line: 68, column: 11, scope: !26)
!36 = !DILocation(line: 69, column: 11, scope: !26)
!37 = !DILocation(line: 71, column: 11, scope: !26)
!38 = !DILocation(line: 72, column: 11, scope: !26)
!39 = !DILocation(line: 73, column: 11, scope: !26)
!40 = !DILocation(line: 74, column: 11, scope: !26)
!41 = !DILocation(line: 75, column: 11, scope: !26)
!42 = !DILocation(line: 76, column: 11, scope: !26)
!43 = !DILocation(line: 77, column: 11, scope: !26)
!44 = !DILocation(line: 78, column: 11, scope: !26)
!45 = !DILocation(line: 79, column: 11, scope: !26)
!46 = !DILocation(line: 80, column: 11, scope: !26)
!47 = !DILocation(line: 81, column: 11, scope: !26)
!48 = !DILocation(line: 82, column: 11, scope: !26)
!49 = !DILocation(line: 83, column: 11, scope: !26)
!50 = !DILocation(line: 84, column: 5, scope: !26)
!51 = !DILocation(line: 85, column: 11, scope: !26)
!52 = !DILocation(line: 86, column: 11, scope: !26)
!53 = !DILocation(line: 87, column: 11, scope: !26)
!54 = !DILocation(line: 88, column: 11, scope: !26)
!55 = !DILocation(line: 89, column: 11, scope: !26)
!56 = !DILocation(line: 90, column: 11, scope: !26)
!57 = !DILocation(line: 91, column: 11, scope: !26)
!58 = !DILocation(line: 92, column: 11, scope: !26)
!59 = !DILocation(line: 93, column: 11, scope: !26)
!60 = !DILocation(line: 94, column: 11, scope: !26)
!61 = !DILocation(line: 95, column: 5, scope: !26)
!62 = !DILocation(line: 96, column: 11, scope: !26)
!63 = !DILocation(line: 97, column: 5, scope: !26)
!64 = !DILocation(line: 99, column: 11, scope: !26)
!65 = !DILocation(line: 100, column: 11, scope: !26)
!66 = !DILocation(line: 103, column: 11, scope: !26)
!67 = !DILocation(line: 104, column: 11, scope: !26)
!68 = !DILocation(line: 105, column: 11, scope: !26)
!69 = !DILocation(line: 106, column: 5, scope: !26)
!70 = !DILocation(line: 108, column: 5, scope: !26)
!71 = !DILocation(line: 110, column: 5, scope: !26)
!72 = !DILocation(line: 112, column: 5, scope: !26)
!73 = !DILocation(line: 114, column: 11, scope: !26)
!74 = !DILocation(line: 115, column: 11, scope: !26)
!75 = !DILocation(line: 116, column: 11, scope: !26)
!76 = !DILocation(line: 117, column: 11, scope: !26)
!77 = !DILocation(line: 118, column: 11, scope: !26)
!78 = !DILocation(line: 119, column: 5, scope: !26)
!79 = !DILocation(line: 120, column: 5, scope: !26)
!80 = !DILocation(line: 122, column: 11, scope: !26)
!81 = !DILocation(line: 123, column: 11, scope: !26)
!82 = !DILocation(line: 124, column: 5, scope: !26)
!83 = !DILocation(line: 125, column: 11, scope: !26)
!84 = !DILocation(line: 126, column: 11, scope: !26)
!85 = !DILocation(line: 127, column: 5, scope: !26)
!86 = !DILocation(line: 128, column: 5, scope: !26)
!87 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 130, type: !5, scopeLine: 130, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!88 = !DILocation(line: 131, column: 10, scope: !89)
!89 = !DILexicalBlockFile(scope: !87, file: !4, discriminator: 0)
!90 = !DILocation(line: 132, column: 5, scope: !89)
!91 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 134, type: !5, scopeLine: 134, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!92 = !DILocation(line: 136, column: 10, scope: !93)
!93 = !DILexicalBlockFile(scope: !91, file: !4, discriminator: 0)
!94 = !DILocation(line: 137, column: 10, scope: !93)
!95 = !DILocation(line: 138, column: 10, scope: !93)
!96 = !DILocation(line: 139, column: 10, scope: !93)
!97 = !DILocation(line: 140, column: 10, scope: !93)
!98 = !DILocation(line: 142, column: 10, scope: !93)
!99 = !DILocation(line: 143, column: 10, scope: !93)
!100 = !DILocation(line: 144, column: 10, scope: !93)
!101 = !DILocation(line: 145, column: 11, scope: !93)
!102 = !DILocation(line: 146, column: 11, scope: !93)
!103 = !DILocation(line: 151, column: 11, scope: !93)
!104 = !DILocation(line: 152, column: 5, scope: !93)
!105 = !DILocation(line: 154, column: 11, scope: !93)
!106 = !DILocation(line: 155, column: 5, scope: !93)
!107 = !DILocation(line: 157, column: 11, scope: !93)
!108 = !DILocation(line: 158, column: 11, scope: !93)
!109 = !DILocation(line: 159, column: 11, scope: !93)
!110 = !DILocation(line: 160, column: 11, scope: !93)
!111 = !DILocation(line: 161, column: 11, scope: !93)
!112 = !DILocation(line: 162, column: 11, scope: !93)
!113 = !DILocation(line: 163, column: 11, scope: !93)
!114 = !DILocation(line: 164, column: 5, scope: !93)
!115 = !DILocation(line: 165, column: 11, scope: !93)
!116 = !DILocation(line: 166, column: 11, scope: !93)
!117 = !DILocation(line: 167, column: 11, scope: !93)
!118 = !DILocation(line: 168, column: 11, scope: !93)
!119 = !DILocation(line: 169, column: 11, scope: !93)
!120 = !DILocation(line: 170, column: 11, scope: !93)
!121 = !DILocation(line: 171, column: 5, scope: !93)
!122 = !DILocation(line: 172, column: 11, scope: !93)
!123 = !DILocation(line: 173, column: 5, scope: !93)
!124 = !DILocation(line: 175, column: 5, scope: !93)
!125 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 177, type: !5, scopeLine: 177, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!126 = !DILocation(line: 178, column: 10, scope: !127)
!127 = !DILexicalBlockFile(scope: !125, file: !4, discriminator: 0)
!128 = !DILocation(line: 179, column: 10, scope: !127)
!129 = !DILocation(line: 180, column: 10, scope: !127)
!130 = !DILocation(line: 181, column: 10, scope: !127)
!131 = !DILocation(line: 182, column: 10, scope: !127)
!132 = !DILocation(line: 183, column: 10, scope: !127)
!133 = !DILocation(line: 184, column: 10, scope: !127)
!134 = !DILocation(line: 185, column: 10, scope: !127)
!135 = !DILocation(line: 186, column: 10, scope: !127)
!136 = !DILocation(line: 187, column: 10, scope: !127)
!137 = !DILocation(line: 188, column: 11, scope: !127)
!138 = !DILocation(line: 189, column: 11, scope: !127)
!139 = !DILocation(line: 190, column: 5, scope: !127)
!140 = !DILocation(line: 191, column: 5, scope: !127)
!141 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 193, type: !5, scopeLine: 193, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!142 = !DILocation(line: 195, column: 10, scope: !143)
!143 = !DILexicalBlockFile(scope: !141, file: !4, discriminator: 0)
!144 = !DILocation(line: 196, column: 10, scope: !143)
!145 = !DILocation(line: 197, column: 10, scope: !143)
!146 = !DILocation(line: 198, column: 10, scope: !143)
!147 = !DILocation(line: 199, column: 10, scope: !143)
!148 = !DILocation(line: 205, column: 11, scope: !143)
!149 = !DILocation(line: 208, column: 11, scope: !143)
!150 = !DILocation(line: 210, column: 11, scope: !143)
!151 = !DILocation(line: 215, column: 11, scope: !143)
!152 = !DILocation(line: 216, column: 11, scope: !143)
!153 = !DILocation(line: 217, column: 5, scope: !143)
!154 = !DILocation(line: 219, column: 11, scope: !143)
!155 = !DILocation(line: 220, column: 5, scope: !143)
!156 = !DILocation(line: 222, column: 11, scope: !143)
!157 = !DILocation(line: 223, column: 11, scope: !143)
!158 = !DILocation(line: 224, column: 11, scope: !143)
!159 = !DILocation(line: 225, column: 5, scope: !143)
!160 = !DILocation(line: 228, column: 11, scope: !143)
!161 = !DILocation(line: 231, column: 11, scope: !143)
!162 = !DILocation(line: 232, column: 5, scope: !143)
!163 = !DILocation(line: 235, column: 11, scope: !143)
!164 = !DILocation(line: 238, column: 11, scope: !143)
!165 = !DILocation(line: 239, column: 11, scope: !143)
!166 = !DILocation(line: 240, column: 11, scope: !143)
!167 = !DILocation(line: 241, column: 11, scope: !143)
!168 = !DILocation(line: 242, column: 11, scope: !143)
!169 = !DILocation(line: 243, column: 5, scope: !143)
!170 = !DILocation(line: 246, column: 11, scope: !143)
!171 = !DILocation(line: 251, column: 11, scope: !143)
!172 = !DILocation(line: 253, column: 11, scope: !143)
!173 = !DILocation(line: 256, column: 11, scope: !143)
!174 = !DILocation(line: 257, column: 5, scope: !143)
!175 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 259, type: !5, scopeLine: 259, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!176 = !DILocation(line: 260, column: 10, scope: !177)
!177 = !DILexicalBlockFile(scope: !175, file: !4, discriminator: 0)
!178 = !DILocation(line: 261, column: 10, scope: !177)
!179 = !DILocation(line: 262, column: 10, scope: !177)
!180 = !DILocation(line: 263, column: 10, scope: !177)
!181 = !DILocation(line: 264, column: 10, scope: !177)
!182 = !DILocation(line: 265, column: 10, scope: !177)
!183 = !DILocation(line: 266, column: 5, scope: !177)
!184 = !DILocation(line: 267, column: 5, scope: !177)
