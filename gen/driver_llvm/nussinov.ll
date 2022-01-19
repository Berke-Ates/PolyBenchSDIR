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
@str5 = internal constant [4 x i8] c"%d \00"
@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [6 x i8] c"table\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_nussinov(i32 %0, i8* %1, i32* %2, i32* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) !dbg !3 {
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %2, 0, !dbg !7
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i32* %3, 1, !dbg !9
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 2, !dbg !10
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 %5, 3, 0, !dbg !11
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 %7, 4, 0, !dbg !12
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 %6, 3, 1, !dbg !13
  %16 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, i64 %8, 4, 1, !dbg !14
  %17 = alloca { i32*, i32*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { i32*, i32*, i64, [2 x i64], [2 x i64] } %16, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %17, align 8, !dbg !16
  call void @__program_kernel_nussinov(i32 %0, i8* %1, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %17), !dbg !17
  ret void, !dbg !18
}

declare void @__program_kernel_nussinov(i32, i8*, { i32*, i32*, i64, [2 x i64], [2 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !19 {
  %3 = alloca [2500 x i8]*, i64 1, align 8, !dbg !20
  %4 = load [2500 x i8]*, [2500 x i8]** %3, align 8, !dbg !22
  %5 = call i8* @polybench_alloc_data(i64 2500, i32 1), !dbg !23
  %6 = bitcast i8* %5 to [2500 x i8]*, !dbg !24
  store [2500 x i8]* %6, [2500 x i8]** %3, align 8, !dbg !25
  %7 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 6250000) to i64)), !dbg !26
  %8 = bitcast i8* %7 to i32*, !dbg !27
  %9 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %8, 0, !dbg !28
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %9, i32* %8, 1, !dbg !29
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i64 0, 2, !dbg !30
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 2500, 3, 0, !dbg !31
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 2500, 3, 1, !dbg !32
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 2500, 4, 0, !dbg !33
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 1, 4, 1, !dbg !34
  %16 = getelementptr [2500 x i8], [2500 x i8]* %6, i32 0, i32 0, !dbg !35
  %17 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 0, !dbg !36
  %18 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !37
  %19 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 2, !dbg !38
  %20 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 3, 0, !dbg !39
  %21 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 3, 1, !dbg !40
  %22 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 4, 0, !dbg !41
  %23 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 4, 1, !dbg !42
  call void @init_array(i32 2500, i8* %16, i32* %17, i32* %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23), !dbg !43
  %24 = getelementptr [2500 x i8], [2500 x i8]* %6, i32 0, i32 0, !dbg !44
  %25 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 0, !dbg !45
  %26 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !46
  %27 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 2, !dbg !47
  %28 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 3, 0, !dbg !48
  %29 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 3, 1, !dbg !49
  %30 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 4, 0, !dbg !50
  %31 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 4, 1, !dbg !51
  call void @kernel_nussinov(i32 2500, i8* %24, i32* %25, i32* %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31), !dbg !52
  %32 = icmp sgt i32 %0, 42, !dbg !53
  br i1 %32, label %33, label %39, !dbg !54

33:                                               ; preds = %2
  %34 = getelementptr i8*, i8** %1, i64 0, !dbg !55
  %35 = load i8*, i8** %34, align 8, !dbg !56
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !57
  %37 = trunc i32 %36 to i1, !dbg !58
  %38 = xor i1 %37, true, !dbg !59
  br label %40, !dbg !60

39:                                               ; preds = %2
  br label %40, !dbg !61

40:                                               ; preds = %33, %39
  %41 = phi i1 [ false, %39 ], [ %38, %33 ]
  br label %42, !dbg !62

42:                                               ; preds = %40
  br i1 %41, label %43, label %51, !dbg !63

43:                                               ; preds = %42
  %44 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 0, !dbg !64
  %45 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !65
  %46 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 2, !dbg !66
  %47 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 3, 0, !dbg !67
  %48 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 3, 1, !dbg !68
  %49 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 4, 0, !dbg !69
  %50 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 4, 1, !dbg !70
  call void @print_array(i32 2500, i32* %44, i32* %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50), !dbg !71
  br label %51, !dbg !72

51:                                               ; preds = %43, %42
  %52 = bitcast [2500 x i8]* %6 to i8*, !dbg !73
  call void @free(i8* %52), !dbg !74
  %53 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 0, !dbg !75
  %54 = bitcast i32* %53 to i8*, !dbg !76
  call void @free(i8* %54), !dbg !77
  ret i32 0, !dbg !78
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !79 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !80
  ret i32 %3, !dbg !82
}

