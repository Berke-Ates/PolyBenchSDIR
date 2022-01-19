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
@str3 = internal constant [5 x i8] c"path\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_floyd_warshall(i32 %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !3 {
  %9 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %1, 0, !dbg !7
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %9, i32* %2, 1, !dbg !9
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !10
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !11
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !12
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !13
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !14
  %16 = alloca { i32*, i32*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %16, align 8, !dbg !16
  call void @__program_kernel_floyd_warshall(i32 %0, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %16), !dbg !17
  ret void, !dbg !18
}

declare void @__program_kernel_floyd_warshall(i32, { i32*, i32*, i64, [2 x i64], [2 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !19 {
  %3 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 7840000) to i64)), !dbg !20
  %4 = bitcast i8* %3 to i32*, !dbg !22
  %5 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %4, 0, !dbg !23
  %6 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %5, i32* %4, 1, !dbg !24
  %7 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2, !dbg !25
  %8 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %7, i64 2800, 3, 0, !dbg !26
  %9 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %8, i64 2800, 3, 1, !dbg !27
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %9, i64 2800, 4, 0, !dbg !28
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1, !dbg !29
  %12 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !30
  %13 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !31
  %14 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !32
  %15 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !33
  %16 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !34
  %17 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !35
  %18 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !36
  call void @init_array(i32 2800, i32* %12, i32* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18), !dbg !37
  %19 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !38
  %20 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !39
  %21 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !40
  %22 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !41
  %23 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !42
  %24 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !43
  %25 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !44
  call void @kernel_floyd_warshall(i32 2800, i32* %19, i32* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25), !dbg !45
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
  %38 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !57
  %39 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 1, !dbg !58
  %40 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 2, !dbg !59
  %41 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 3, 0, !dbg !60
  %42 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 3, 1, !dbg !61
  %43 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 4, 0, !dbg !62
  %44 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 4, 1, !dbg !63
  call void @print_array(i32 2800, i32* %38, i32* %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44), !dbg !64
  br label %45, !dbg !65

45:                                               ; preds = %37, %36
  %46 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, 0, !dbg !66
  %47 = bitcast i32* %46 to i8*, !dbg !67
  call void @free(i8* %47), !dbg !68
  ret i32 0, !dbg !69
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !70 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !71
  ret i32 %3, !dbg !73
}

