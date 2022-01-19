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

define internal void @kernel_durbin(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10) !dbg !3 {
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0, !dbg !7
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, double* %2, 1, !dbg !9
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 %3, 2, !dbg !10
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 %4, 3, 0, !dbg !11
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 %5, 4, 0, !dbg !12
  %17 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !13
  store { double*, double*, i64, [1 x i64], [1 x i64] } %16, { double*, double*, i64, [1 x i64], [1 x i64] }* %17, align 8, !dbg !14
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0, !dbg !15
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, double* %7, 1, !dbg !16
  %20 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, i64 %8, 2, !dbg !17
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, i64 %9, 3, 0, !dbg !18
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, i64 %10, 4, 0, !dbg !19
  %23 = alloca { double*, double*, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !20
  store { double*, double*, i64, [1 x i64], [1 x i64] } %22, { double*, double*, i64, [1 x i64], [1 x i64] }* %23, align 8, !dbg !21
  call void @__program_kernel_durbin(i32 %0, { double*, double*, i64, [1 x i64], [1 x i64] }* %17, { double*, double*, i64, [1 x i64], [1 x i64] }* %23), !dbg !22
  ret void, !dbg !23
}

declare void @__program_kernel_durbin(i32, { double*, double*, i64, [1 x i64], [1 x i64] }*, { double*, double*, i64, [1 x i64], [1 x i64] }*)

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
  call void @init_array(i32 2000, double* %17, double* %18, i64 %19, i64 %20, i64 %21), !dbg !45
  %22 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0, !dbg !46
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 1, !dbg !47
  %24 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 2, !dbg !48
  %25 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 3, 0, !dbg !49
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 4, 0, !dbg !50
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0, !dbg !51
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1, !dbg !52
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 2, !dbg !53
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 3, 0, !dbg !54
  %31 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 4, 0, !dbg !55
  call void @kernel_durbin(i32 2000, double* %22, double* %23, i64 %24, i64 %25, i64 %26, double* %27, double* %28, i64 %29, i64 %30, i64 %31), !dbg !56
  %32 = icmp sgt i32 %0, 42, !dbg !57
  br i1 %32, label %33, label %39, !dbg !58

33:                                               ; preds = %2
  %34 = getelementptr i8*, i8** %1, i64 0, !dbg !59
  %35 = load i8*, i8** %34, align 8, !dbg !60
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !61
  %37 = trunc i32 %36 to i1, !dbg !62
  %38 = xor i1 %37, true, !dbg !63
  br label %40, !dbg !64

39:                                               ; preds = %2
  br label %40, !dbg !65

40:                                               ; preds = %33, %39
  %41 = phi i1 [ false, %39 ], [ %38, %33 ]
  br label %42, !dbg !66

42:                                               ; preds = %40
  br i1 %41, label %43, label %49, !dbg !67

43:                                               ; preds = %42
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0, !dbg !68
  %45 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1, !dbg !69
  %46 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 2, !dbg !70
  %47 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 3, 0, !dbg !71
  %48 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 4, 0, !dbg !72
  call void @print_array(i32 2000, double* %44, double* %45, i64 %46, i64 %47, i64 %48), !dbg !73
  br label %49, !dbg !74

49:                                               ; preds = %43, %42
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0, !dbg !75
  %51 = bitcast double* %50 to i8*, !dbg !76
  call void @free(i8* %51), !dbg !77
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0, !dbg !78
  %53 = bitcast double* %52 to i8*, !dbg !79
  call void @free(i8* %53), !dbg !80
  ret i32 0, !dbg !81
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !82 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !83
  ret i32 %3, !dbg !85
}