define internal i8* @polybench_alloc_data(i64 %0, i32 %1) !dbg !83 {
  %3 = zext i32 %1 to i64, !dbg !84
  %4 = mul i64 %0, %3, !dbg !86
  %5 = call i8* @malloc(i64 %4), !dbg !87
  ret i8* %5, !dbg !88
}

define i8* @_mlir_ciface_polybench_alloc_data(i64 %0, i32 %1) !dbg !89 {
  %3 = call i8* @polybench_alloc_data(i64 %0, i32 %1), !dbg !90
  ret i8* %3, !dbg !92
}

define internal void @init_array(i32 %0, i8* %1, i32* %2, i32* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) !dbg !93 {
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %2, 0, !dbg !94
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i32* %3, 1, !dbg !96
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 2, !dbg !97
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 %5, 3, 0, !dbg !98
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 %7, 4, 0, !dbg !99
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 %6, 3, 1, !dbg !100
  %16 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, i64 %8, 4, 1, !dbg !101
  %17 = sext i32 %0 to i64, !dbg !102
  br label %18, !dbg !103

18:                                               ; preds = %21, %9
  %19 = phi i64 [ %27, %21 ], [ 0, %9 ]
  %20 = icmp slt i64 %19, %17, !dbg !104
  br i1 %20, label %21, label %28, !dbg !105

21:                                               ; preds = %18
  %22 = trunc i64 %19 to i32, !dbg !106
  %23 = getelementptr i8, i8* %1, i64 %19, !dbg !107
  %24 = add i32 %22, 1, !dbg !108
  %25 = srem i32 %24, 4, !dbg !109
  %26 = trunc i32 %25 to i8, !dbg !110
  store i8 %26, i8* %23, align 1, !dbg !111
  %27 = add i64 %19, 1, !dbg !112
  br label %18, !dbg !113

28:                                               ; preds = %18
  %29 = sext i32 %0 to i64, !dbg !114
  br label %30, !dbg !115

30:                                               ; preds = %44, %28
  %31 = phi i64 [ %45, %44 ], [ 0, %28 ]
  %32 = icmp slt i64 %31, %29, !dbg !116
  br i1 %32, label %33, label %46, !dbg !117

33:                                               ; preds = %30
  %34 = sext i32 %0 to i64, !dbg !118
  br label %35, !dbg !119

35:                                               ; preds = %38, %33
  %36 = phi i64 [ %43, %38 ], [ 0, %33 ]
  %37 = icmp slt i64 %36, %34, !dbg !120
  br i1 %37, label %38, label %44, !dbg !121

38:                                               ; preds = %35
  %39 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !122
  %40 = mul i64 %31, 2500, !dbg !123
  %41 = add i64 %40, %36, !dbg !124
  %42 = getelementptr i32, i32* %39, i64 %41, !dbg !125
  store i32 0, i32* %42, align 4, !dbg !126
  %43 = add i64 %36, 1, !dbg !127
  br label %35, !dbg !128

44:                                               ; preds = %35
  %45 = add i64 %31, 1, !dbg !129
  br label %30, !dbg !130

46:                                               ; preds = %30
  ret void, !dbg !131
}

define void @_mlir_ciface_init_array(i32 %0, i8* %1, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %2) !dbg !132 {
  %4 = load { i32*, i32*, i64, [2 x i64], [2 x i64] }, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %2, align 8, !dbg !133
  %5 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %4, 0, !dbg !135
  %6 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %4, 1, !dbg !136
  %7 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %4, 2, !dbg !137
  %8 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %4, 3, 0, !dbg !138
  %9 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %4, 3, 1, !dbg !139
  %10 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %4, 4, 0, !dbg !140
  %11 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %4, 4, 1, !dbg !141
  call void @init_array(i32 %0, i8* %1, i32* %5, i32* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11), !dbg !142
  ret void, !dbg !143
}