define internal void @init_array(i32 %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !74 {
  %9 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %1, 0, !dbg !75
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %9, i32* %2, 1, !dbg !77
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !78
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !79
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !80
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !81
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !82
  %16 = sext i32 %0 to i64, !dbg !83
  br label %17, !dbg !84

17:                                               ; preds = %59, %8
  %18 = phi i64 [ %60, %59 ], [ 0, %8 ]
  %19 = icmp slt i64 %18, %16, !dbg !85
  br i1 %19, label %20, label %61, !dbg !86

20:                                               ; preds = %17
  %21 = trunc i64 %18 to i32, !dbg !87
  %22 = sext i32 %0 to i64, !dbg !88
  br label %23, !dbg !89

23:                                               ; preds = %57, %20
  %24 = phi i64 [ %58, %57 ], [ 0, %20 ]
  %25 = icmp slt i64 %24, %22, !dbg !90
  br i1 %25, label %26, label %59, !dbg !91

26:                                               ; preds = %23
  %27 = trunc i64 %24 to i32, !dbg !92
  %28 = mul i32 %21, %27, !dbg !93
  %29 = srem i32 %28, 7, !dbg !94
  %30 = add i32 %29, 1, !dbg !95
  %31 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !96
  %32 = mul i64 %18, 2800, !dbg !97
  %33 = add i64 %32, %24, !dbg !98
  %34 = getelementptr i32, i32* %31, i64 %33, !dbg !99
  store i32 %30, i32* %34, align 4, !dbg !100
  %35 = add i32 %21, %27, !dbg !101
  %36 = srem i32 %35, 13, !dbg !102
  %37 = icmp eq i32 %36, 0, !dbg !103
  br i1 %37, label %38, label %39, !dbg !104

38:                                               ; preds = %26
  br label %42, !dbg !105

39:                                               ; preds = %26
  %40 = srem i32 %35, 7, !dbg !106
  %41 = icmp eq i32 %40, 0, !dbg !107
  br label %42, !dbg !108

42:                                               ; preds = %38, %39
  %43 = phi i1 [ %41, %39 ], [ true, %38 ]
  br label %44, !dbg !109

44:                                               ; preds = %42
  br i1 %43, label %45, label %46, !dbg !110

45:                                               ; preds = %44
  br label %49, !dbg !111

46:                                               ; preds = %44
  %47 = srem i32 %35, 11, !dbg !112
  %48 = icmp eq i32 %47, 0, !dbg !113
  br label %49, !dbg !114

49:                                               ; preds = %45, %46
  %50 = phi i1 [ %48, %46 ], [ true, %45 ]
  br label %51, !dbg !115

51:                                               ; preds = %49
  br i1 %50, label %52, label %57, !dbg !116

52:                                               ; preds = %51
  %53 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !117
  %54 = mul i64 %18, 2800, !dbg !118
  %55 = add i64 %54, %24, !dbg !119
  %56 = getelementptr i32, i32* %53, i64 %55, !dbg !120
  store i32 999, i32* %56, align 4, !dbg !121
  br label %57, !dbg !122

57:                                               ; preds = %52, %51
  %58 = add i64 %24, 1, !dbg !123
  br label %23, !dbg !124

59:                                               ; preds = %23
  %60 = add i64 %18, 1, !dbg !125
  br label %17, !dbg !126

61:                                               ; preds = %17
  ret void, !dbg !127
}

define void @_mlir_ciface_init_array(i32 %0, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1) !dbg !128 {
  %3 = load { i32*, i32*, i64, [2 x i64], [2 x i64] }, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !129
  %4 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !131
  %5 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !132
  %6 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !133
  %7 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !134
  %8 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !135
  %9 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !136
  %10 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !137
  call void @init_array(i32 %0, i32* %4, i32* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !138
  ret void, !dbg !139
}

define internal void @print_array(i32 %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) !dbg !140 {
  %9 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } undef, i32* %1, 0, !dbg !141
  %10 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %9, i32* %2, 1, !dbg !143
  %11 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2, !dbg !144
  %12 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0, !dbg !145
  %13 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0, !dbg !146
  %14 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1, !dbg !147
  %15 = insertvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1, !dbg !148
  %16 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !149
  %17 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !150
  %18 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !151
  %19 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str3, i32 0, i32 0)), !dbg !152
  %20 = sext i32 %0 to i64, !dbg !153
  br label %21, !dbg !154

21:                                               ; preds = %48, %8
  %22 = phi i64 [ %49, %48 ], [ 0, %8 ]
  %23 = icmp slt i64 %22, %20, !dbg !155
  br i1 %23, label %24, label %50, !dbg !156

24:                                               ; preds = %21
  %25 = trunc i64 %22 to i32, !dbg !157
  %26 = sext i32 %0 to i64, !dbg !158
  br label %27, !dbg !159

27:                                               ; preds = %39, %24
  %28 = phi i64 [ %47, %39 ], [ 0, %24 ]
  %29 = icmp slt i64 %28, %26, !dbg !160
  br i1 %29, label %30, label %48, !dbg !161

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32, !dbg !162
  %32 = mul i32 %25, %0, !dbg !163
  %33 = add i32 %32, %31, !dbg !164
  %34 = srem i32 %33, 20, !dbg !165
  %35 = icmp eq i32 %34, 0, !dbg !166
  br i1 %35, label %36, label %39, !dbg !167

36:                                               ; preds = %30
  %37 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !168
  %38 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !169
  br label %39, !dbg !170

39:                                               ; preds = %36, %30
  %40 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !171
  %41 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %15, 1, !dbg !172
  %42 = mul i64 %22, 2800, !dbg !173
  %43 = add i64 %42, %28, !dbg !174
  %44 = getelementptr i32, i32* %41, i64 %43, !dbg !175
  %45 = load i32, i32* %44, align 4, !dbg !176
  %46 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str5, i32 0, i32 0), i32 %45), !dbg !177
  %47 = add i64 %28, 1, !dbg !178
  br label %27, !dbg !179

48:                                               ; preds = %27
  %49 = add i64 %22, 1, !dbg !180
  br label %21, !dbg !181

50:                                               ; preds = %21
  %51 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !182
  %52 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str3, i32 0, i32 0)), !dbg !183
  %53 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !184
  %54 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !185
  ret void, !dbg !186
}

