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

define void @kernel_seidel_2d(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) !dbg !3 {
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !7
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, double* %3, 1, !dbg !9
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 2, !dbg !10
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %5, 3, 0, !dbg !11
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %7, 4, 0, !dbg !12
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %6, 3, 1, !dbg !13
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 %8, 4, 1, !dbg !14
  %17 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { double*, double*, i64, [2 x i64], [2 x i64] } %16, { double*, double*, i64, [2 x i64], [2 x i64] }* %17, align 8, !dbg !16
  call void @__program_kernel_seidel_2d(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %17), !dbg !17
  ret void, !dbg !18
}

declare void @__program_kernel_seidel_2d(i32, i32, { double*, double*, i64, [2 x i64], [2 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !19 {
  %3 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 4000000) to i64)), !dbg !20
  %4 = bitcast i8* %3 to double*, !dbg !22
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0, !dbg !23
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1, !dbg !24
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2, !dbg !25
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 2000, 3, 0, !dbg !26
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 2000, 3, 1, !dbg !27
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 2000, 4, 0, !dbg !28
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1, !dbg !29
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !30
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !31
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !32
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !33
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !34
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !35
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !36
  call void @init_array(i32 2000, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18), !dbg !37
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !38
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !39
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !40
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !41
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !42
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !43
  %25 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !44
  call void @kernel_seidel_2d(i32 500, i32 2000, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25), !dbg !45
  %26 = icmp sgt i32 %0, 42, !dbg !46
  br i1 %26, label %27, label %33, !dbg !47

27:                                               ; preds = %2
  %28 = getelementptr i8*, i8** %1, i64 0, !dbg !48
  %29 = load i8*, i8** %28, align 8, !dbg !49
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !50
  %31 = trunc i32 %30 to i1, !dbg !51
  %32 = xor i1 %31, true, !dbg !52
  br label %34, !dbg !53

33:                                               ; preds = %2
  br label %34, !dbg !54

34:                                               ; preds = %27, %33
  %35 = phi i1 [ false, %33 ], [ %32, %27 ]
  br label %36, !dbg !55

36:                                               ; preds = %34
  br i1 %35, label %37, label %45, !dbg !56

37:                                               ; preds = %36
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !57
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !58
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !59
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !60
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !61
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !62
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !63
  call void @print_array(i32 2000, double* %38, double* %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44), !dbg !64
  br label %45, !dbg !65

45:                                               ; preds = %37, %36
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !66
  %47 = bitcast double* %46 to i8*, !dbg !67
  call void @free(i8* %47), !dbg !68
  ret i32 0, !dbg !69
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !70 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !71
  ret i32 %3, !dbg !73
}

define internal void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !74 {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !75
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1, !dbg !77
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !78
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !79
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !80
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !81
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !82
  %16 = sext i32 %0 to i64, !dbg !83
  br label %17, !dbg !84

17:                                               ; preds = %40, %8
  %18 = phi i64 [ %41, %40 ], [ 0, %8 ]
  %19 = icmp slt i64 %18, %16, !dbg !85
  br i1 %19, label %20, label %42, !dbg !86

20:                                               ; preds = %17
  %21 = trunc i64 %18 to i32, !dbg !87
  %22 = sext i32 %0 to i64, !dbg !88
  br label %23, !dbg !89

23:                                               ; preds = %26, %20
  %24 = phi i64 [ %39, %26 ], [ 0, %20 ]
  %25 = icmp slt i64 %24, %22, !dbg !90
  br i1 %25, label %26, label %40, !dbg !91

26:                                               ; preds = %23
  %27 = trunc i64 %24 to i32, !dbg !92
  %28 = sitofp i32 %21 to double, !dbg !93
  %29 = add i32 %27, 2, !dbg !94
  %30 = sitofp i32 %29 to double, !dbg !95
  %31 = fmul double %28, %30, !dbg !96
  %32 = fadd double %31, 2.000000e+00, !dbg !97
  %33 = sitofp i32 %0 to double, !dbg !98
  %34 = fdiv double %32, %33, !dbg !99
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !100
  %36 = mul i64 %18, 2000, !dbg !101
  %37 = add i64 %36, %24, !dbg !102
  %38 = getelementptr double, double* %35, i64 %37, !dbg !103
  store double %34, double* %38, align 8, !dbg !104
  %39 = add i64 %24, 1, !dbg !105
  br label %23, !dbg !106

40:                                               ; preds = %23
  %41 = add i64 %18, 1, !dbg !107
  br label %17, !dbg !108

42:                                               ; preds = %17
  ret void, !dbg !109
}