define internal void @print_array(i32 %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !144 {
  %9 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %1, 0, !dbg !145
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %9, i32* %2, 1, !dbg !147
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !148
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !149
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !150
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !151
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !152
  %16 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !153
  %17 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !154
  %18 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !155
  %19 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @str3, i32 0, i32 0)), !dbg !156
  %20 = sext i32 %0 to i64, !dbg !157
  br label %21, !dbg !158

21:                                               ; preds = %55, %8
  %22 = phi i64 [ %56, %55 ], [ 0, %8 ]
  %23 = phi i32 [ %30, %55 ], [ 0, %8 ]
  %24 = icmp slt i64 %22, %20, !dbg !159
  br i1 %24, label %25, label %57, !dbg !160

25:                                               ; preds = %21
  %26 = trunc i64 %22 to i32, !dbg !161
  %27 = sext i32 %0 to i64, !dbg !162
  br label %28, !dbg !163

28:                                               ; preds = %45, %25
  %29 = phi i64 [ %54, %45 ], [ %22, %25 ]
  %30 = phi i32 [ %53, %45 ], [ %23, %25 ]
  %31 = icmp slt i64 %29, %27, !dbg !164
  br i1 %31, label %32, label %55, !dbg !165

32:                                               ; preds = %28
  %33 = sub i64 %29, %22, !dbg !166
  %34 = trunc i64 %33 to i32, !dbg !167
  %35 = add i32 %34, %23, !dbg !168
  %36 = sub i64 %29, %22, !dbg !169
  %37 = trunc i64 %36 to i32, !dbg !170
  %38 = add i32 %37, %26, !dbg !171
  %39 = sext i32 %38 to i64, !dbg !172
  %40 = srem i32 %35, 20, !dbg !173
  %41 = icmp eq i32 %40, 0, !dbg !174
  br i1 %41, label %42, label %45, !dbg !175

42:                                               ; preds = %32
  %43 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !176
  %44 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !177
  br label %45, !dbg !178

45:                                               ; preds = %42, %32
  %46 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !179
  %47 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !180
  %48 = mul i64 %22, 2500, !dbg !181
  %49 = add i64 %48, %39, !dbg !182
  %50 = getelementptr i32, i32* %47, i64 %49, !dbg !183
  %51 = load i32, i32* %50, align 4, !dbg !184
  %52 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str5, i32 0, i32 0), i32 %51), !dbg !185
  %53 = add i32 %35, 1, !dbg !186
  %54 = add i64 %29, 1, !dbg !187
  br label %28, !dbg !188

55:                                               ; preds = %28
  %56 = add i64 %22, 1, !dbg !189
  br label %21, !dbg !190

57:                                               ; preds = %21
  %58 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !191
  %59 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @str3, i32 0, i32 0)), !dbg !192
  %60 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !193
  %61 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !194
  ret void, !dbg !195
}