define internal void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5) !dbg !86 {
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0, !dbg !87
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, double* %2, 1, !dbg !89
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 %3, 2, !dbg !90
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, i64 %4, 3, 0, !dbg !91
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, i64 %5, 4, 0, !dbg !92
  %12 = sext i32 %0 to i64, !dbg !93
  br label %13, !dbg !94

13:                                               ; preds = %16, %6
  %14 = phi i64 [ %23, %16 ], [ 0, %6 ]
  %15 = icmp slt i64 %14, %12, !dbg !95
  br i1 %15, label %16, label %24, !dbg !96

16:                                               ; preds = %13
  %17 = trunc i64 %14 to i32, !dbg !97
  %18 = add i32 %0, 1, !dbg !98
  %19 = sub i32 %18, %17, !dbg !99
  %20 = sitofp i32 %19 to double, !dbg !100
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1, !dbg !101
  %22 = getelementptr double, double* %21, i64 %14, !dbg !102
  store double %20, double* %22, align 8, !dbg !103
  %23 = add i64 %14, 1, !dbg !104
  br label %13, !dbg !105

24:                                               ; preds = %13
  ret void, !dbg !106
}

define void @_mlir_ciface_init_array(i32 %0, { double*, double*, i64, [1 x i64], [1 x i64] }* %1) !dbg !107 {
  %3 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !108
  %4 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 0, !dbg !110
  %5 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 1, !dbg !111
  %6 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 2, !dbg !112
  %7 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 3, 0, !dbg !113
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 4, 0, !dbg !114
  call void @init_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8), !dbg !115
  ret void, !dbg !116
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5) !dbg !117 {
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0, !dbg !118
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, double* %2, 1, !dbg !120
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 %3, 2, !dbg !121
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, i64 %4, 3, 0, !dbg !122
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, i64 %5, 4, 0, !dbg !123
  %12 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !124
  %13 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !125
  %14 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !126
  %15 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !127
  %16 = sext i32 %0 to i64, !dbg !128
  br label %17, !dbg !129

17:                                               ; preds = %27, %6
  %18 = phi i64 [ %33, %27 ], [ 0, %6 ]
  %19 = icmp slt i64 %18, %16, !dbg !130
  br i1 %19, label %20, label %34, !dbg !131

20:                                               ; preds = %17
  %21 = trunc i64 %18 to i32, !dbg !132
  %22 = srem i32 %21, 20, !dbg !133
  %23 = icmp eq i32 %22, 0, !dbg !134
  br i1 %23, label %24, label %27, !dbg !135

24:                                               ; preds = %20
  %25 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !136
  %26 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !137
  br label %27, !dbg !138

27:                                               ; preds = %24, %20
  %28 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !139
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1, !dbg !140
  %30 = getelementptr double, double* %29, i64 %18, !dbg !141
  %31 = load double, double* %30, align 8, !dbg !142
  %32 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %31), !dbg !143
  %33 = add i64 %18, 1, !dbg !144
  br label %17, !dbg !145