define void @_mlir_ciface_init_array(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1) !dbg !110 {
  %3 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !111
  %4 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !113
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !114
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !115
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !116
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !117
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !118
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !119
  call void @init_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !120
  ret void, !dbg !121
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !122 {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0, !dbg !123
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1, !dbg !125
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !126
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !127
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !128
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !129
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !130
  %16 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !131
  %17 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !132
  %18 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !133
  %19 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !134
  %20 = sext i32 %0 to i64, !dbg !135
  br label %21, !dbg !136

21:                                               ; preds = %48, %8
  %22 = phi i64 [ %49, %48 ], [ 0, %8 ]
  %23 = icmp slt i64 %22, %20, !dbg !137
  br i1 %23, label %24, label %50, !dbg !138

24:                                               ; preds = %21
  %25 = trunc i64 %22 to i32, !dbg !139
  %26 = sext i32 %0 to i64, !dbg !140
  br label %27, !dbg !141

27:                                               ; preds = %39, %24
  %28 = phi i64 [ %47, %39 ], [ 0, %24 ]
  %29 = icmp slt i64 %28, %26, !dbg !142
  br i1 %29, label %30, label %48, !dbg !143

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32, !dbg !144
  %32 = mul i32 %25, %0, !dbg !145
  %33 = add i32 %32, %31, !dbg !146
  %34 = srem i32 %33, 20, !dbg !147
  %35 = icmp eq i32 %34, 0, !dbg !148
  br i1 %35, label %36, label %39, !dbg !149

36:                                               ; preds = %30
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !150
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !151
  br label %39, !dbg !152

39:                                               ; preds = %36, %30
  %40 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !153
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !154
  %42 = mul i64 %22, 2000, !dbg !155
  %43 = add i64 %42, %28, !dbg !156
  %44 = getelementptr double, double* %41, i64 %43, !dbg !157
  %45 = load double, double* %44, align 8, !dbg !158
  %46 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %45), !dbg !159
  %47 = add i64 %28, 1, !dbg !160
  br label %27, !dbg !161

48:                                               ; preds = %27
  %49 = add i64 %22, 1, !dbg !162
  br label %21, !dbg !163

50:                                               ; preds = %21
  %51 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !164
  %52 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !165
  %53 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !166
  %54 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !167
  ret void, !dbg !168
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [2 x i64], [2 x i64] }* %1) !dbg !169 {
  %3 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !170
  %4 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !172
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !173
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !174
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !175
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !176
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !177
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !178
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !179
  ret void, !dbg !180
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_seidel_2d", linkageName: "kernel_seidel_2d", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!17 = !DILocation(line: 16, column: 5, scope: !8)
!18 = !DILocation(line: 17, column: 5, scope: !8)
!19 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!20 = !DILocation(line: 46, column: 11, scope: !21)
!21 = !DILexicalBlockFile(scope: !19, file: !4, discriminator: 0)
!22 = !DILocation(line: 47, column: 11, scope: !21)
!23 = !DILocation(line: 49, column: 11, scope: !21)
!24 = !DILocation(line: 50, column: 11, scope: !21)
!25 = !DILocation(line: 52, column: 11, scope: !21)
!26 = !DILocation(line: 53, column: 11, scope: !21)
!27 = !DILocation(line: 54, column: 11, scope: !21)
!28 = !DILocation(line: 55, column: 11, scope: !21)
!29 = !DILocation(line: 56, column: 11, scope: !21)
!30 = !DILocation(line: 57, column: 11, scope: !21)
!31 = !DILocation(line: 58, column: 11, scope: !21)
!32 = !DILocation(line: 59, column: 11, scope: !21)
!33 = !DILocation(line: 60, column: 11, scope: !21)
!34 = !DILocation(line: 61, column: 11, scope: !21)
!35 = !DILocation(line: 62, column: 11, scope: !21)
!36 = !DILocation(line: 63, column: 11, scope: !21)
!37 = !DILocation(line: 64, column: 5, scope: !21)
!38 = !DILocation(line: 65, column: 11, scope: !21)
!39 = !DILocation(line: 66, column: 11, scope: !21)
!40 = !DILocation(line: 67, column: 11, scope: !21)
!41 = !DILocation(line: 68, column: 11, scope: !21)
!42 = !DILocation(line: 69, column: 11, scope: !21)
!43 = !DILocation(line: 70, column: 11, scope: !21)
!44 = !DILocation(line: 71, column: 11, scope: !21)
!45 = !DILocation(line: 72, column: 5, scope: !21)
!46 = !DILocation(line: 73, column: 11, scope: !21)
!47 = !DILocation(line: 74, column: 5, scope: !21)
!48 = !DILocation(line: 76, column: 11, scope: !21)
!49 = !DILocation(line: 77, column: 11, scope: !21)
!50 = !DILocation(line: 80, column: 11, scope: !21)
!51 = !DILocation(line: 81, column: 11, scope: !21)
!52 = !DILocation(line: 82, column: 11, scope: !21)
!53 = !DILocation(line: 83, column: 5, scope: !21)
!54 = !DILocation(line: 85, column: 5, scope: !21)
!55 = !DILocation(line: 87, column: 5, scope: !21)
!56 = !DILocation(line: 89, column: 5, scope: !21)
!57 = !DILocation(line: 91, column: 11, scope: !21)
!58 = !DILocation(line: 92, column: 11, scope: !21)
!59 = !DILocation(line: 93, column: 11, scope: !21)
!60 = !DILocation(line: 94, column: 11, scope: !21)
!61 = !DILocation(line: 95, column: 11, scope: !21)
!62 = !DILocation(line: 96, column: 11, scope: !21)
!63 = !DILocation(line: 97, column: 11, scope: !21)
!64 = !DILocation(line: 98, column: 5, scope: !21)
!65 = !DILocation(line: 99, column: 5, scope: !21)
!66 = !DILocation(line: 101, column: 11, scope: !21)
!67 = !DILocation(line: 102, column: 11, scope: !21)
!68 = !DILocation(line: 103, column: 5, scope: !21)
!69 = !DILocation(line: 104, column: 5, scope: !21)
!70 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 106, type: !5, scopeLine: 106, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!71 = !DILocation(line: 107, column: 10, scope: !72)
!72 = !DILexicalBlockFile(scope: !70, file: !4, discriminator: 0)
!73 = !DILocation(line: 108, column: 5, scope: !72)
!74 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 110, type: !5, scopeLine: 110, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!75 = !DILocation(line: 112, column: 10, scope: !76)
!76 = !DILexicalBlockFile(scope: !74, file: !4, discriminator: 0)
!77 = !DILocation(line: 113, column: 10, scope: !76)
!78 = !DILocation(line: 114, column: 10, scope: !76)
!79 = !DILocation(line: 115, column: 10, scope: !76)
!80 = !DILocation(line: 116, column: 10, scope: !76)
!81 = !DILocation(line: 117, column: 10, scope: !76)
!82 = !DILocation(line: 118, column: 10, scope: !76)
!83 = !DILocation(line: 123, column: 11, scope: !76)
!84 = !DILocation(line: 124, column: 5, scope: !76)
!85 = !DILocation(line: 126, column: 11, scope: !76)
!86 = !DILocation(line: 127, column: 5, scope: !76)
!87 = !DILocation(line: 129, column: 11, scope: !76)
!88 = !DILocation(line: 130, column: 11, scope: !76)
!89 = !DILocation(line: 131, column: 5, scope: !76)
!90 = !DILocation(line: 133, column: 11, scope: !76)
!91 = !DILocation(line: 134, column: 5, scope: !76)
!92 = !DILocation(line: 136, column: 11, scope: !76)
!93 = !DILocation(line: 137, column: 11, scope: !76)
!94 = !DILocation(line: 138, column: 11, scope: !76)
!95 = !DILocation(line: 139, column: 11, scope: !76)
!96 = !DILocation(line: 140, column: 11, scope: !76)
!97 = !DILocation(line: 141, column: 11, scope: !76)
!98 = !DILocation(line: 142, column: 11, scope: !76)
!99 = !DILocation(line: 143, column: 11, scope: !76)
!100 = !DILocation(line: 144, column: 11, scope: !76)
!101 = !DILocation(line: 146, column: 11, scope: !76)
!102 = !DILocation(line: 147, column: 11, scope: !76)
!103 = !DILocation(line: 148, column: 11, scope: !76)
!104 = !DILocation(line: 149, column: 5, scope: !76)
!105 = !DILocation(line: 150, column: 11, scope: !76)
!106 = !DILocation(line: 151, column: 5, scope: !76)
!107 = !DILocation(line: 153, column: 11, scope: !76)
!108 = !DILocation(line: 154, column: 5, scope: !76)
!109 = !DILocation(line: 156, column: 5, scope: !76)
!110 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 158, type: !5, scopeLine: 158, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!111 = !DILocation(line: 159, column: 10, scope: !112)
!112 = !DILexicalBlockFile(scope: !110, file: !4, discriminator: 0)
!113 = !DILocation(line: 160, column: 10, scope: !112)
!114 = !DILocation(line: 161, column: 10, scope: !112)
!115 = !DILocation(line: 162, column: 10, scope: !112)
!116 = !DILocation(line: 163, column: 10, scope: !112)
!117 = !DILocation(line: 164, column: 10, scope: !112)
!118 = !DILocation(line: 165, column: 10, scope: !112)
!119 = !DILocation(line: 166, column: 10, scope: !112)
!120 = !DILocation(line: 167, column: 5, scope: !112)
!121 = !DILocation(line: 168, column: 5, scope: !112)
!122 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 170, type: !5, scopeLine: 170, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!123 = !DILocation(line: 172, column: 10, scope: !124)
!124 = !DILexicalBlockFile(scope: !122, file: !4, discriminator: 0)
!125 = !DILocation(line: 173, column: 10, scope: !124)
!126 = !DILocation(line: 174, column: 10, scope: !124)
!127 = !DILocation(line: 175, column: 10, scope: !124)
!128 = !DILocation(line: 176, column: 10, scope: !124)
!129 = !DILocation(line: 177, column: 10, scope: !124)
!130 = !DILocation(line: 178, column: 10, scope: !124)
!131 = !DILocation(line: 184, column: 11, scope: !124)
!132 = !DILocation(line: 187, column: 11, scope: !124)
!133 = !DILocation(line: 189, column: 11, scope: !124)
!134 = !DILocation(line: 194, column: 11, scope: !124)
!135 = !DILocation(line: 195, column: 11, scope: !124)
!136 = !DILocation(line: 196, column: 5, scope: !124)
!137 = !DILocation(line: 198, column: 11, scope: !124)
!138 = !DILocation(line: 199, column: 5, scope: !124)
!139 = !DILocation(line: 201, column: 11, scope: !124)
!140 = !DILocation(line: 202, column: 11, scope: !124)
!141 = !DILocation(line: 203, column: 5, scope: !124)
!142 = !DILocation(line: 205, column: 11, scope: !124)
!143 = !DILocation(line: 206, column: 5, scope: !124)
!144 = !DILocation(line: 208, column: 11, scope: !124)
!145 = !DILocation(line: 209, column: 11, scope: !124)
!146 = !DILocation(line: 210, column: 11, scope: !124)
!147 = !DILocation(line: 211, column: 11, scope: !124)
!148 = !DILocation(line: 212, column: 11, scope: !124)
!149 = !DILocation(line: 213, column: 5, scope: !124)
!150 = !DILocation(line: 216, column: 11, scope: !124)
!151 = !DILocation(line: 219, column: 11, scope: !124)
!152 = !DILocation(line: 220, column: 5, scope: !124)
!153 = !DILocation(line: 223, column: 11, scope: !124)
!154 = !DILocation(line: 226, column: 11, scope: !124)
!155 = !DILocation(line: 228, column: 11, scope: !124)
!156 = !DILocation(line: 229, column: 11, scope: !124)
!157 = !DILocation(line: 230, column: 11, scope: !124)
!158 = !DILocation(line: 231, column: 11, scope: !124)
!159 = !DILocation(line: 232, column: 11, scope: !124)
!160 = !DILocation(line: 233, column: 11, scope: !124)
!161 = !DILocation(line: 234, column: 5, scope: !124)
!162 = !DILocation(line: 236, column: 11, scope: !124)
!163 = !DILocation(line: 237, column: 5, scope: !124)
!164 = !DILocation(line: 240, column: 11, scope: !124)
!165 = !DILocation(line: 245, column: 11, scope: !124)
!166 = !DILocation(line: 247, column: 11, scope: !124)
!167 = !DILocation(line: 250, column: 11, scope: !124)
!168 = !DILocation(line: 251, column: 5, scope: !124)
!169 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 253, type: !5, scopeLine: 253, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!170 = !DILocation(line: 254, column: 10, scope: !171)
!171 = !DILexicalBlockFile(scope: !169, file: !4, discriminator: 0)
!172 = !DILocation(line: 255, column: 10, scope: !171)
!173 = !DILocation(line: 256, column: 10, scope: !171)
!174 = !DILocation(line: 257, column: 10, scope: !171)
!175 = !DILocation(line: 258, column: 10, scope: !171)
!176 = !DILocation(line: 259, column: 10, scope: !171)
!177 = !DILocation(line: 260, column: 10, scope: !171)
!178 = !DILocation(line: 261, column: 10, scope: !171)
!179 = !DILocation(line: 262, column: 5, scope: !171)
!180 = !DILocation(line: 263, column: 5, scope: !171)