define void @_mlir_ciface_print_array(i32 %0, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1) !dbg !196 {
  %3 = load { i32*, i32*, i64, [2 x i64], [2 x i64] }, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !197
  %4 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !199
  %5 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !200
  %6 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !201
  %7 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !202
  %8 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !203
  %9 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !204
  %10 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !205
  call void @print_array(i32 %0, i32* %4, i32* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !206
  ret void, !dbg !207
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_nussinov", linkageName: "kernel_nussinov", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!16 = !DILocation(line: 13, column: 5, scope: !8)
!17 = !DILocation(line: 14, column: 5, scope: !8)
!18 = !DILocation(line: 15, column: 5, scope: !8)
!19 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!20 = !DILocation(line: 41, column: 10, scope: !21)
!21 = !DILexicalBlockFile(scope: !19, file: !4, discriminator: 0)
!22 = !DILocation(line: 42, column: 11, scope: !21)
!23 = !DILocation(line: 43, column: 11, scope: !21)
!24 = !DILocation(line: 44, column: 11, scope: !21)
!25 = !DILocation(line: 45, column: 5, scope: !21)
!26 = !DILocation(line: 53, column: 11, scope: !21)
!27 = !DILocation(line: 54, column: 11, scope: !21)
!28 = !DILocation(line: 56, column: 11, scope: !21)
!29 = !DILocation(line: 57, column: 11, scope: !21)
!30 = !DILocation(line: 59, column: 11, scope: !21)
!31 = !DILocation(line: 60, column: 11, scope: !21)
!32 = !DILocation(line: 61, column: 11, scope: !21)
!33 = !DILocation(line: 62, column: 11, scope: !21)
!34 = !DILocation(line: 63, column: 11, scope: !21)
!35 = !DILocation(line: 64, column: 11, scope: !21)
!36 = !DILocation(line: 65, column: 11, scope: !21)
!37 = !DILocation(line: 66, column: 11, scope: !21)
!38 = !DILocation(line: 67, column: 11, scope: !21)
!39 = !DILocation(line: 68, column: 11, scope: !21)
!40 = !DILocation(line: 69, column: 11, scope: !21)
!41 = !DILocation(line: 70, column: 11, scope: !21)
!42 = !DILocation(line: 71, column: 11, scope: !21)
!43 = !DILocation(line: 72, column: 5, scope: !21)
!44 = !DILocation(line: 73, column: 11, scope: !21)
!45 = !DILocation(line: 74, column: 11, scope: !21)
!46 = !DILocation(line: 75, column: 11, scope: !21)
!47 = !DILocation(line: 76, column: 11, scope: !21)
!48 = !DILocation(line: 77, column: 11, scope: !21)
!49 = !DILocation(line: 78, column: 11, scope: !21)
!50 = !DILocation(line: 79, column: 11, scope: !21)
!51 = !DILocation(line: 80, column: 11, scope: !21)
!52 = !DILocation(line: 81, column: 5, scope: !21)
!53 = !DILocation(line: 82, column: 11, scope: !21)
!54 = !DILocation(line: 83, column: 5, scope: !21)
!55 = !DILocation(line: 85, column: 11, scope: !21)
!56 = !DILocation(line: 86, column: 11, scope: !21)
!57 = !DILocation(line: 89, column: 11, scope: !21)
!58 = !DILocation(line: 90, column: 11, scope: !21)
!59 = !DILocation(line: 91, column: 11, scope: !21)
!60 = !DILocation(line: 92, column: 5, scope: !21)
!61 = !DILocation(line: 94, column: 5, scope: !21)
!62 = !DILocation(line: 96, column: 5, scope: !21)
!63 = !DILocation(line: 98, column: 5, scope: !21)
!64 = !DILocation(line: 100, column: 11, scope: !21)
!65 = !DILocation(line: 101, column: 11, scope: !21)
!66 = !DILocation(line: 102, column: 11, scope: !21)
!67 = !DILocation(line: 103, column: 11, scope: !21)
!68 = !DILocation(line: 104, column: 11, scope: !21)
!69 = !DILocation(line: 105, column: 11, scope: !21)
!70 = !DILocation(line: 106, column: 11, scope: !21)
!71 = !DILocation(line: 107, column: 5, scope: !21)
!72 = !DILocation(line: 108, column: 5, scope: !21)
!73 = !DILocation(line: 110, column: 11, scope: !21)
!74 = !DILocation(line: 111, column: 5, scope: !21)
!75 = !DILocation(line: 112, column: 11, scope: !21)
!76 = !DILocation(line: 113, column: 11, scope: !21)
!77 = !DILocation(line: 114, column: 5, scope: !21)
!78 = !DILocation(line: 115, column: 5, scope: !21)
!79 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 117, type: !5, scopeLine: 117, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!80 = !DILocation(line: 118, column: 10, scope: !81)
!81 = !DILexicalBlockFile(scope: !79, file: !4, discriminator: 0)
!82 = !DILocation(line: 119, column: 5, scope: !81)
!83 = distinct !DISubprogram(name: "polybench_alloc_data", linkageName: "polybench_alloc_data", scope: null, file: !4, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!84 = !DILocation(line: 122, column: 10, scope: !85)
!85 = !DILexicalBlockFile(scope: !83, file: !4, discriminator: 0)
!86 = !DILocation(line: 123, column: 10, scope: !85)
!87 = !DILocation(line: 124, column: 10, scope: !85)
!88 = !DILocation(line: 125, column: 5, scope: !85)
!89 = distinct !DISubprogram(name: "_mlir_ciface_polybench_alloc_data", linkageName: "_mlir_ciface_polybench_alloc_data", scope: null, file: !4, line: 127, type: !5, scopeLine: 127, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!90 = !DILocation(line: 128, column: 10, scope: !91)
!91 = !DILexicalBlockFile(scope: !89, file: !4, discriminator: 0)
!92 = !DILocation(line: 129, column: 5, scope: !91)
!93 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 131, type: !5, scopeLine: 131, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!94 = !DILocation(line: 133, column: 10, scope: !95)
!95 = !DILexicalBlockFile(scope: !93, file: !4, discriminator: 0)
!96 = !DILocation(line: 134, column: 10, scope: !95)
!97 = !DILocation(line: 135, column: 10, scope: !95)
!98 = !DILocation(line: 136, column: 10, scope: !95)
!99 = !DILocation(line: 137, column: 10, scope: !95)
!100 = !DILocation(line: 138, column: 10, scope: !95)
!101 = !DILocation(line: 139, column: 10, scope: !95)
!102 = !DILocation(line: 145, column: 11, scope: !95)
!103 = !DILocation(line: 146, column: 5, scope: !95)
!104 = !DILocation(line: 148, column: 11, scope: !95)
!105 = !DILocation(line: 149, column: 5, scope: !95)
!106 = !DILocation(line: 151, column: 11, scope: !95)
!107 = !DILocation(line: 152, column: 11, scope: !95)
!108 = !DILocation(line: 153, column: 11, scope: !95)
!109 = !DILocation(line: 154, column: 11, scope: !95)
!110 = !DILocation(line: 155, column: 11, scope: !95)
!111 = !DILocation(line: 156, column: 5, scope: !95)
!112 = !DILocation(line: 157, column: 11, scope: !95)
!113 = !DILocation(line: 158, column: 5, scope: !95)
!114 = !DILocation(line: 160, column: 11, scope: !95)
!115 = !DILocation(line: 161, column: 5, scope: !95)
!116 = !DILocation(line: 163, column: 11, scope: !95)
!117 = !DILocation(line: 164, column: 5, scope: !95)
!118 = !DILocation(line: 166, column: 11, scope: !95)
!119 = !DILocation(line: 167, column: 5, scope: !95)
!120 = !DILocation(line: 169, column: 11, scope: !95)
!121 = !DILocation(line: 170, column: 5, scope: !95)
!122 = !DILocation(line: 172, column: 11, scope: !95)
!123 = !DILocation(line: 174, column: 11, scope: !95)
!124 = !DILocation(line: 175, column: 11, scope: !95)
!125 = !DILocation(line: 176, column: 11, scope: !95)
!126 = !DILocation(line: 177, column: 5, scope: !95)
!127 = !DILocation(line: 178, column: 11, scope: !95)
!128 = !DILocation(line: 179, column: 5, scope: !95)
!129 = !DILocation(line: 181, column: 11, scope: !95)
!130 = !DILocation(line: 182, column: 5, scope: !95)
!131 = !DILocation(line: 184, column: 5, scope: !95)
!132 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 186, type: !5, scopeLine: 186, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!133 = !DILocation(line: 187, column: 10, scope: !134)
!134 = !DILexicalBlockFile(scope: !132, file: !4, discriminator: 0)
!135 = !DILocation(line: 188, column: 10, scope: !134)
!136 = !DILocation(line: 189, column: 10, scope: !134)
!137 = !DILocation(line: 190, column: 10, scope: !134)
!138 = !DILocation(line: 191, column: 10, scope: !134)
!139 = !DILocation(line: 192, column: 10, scope: !134)
!140 = !DILocation(line: 193, column: 10, scope: !134)
!141 = !DILocation(line: 194, column: 10, scope: !134)
!142 = !DILocation(line: 195, column: 5, scope: !134)
!143 = !DILocation(line: 196, column: 5, scope: !134)
!144 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 198, type: !5, scopeLine: 198, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!145 = !DILocation(line: 200, column: 10, scope: !146)
!146 = !DILexicalBlockFile(scope: !144, file: !4, discriminator: 0)
!147 = !DILocation(line: 201, column: 10, scope: !146)
!148 = !DILocation(line: 202, column: 10, scope: !146)
!149 = !DILocation(line: 203, column: 10, scope: !146)
!150 = !DILocation(line: 204, column: 10, scope: !146)
!151 = !DILocation(line: 205, column: 10, scope: !146)
!152 = !DILocation(line: 206, column: 10, scope: !146)
!153 = !DILocation(line: 213, column: 11, scope: !146)
!154 = !DILocation(line: 216, column: 11, scope: !146)
!155 = !DILocation(line: 218, column: 11, scope: !146)
!156 = !DILocation(line: 223, column: 11, scope: !146)
!157 = !DILocation(line: 224, column: 11, scope: !146)
!158 = !DILocation(line: 225, column: 5, scope: !146)
!159 = !DILocation(line: 227, column: 11, scope: !146)
!160 = !DILocation(line: 228, column: 5, scope: !146)
!161 = !DILocation(line: 230, column: 11, scope: !146)
!162 = !DILocation(line: 231, column: 11, scope: !146)
!163 = !DILocation(line: 232, column: 5, scope: !146)
!164 = !DILocation(line: 234, column: 11, scope: !146)
!165 = !DILocation(line: 235, column: 5, scope: !146)
!166 = !DILocation(line: 237, column: 11, scope: !146)
!167 = !DILocation(line: 238, column: 11, scope: !146)
!168 = !DILocation(line: 239, column: 11, scope: !146)
!169 = !DILocation(line: 240, column: 11, scope: !146)
!170 = !DILocation(line: 241, column: 11, scope: !146)
!171 = !DILocation(line: 242, column: 11, scope: !146)
!172 = !DILocation(line: 243, column: 11, scope: !146)
!173 = !DILocation(line: 244, column: 11, scope: !146)
!174 = !DILocation(line: 245, column: 11, scope: !146)
!175 = !DILocation(line: 246, column: 5, scope: !146)
!176 = !DILocation(line: 249, column: 11, scope: !146)
!177 = !DILocation(line: 252, column: 11, scope: !146)
!178 = !DILocation(line: 253, column: 5, scope: !146)
!179 = !DILocation(line: 256, column: 11, scope: !146)
!180 = !DILocation(line: 259, column: 11, scope: !146)
!181 = !DILocation(line: 261, column: 11, scope: !146)
!182 = !DILocation(line: 262, column: 11, scope: !146)
!183 = !DILocation(line: 263, column: 11, scope: !146)
!184 = !DILocation(line: 264, column: 11, scope: !146)
!185 = !DILocation(line: 265, column: 11, scope: !146)
!186 = !DILocation(line: 266, column: 11, scope: !146)
!187 = !DILocation(line: 267, column: 11, scope: !146)
!188 = !DILocation(line: 268, column: 5, scope: !146)
!189 = !DILocation(line: 270, column: 11, scope: !146)
!190 = !DILocation(line: 271, column: 5, scope: !146)
!191 = !DILocation(line: 274, column: 11, scope: !146)
!192 = !DILocation(line: 279, column: 11, scope: !146)
!193 = !DILocation(line: 281, column: 11, scope: !146)
!194 = !DILocation(line: 284, column: 11, scope: !146)
!195 = !DILocation(line: 285, column: 5, scope: !146)
!196 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 287, type: !5, scopeLine: 287, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!197 = !DILocation(line: 288, column: 10, scope: !198)
!198 = !DILexicalBlockFile(scope: !196, file: !4, discriminator: 0)
!199 = !DILocation(line: 289, column: 10, scope: !198)
!200 = !DILocation(line: 290, column: 10, scope: !198)
!201 = !DILocation(line: 291, column: 10, scope: !198)
!202 = !DILocation(line: 292, column: 10, scope: !198)
!203 = !DILocation(line: 293, column: 10, scope: !198)
!204 = !DILocation(line: 294, column: 10, scope: !198)
!205 = !DILocation(line: 295, column: 10, scope: !198)
!206 = !DILocation(line: 296, column: 5, scope: !198)
!207 = !DILocation(line: 297, column: 5, scope: !198)