34:                                               ; preds = %17
  %35 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !146
  %36 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !147
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !148
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !149
  ret void, !dbg !150
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [1 x i64], [1 x i64] }* %1) !dbg !151 {
  %3 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %1, align 8, !dbg !152
  %4 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 0, !dbg !154
  %5 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 1, !dbg !155
  %6 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 2, !dbg !156
  %7 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 3, 0, !dbg !157
  %8 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %3, 4, 0, !dbg !158
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8), !dbg !159
  ret void, !dbg !160
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_durbin", linkageName: "kernel_durbin", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!25 = !DILocation(line: 50, column: 11, scope: !26)
!26 = !DILexicalBlockFile(scope: !24, file: !4, discriminator: 0)
!27 = !DILocation(line: 51, column: 11, scope: !26)
!28 = !DILocation(line: 53, column: 11, scope: !26)
!29 = !DILocation(line: 54, column: 11, scope: !26)
!30 = !DILocation(line: 56, column: 11, scope: !26)
!31 = !DILocation(line: 57, column: 11, scope: !26)
!32 = !DILocation(line: 58, column: 11, scope: !26)
!33 = !DILocation(line: 64, column: 11, scope: !26)
!34 = !DILocation(line: 65, column: 11, scope: !26)
!35 = !DILocation(line: 67, column: 11, scope: !26)
!36 = !DILocation(line: 68, column: 11, scope: !26)
!37 = !DILocation(line: 70, column: 11, scope: !26)
!38 = !DILocation(line: 71, column: 11, scope: !26)
!39 = !DILocation(line: 72, column: 11, scope: !26)
!40 = !DILocation(line: 73, column: 11, scope: !26)
!41 = !DILocation(line: 74, column: 11, scope: !26)
!42 = !DILocation(line: 75, column: 11, scope: !26)
!43 = !DILocation(line: 76, column: 11, scope: !26)
!44 = !DILocation(line: 77, column: 11, scope: !26)
!45 = !DILocation(line: 78, column: 5, scope: !26)
!46 = !DILocation(line: 79, column: 11, scope: !26)
!47 = !DILocation(line: 80, column: 11, scope: !26)
!48 = !DILocation(line: 81, column: 11, scope: !26)
!49 = !DILocation(line: 82, column: 11, scope: !26)
!50 = !DILocation(line: 83, column: 11, scope: !26)
!51 = !DILocation(line: 84, column: 11, scope: !26)
!52 = !DILocation(line: 85, column: 11, scope: !26)
!53 = !DILocation(line: 86, column: 11, scope: !26)
!54 = !DILocation(line: 87, column: 11, scope: !26)
!55 = !DILocation(line: 88, column: 11, scope: !26)
!56 = !DILocation(line: 89, column: 5, scope: !26)
!57 = !DILocation(line: 90, column: 11, scope: !26)
!58 = !DILocation(line: 91, column: 5, scope: !26)
!59 = !DILocation(line: 93, column: 11, scope: !26)
!60 = !DILocation(line: 94, column: 11, scope: !26)
!61 = !DILocation(line: 97, column: 11, scope: !26)
!62 = !DILocation(line: 98, column: 11, scope: !26)
!63 = !DILocation(line: 99, column: 11, scope: !26)
!64 = !DILocation(line: 100, column: 5, scope: !26)
!65 = !DILocation(line: 102, column: 5, scope: !26)
!66 = !DILocation(line: 104, column: 5, scope: !26)
!67 = !DILocation(line: 106, column: 5, scope: !26)
!68 = !DILocation(line: 108, column: 11, scope: !26)
!69 = !DILocation(line: 109, column: 11, scope: !26)
!70 = !DILocation(line: 110, column: 11, scope: !26)
!71 = !DILocation(line: 111, column: 11, scope: !26)
!72 = !DILocation(line: 112, column: 11, scope: !26)
!73 = !DILocation(line: 113, column: 5, scope: !26)
!74 = !DILocation(line: 114, column: 5, scope: !26)
!75 = !DILocation(line: 116, column: 11, scope: !26)
!76 = !DILocation(line: 117, column: 11, scope: !26)
!77 = !DILocation(line: 118, column: 5, scope: !26)
!78 = !DILocation(line: 119, column: 11, scope: !26)
!79 = !DILocation(line: 120, column: 11, scope: !26)
!80 = !DILocation(line: 121, column: 5, scope: !26)
!81 = !DILocation(line: 122, column: 5, scope: !26)
!82 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 124, type: !5, scopeLine: 124, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!83 = !DILocation(line: 125, column: 10, scope: !84)
!84 = !DILexicalBlockFile(scope: !82, file: !4, discriminator: 0)
!85 = !DILocation(line: 126, column: 5, scope: !84)
!86 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 128, type: !5, scopeLine: 128, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!87 = !DILocation(line: 130, column: 10, scope: !88)
!88 = !DILexicalBlockFile(scope: !86, file: !4, discriminator: 0)
!89 = !DILocation(line: 131, column: 10, scope: !88)
!90 = !DILocation(line: 132, column: 10, scope: !88)
!91 = !DILocation(line: 133, column: 10, scope: !88)
!92 = !DILocation(line: 134, column: 10, scope: !88)
!93 = !DILocation(line: 138, column: 10, scope: !88)
!94 = !DILocation(line: 139, column: 5, scope: !88)
!95 = !DILocation(line: 141, column: 11, scope: !88)
!96 = !DILocation(line: 142, column: 5, scope: !88)
!97 = !DILocation(line: 144, column: 11, scope: !88)
!98 = !DILocation(line: 145, column: 11, scope: !88)
!99 = !DILocation(line: 146, column: 11, scope: !88)
!100 = !DILocation(line: 147, column: 11, scope: !88)
!101 = !DILocation(line: 148, column: 11, scope: !88)
!102 = !DILocation(line: 149, column: 11, scope: !88)
!103 = !DILocation(line: 150, column: 5, scope: !88)
!104 = !DILocation(line: 151, column: 11, scope: !88)
!105 = !DILocation(line: 152, column: 5, scope: !88)
!106 = !DILocation(line: 154, column: 5, scope: !88)
!107 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 156, type: !5, scopeLine: 156, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!108 = !DILocation(line: 157, column: 10, scope: !109)
!109 = !DILexicalBlockFile(scope: !107, file: !4, discriminator: 0)
!110 = !DILocation(line: 158, column: 10, scope: !109)
!111 = !DILocation(line: 159, column: 10, scope: !109)
!112 = !DILocation(line: 160, column: 10, scope: !109)
!113 = !DILocation(line: 161, column: 10, scope: !109)
!114 = !DILocation(line: 162, column: 10, scope: !109)
!115 = !DILocation(line: 163, column: 5, scope: !109)
!116 = !DILocation(line: 164, column: 5, scope: !109)
!117 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 166, type: !5, scopeLine: 166, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!118 = !DILocation(line: 168, column: 10, scope: !119)
!119 = !DILexicalBlockFile(scope: !117, file: !4, discriminator: 0)
!120 = !DILocation(line: 169, column: 10, scope: !119)
!121 = !DILocation(line: 170, column: 10, scope: !119)
!122 = !DILocation(line: 171, column: 10, scope: !119)
!123 = !DILocation(line: 172, column: 10, scope: !119)
!124 = !DILocation(line: 178, column: 11, scope: !119)
!125 = !DILocation(line: 181, column: 11, scope: !119)
!126 = !DILocation(line: 183, column: 11, scope: !119)
!127 = !DILocation(line: 188, column: 11, scope: !119)
!128 = !DILocation(line: 189, column: 11, scope: !119)
!129 = !DILocation(line: 190, column: 5, scope: !119)
!130 = !DILocation(line: 192, column: 11, scope: !119)
!131 = !DILocation(line: 193, column: 5, scope: !119)
!132 = !DILocation(line: 195, column: 11, scope: !119)
!133 = !DILocation(line: 196, column: 11, scope: !119)
!134 = !DILocation(line: 197, column: 11, scope: !119)
!135 = !DILocation(line: 198, column: 5, scope: !119)
!136 = !DILocation(line: 201, column: 11, scope: !119)
!137 = !DILocation(line: 204, column: 11, scope: !119)
!138 = !DILocation(line: 205, column: 5, scope: !119)
!139 = !DILocation(line: 208, column: 11, scope: !119)
!140 = !DILocation(line: 211, column: 11, scope: !119)
!141 = !DILocation(line: 212, column: 11, scope: !119)
!142 = !DILocation(line: 213, column: 11, scope: !119)
!143 = !DILocation(line: 214, column: 11, scope: !119)
!144 = !DILocation(line: 215, column: 11, scope: !119)
!145 = !DILocation(line: 216, column: 5, scope: !119)
!146 = !DILocation(line: 219, column: 11, scope: !119)
!147 = !DILocation(line: 224, column: 11, scope: !119)
!148 = !DILocation(line: 226, column: 11, scope: !119)
!149 = !DILocation(line: 229, column: 11, scope: !119)
!150 = !DILocation(line: 230, column: 5, scope: !119)
!151 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 232, type: !5, scopeLine: 232, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!152 = !DILocation(line: 233, column: 10, scope: !153)
!153 = !DILexicalBlockFile(scope: !151, file: !4, discriminator: 0)
!154 = !DILocation(line: 234, column: 10, scope: !153)
!155 = !DILocation(line: 235, column: 10, scope: !153)
!156 = !DILocation(line: 236, column: 10, scope: !153)
!157 = !DILocation(line: 237, column: 10, scope: !153)
!158 = !DILocation(line: 238, column: 10, scope: !153)
!159 = !DILocation(line: 239, column: 5, scope: !153)
!160 = !DILocation(line: 240, column: 5, scope: !153)