define void @_mlir_ciface_print_array(i32 %0, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1) !dbg !187 {
  %3 = load { i32*, i32*, i64, [2 x i64], [2 x i64] }, { i32*, i32*, i64, [2 x i64], [2 x i64] }* %1, align 8, !dbg !188
  %4 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 0, !dbg !190
  %5 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 1, !dbg !191
  %6 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 2, !dbg !192
  %7 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 0, !dbg !193
  %8 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 3, 1, !dbg !194
  %9 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 0, !dbg !195
  %10 = extractvalue { i32*, i32*, i64, [2 x i64], [2 x i64] } %3, 4, 1, !dbg !196
  call void @print_array(i32 %0, i32* %4, i32* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10), !dbg !197
  ret void, !dbg !198
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_floyd_warshall", linkageName: "kernel_floyd_warshall", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!20 = !DILocation(line: 45, column: 11, scope: !21)
!21 = !DILexicalBlockFile(scope: !19, file: !4, discriminator: 0)
!22 = !DILocation(line: 46, column: 11, scope: !21)
!23 = !DILocation(line: 48, column: 11, scope: !21)
!24 = !DILocation(line: 49, column: 11, scope: !21)
!25 = !DILocation(line: 51, column: 11, scope: !21)
!26 = !DILocation(line: 52, column: 11, scope: !21)
!27 = !DILocation(line: 53, column: 11, scope: !21)
!28 = !DILocation(line: 54, column: 11, scope: !21)
!29 = !DILocation(line: 55, column: 11, scope: !21)
!30 = !DILocation(line: 56, column: 11, scope: !21)
!31 = !DILocation(line: 57, column: 11, scope: !21)
!32 = !DILocation(line: 58, column: 11, scope: !21)
!33 = !DILocation(line: 59, column: 11, scope: !21)
!34 = !DILocation(line: 60, column: 11, scope: !21)
!35 = !DILocation(line: 61, column: 11, scope: !21)
!36 = !DILocation(line: 62, column: 11, scope: !21)
!37 = !DILocation(line: 63, column: 5, scope: !21)
!38 = !DILocation(line: 64, column: 11, scope: !21)
!39 = !DILocation(line: 65, column: 11, scope: !21)
!40 = !DILocation(line: 66, column: 11, scope: !21)
!41 = !DILocation(line: 67, column: 11, scope: !21)
!42 = !DILocation(line: 68, column: 11, scope: !21)
!43 = !DILocation(line: 69, column: 11, scope: !21)
!44 = !DILocation(line: 70, column: 11, scope: !21)
!45 = !DILocation(line: 71, column: 5, scope: !21)
!46 = !DILocation(line: 72, column: 11, scope: !21)
!47 = !DILocation(line: 73, column: 5, scope: !21)
!48 = !DILocation(line: 75, column: 11, scope: !21)
!49 = !DILocation(line: 76, column: 11, scope: !21)
!50 = !DILocation(line: 79, column: 11, scope: !21)
!51 = !DILocation(line: 80, column: 11, scope: !21)
!52 = !DILocation(line: 81, column: 11, scope: !21)
!53 = !DILocation(line: 82, column: 5, scope: !21)
!54 = !DILocation(line: 84, column: 5, scope: !21)
!55 = !DILocation(line: 86, column: 5, scope: !21)
!56 = !DILocation(line: 88, column: 5, scope: !21)
!57 = !DILocation(line: 90, column: 11, scope: !21)
!58 = !DILocation(line: 91, column: 11, scope: !21)
!59 = !DILocation(line: 92, column: 11, scope: !21)
!60 = !DILocation(line: 93, column: 11, scope: !21)
!61 = !DILocation(line: 94, column: 11, scope: !21)
!62 = !DILocation(line: 95, column: 11, scope: !21)
!63 = !DILocation(line: 96, column: 11, scope: !21)
!64 = !DILocation(line: 97, column: 5, scope: !21)
!65 = !DILocation(line: 98, column: 5, scope: !21)
!66 = !DILocation(line: 100, column: 11, scope: !21)
!67 = !DILocation(line: 101, column: 11, scope: !21)
!68 = !DILocation(line: 102, column: 5, scope: !21)
!69 = !DILocation(line: 103, column: 5, scope: !21)
!70 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 105, type: !5, scopeLine: 105, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!71 = !DILocation(line: 106, column: 10, scope: !72)
!72 = !DILexicalBlockFile(scope: !70, file: !4, discriminator: 0)
!73 = !DILocation(line: 107, column: 5, scope: !72)
!74 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 109, type: !5, scopeLine: 109, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!75 = !DILocation(line: 111, column: 10, scope: !76)
!76 = !DILexicalBlockFile(scope: !74, file: !4, discriminator: 0)
!77 = !DILocation(line: 112, column: 10, scope: !76)
!78 = !DILocation(line: 113, column: 10, scope: !76)
!79 = !DILocation(line: 114, column: 10, scope: !76)
!80 = !DILocation(line: 115, column: 10, scope: !76)
!81 = !DILocation(line: 116, column: 10, scope: !76)
!82 = !DILocation(line: 117, column: 10, scope: !76)
!83 = !DILocation(line: 127, column: 11, scope: !76)
!84 = !DILocation(line: 128, column: 5, scope: !76)
!85 = !DILocation(line: 130, column: 11, scope: !76)
!86 = !DILocation(line: 131, column: 5, scope: !76)
!87 = !DILocation(line: 133, column: 11, scope: !76)
!88 = !DILocation(line: 134, column: 11, scope: !76)
!89 = !DILocation(line: 135, column: 5, scope: !76)
!90 = !DILocation(line: 137, column: 11, scope: !76)
!91 = !DILocation(line: 138, column: 5, scope: !76)
!92 = !DILocation(line: 140, column: 11, scope: !76)
!93 = !DILocation(line: 141, column: 11, scope: !76)
!94 = !DILocation(line: 142, column: 11, scope: !76)
!95 = !DILocation(line: 143, column: 11, scope: !76)
!96 = !DILocation(line: 144, column: 11, scope: !76)
!97 = !DILocation(line: 146, column: 11, scope: !76)
!98 = !DILocation(line: 147, column: 11, scope: !76)
!99 = !DILocation(line: 148, column: 11, scope: !76)
!100 = !DILocation(line: 149, column: 5, scope: !76)
!101 = !DILocation(line: 150, column: 11, scope: !76)
!102 = !DILocation(line: 151, column: 11, scope: !76)
!103 = !DILocation(line: 152, column: 11, scope: !76)
!104 = !DILocation(line: 153, column: 5, scope: !76)
!105 = !DILocation(line: 155, column: 5, scope: !76)
!106 = !DILocation(line: 157, column: 11, scope: !76)
!107 = !DILocation(line: 158, column: 11, scope: !76)
!108 = !DILocation(line: 159, column: 5, scope: !76)
!109 = !DILocation(line: 161, column: 5, scope: !76)
!110 = !DILocation(line: 163, column: 5, scope: !76)
!111 = !DILocation(line: 165, column: 5, scope: !76)
!112 = !DILocation(line: 167, column: 11, scope: !76)
!113 = !DILocation(line: 168, column: 11, scope: !76)
!114 = !DILocation(line: 169, column: 5, scope: !76)
!115 = !DILocation(line: 171, column: 5, scope: !76)
!116 = !DILocation(line: 173, column: 5, scope: !76)
!117 = !DILocation(line: 175, column: 11, scope: !76)
!118 = !DILocation(line: 177, column: 11, scope: !76)
!119 = !DILocation(line: 178, column: 11, scope: !76)
!120 = !DILocation(line: 179, column: 11, scope: !76)
!121 = !DILocation(line: 180, column: 5, scope: !76)
!122 = !DILocation(line: 181, column: 5, scope: !76)
!123 = !DILocation(line: 183, column: 11, scope: !76)
!124 = !DILocation(line: 184, column: 5, scope: !76)
!125 = !DILocation(line: 186, column: 11, scope: !76)
!126 = !DILocation(line: 187, column: 5, scope: !76)
!127 = !DILocation(line: 189, column: 5, scope: !76)
!128 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 191, type: !5, scopeLine: 191, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!129 = !DILocation(line: 192, column: 10, scope: !130)
!130 = !DILexicalBlockFile(scope: !128, file: !4, discriminator: 0)
!131 = !DILocation(line: 193, column: 10, scope: !130)
!132 = !DILocation(line: 194, column: 10, scope: !130)
!133 = !DILocation(line: 195, column: 10, scope: !130)
!134 = !DILocation(line: 196, column: 10, scope: !130)
!135 = !DILocation(line: 197, column: 10, scope: !130)
!136 = !DILocation(line: 198, column: 10, scope: !130)
!137 = !DILocation(line: 199, column: 10, scope: !130)
!138 = !DILocation(line: 200, column: 5, scope: !130)
!139 = !DILocation(line: 201, column: 5, scope: !130)
!140 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 203, type: !5, scopeLine: 203, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!141 = !DILocation(line: 205, column: 10, scope: !142)
!142 = !DILexicalBlockFile(scope: !140, file: !4, discriminator: 0)
!143 = !DILocation(line: 206, column: 10, scope: !142)
!144 = !DILocation(line: 207, column: 10, scope: !142)
!145 = !DILocation(line: 208, column: 10, scope: !142)
!146 = !DILocation(line: 209, column: 10, scope: !142)
!147 = !DILocation(line: 210, column: 10, scope: !142)
!148 = !DILocation(line: 211, column: 10, scope: !142)
!149 = !DILocation(line: 217, column: 11, scope: !142)
!150 = !DILocation(line: 220, column: 11, scope: !142)
!151 = !DILocation(line: 222, column: 11, scope: !142)
!152 = !DILocation(line: 227, column: 11, scope: !142)
!153 = !DILocation(line: 228, column: 11, scope: !142)
!154 = !DILocation(line: 229, column: 5, scope: !142)
!155 = !DILocation(line: 231, column: 11, scope: !142)
!156 = !DILocation(line: 232, column: 5, scope: !142)
!157 = !DILocation(line: 234, column: 11, scope: !142)
!158 = !DILocation(line: 235, column: 11, scope: !142)
!159 = !DILocation(line: 236, column: 5, scope: !142)
!160 = !DILocation(line: 238, column: 11, scope: !142)
!161 = !DILocation(line: 239, column: 5, scope: !142)
!162 = !DILocation(line: 241, column: 11, scope: !142)
!163 = !DILocation(line: 242, column: 11, scope: !142)
!164 = !DILocation(line: 243, column: 11, scope: !142)
!165 = !DILocation(line: 244, column: 11, scope: !142)
!166 = !DILocation(line: 245, column: 11, scope: !142)
!167 = !DILocation(line: 246, column: 5, scope: !142)
!168 = !DILocation(line: 249, column: 11, scope: !142)
!169 = !DILocation(line: 252, column: 11, scope: !142)
!170 = !DILocation(line: 253, column: 5, scope: !142)
!171 = !DILocation(line: 256, column: 11, scope: !142)
!172 = !DILocation(line: 259, column: 11, scope: !142)
!173 = !DILocation(line: 261, column: 11, scope: !142)
!174 = !DILocation(line: 262, column: 11, scope: !142)
!175 = !DILocation(line: 263, column: 11, scope: !142)
!176 = !DILocation(line: 264, column: 11, scope: !142)
!177 = !DILocation(line: 265, column: 11, scope: !142)
!178 = !DILocation(line: 266, column: 11, scope: !142)
!179 = !DILocation(line: 267, column: 5, scope: !142)
!180 = !DILocation(line: 269, column: 11, scope: !142)
!181 = !DILocation(line: 270, column: 5, scope: !142)
!182 = !DILocation(line: 273, column: 11, scope: !142)
!183 = !DILocation(line: 278, column: 11, scope: !142)
!184 = !DILocation(line: 280, column: 11, scope: !142)
!185 = !DILocation(line: 283, column: 11, scope: !142)
!186 = !DILocation(line: 284, column: 5, scope: !142)
!187 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 286, type: !5, scopeLine: 286, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!188 = !DILocation(line: 287, column: 10, scope: !189)
!189 = !DILexicalBlockFile(scope: !187, file: !4, discriminator: 0)
!190 = !DILocation(line: 288, column: 10, scope: !189)
!191 = !DILocation(line: 289, column: 10, scope: !189)
!192 = !DILocation(line: 290, column: 10, scope: !189)
!193 = !DILocation(line: 291, column: 10, scope: !189)
!194 = !DILocation(line: 292, column: 10, scope: !189)
!195 = !DILocation(line: 293, column: 10, scope: !189)
!196 = !DILocation(line: 294, column: 10, scope: !189)
!197 = !DILocation(line: 295, column: 5, scope: !189)
!198 = !DILocation(line: 296, column: 5, scope: !189)
