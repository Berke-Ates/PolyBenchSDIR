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
@str3 = internal constant [2 x i8] c"D\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

define void @kernel_2mm(i32 %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, double* %20, double* %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, double* %27, double* %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, double* %34, double* %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40) !dbg !3 {
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %6, 0, !dbg !7
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, double* %7, 1, !dbg !9
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %8, 2, !dbg !10
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %9, 3, 0, !dbg !11
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %11, 4, 0, !dbg !12
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %10, 3, 1, !dbg !13
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 %12, 4, 1, !dbg !14
  %49 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !15
  store { double*, double*, i64, [2 x i64], [2 x i64] } %48, { double*, double*, i64, [2 x i64], [2 x i64] }* %49, align 8, !dbg !16
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %13, 0, !dbg !17
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, double* %14, 1, !dbg !18
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %15, 2, !dbg !19
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %16, 3, 0, !dbg !20
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %18, 4, 0, !dbg !21
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %17, 3, 1, !dbg !22
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 %19, 4, 1, !dbg !23
  %57 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !24
  store { double*, double*, i64, [2 x i64], [2 x i64] } %56, { double*, double*, i64, [2 x i64], [2 x i64] }* %57, align 8, !dbg !25
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %20, 0, !dbg !26
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, double* %21, 1, !dbg !27
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, i64 %22, 2, !dbg !28
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %23, 3, 0, !dbg !29
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, i64 %25, 4, 0, !dbg !30
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, i64 %24, 3, 1, !dbg !31
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 %26, 4, 1, !dbg !32
  %65 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !33
  store { double*, double*, i64, [2 x i64], [2 x i64] } %64, { double*, double*, i64, [2 x i64], [2 x i64] }* %65, align 8, !dbg !34
  %66 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %27, 0, !dbg !35
  %67 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %66, double* %28, 1, !dbg !36
  %68 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %67, i64 %29, 2, !dbg !37
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %68, i64 %30, 3, 0, !dbg !38
  %70 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, i64 %32, 4, 0, !dbg !39
  %71 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %70, i64 %31, 3, 1, !dbg !40
  %72 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %71, i64 %33, 4, 1, !dbg !41
  %73 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !42
  store { double*, double*, i64, [2 x i64], [2 x i64] } %72, { double*, double*, i64, [2 x i64], [2 x i64] }* %73, align 8, !dbg !43
  %74 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %34, 0, !dbg !44
  %75 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %74, double* %35, 1, !dbg !45
  %76 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %75, i64 %36, 2, !dbg !46
  %77 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, i64 %37, 3, 0, !dbg !47
  %78 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %77, i64 %39, 4, 0, !dbg !48
  %79 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %78, i64 %38, 3, 1, !dbg !49
  %80 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %79, i64 %40, 4, 1, !dbg !50
  %81 = alloca { double*, double*, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !51
  store { double*, double*, i64, [2 x i64], [2 x i64] } %80, { double*, double*, i64, [2 x i64], [2 x i64] }* %81, align 8, !dbg !52
  call void @__program_kernel_2mm(i32 %0, i32 %1, i32 %2, i32 %3, double %4, double %5, { double*, double*, i64, [2 x i64], [2 x i64] }* %49, { double*, double*, i64, [2 x i64], [2 x i64] }* %57, { double*, double*, i64, [2 x i64], [2 x i64] }* %65, { double*, double*, i64, [2 x i64], [2 x i64] }* %73, { double*, double*, i64, [2 x i64], [2 x i64] }* %81), !dbg !53
  ret void, !dbg !54
}

declare void @__program_kernel_2mm(i32, i32, i32, i32, double, double, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*, { double*, double*, i64, [2 x i64], [2 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !55 {
  %3 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8, !dbg !56
  %4 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %3, 0, !dbg !58
  %5 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, double* %3, 1, !dbg !59
  %6 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, i64 0, 2, !dbg !60
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %6, i64 1, 3, 0, !dbg !61
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, i64 1, 4, 0, !dbg !62
  %9 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8, !dbg !63
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0, !dbg !64
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, double* %9, 1, !dbg !65
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, i64 0, 2, !dbg !66
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, i64 1, 3, 0, !dbg !67
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0, !dbg !68
  %15 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 720000) to i64)), !dbg !69
  %16 = bitcast i8* %15 to double*, !dbg !70
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0, !dbg !71
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1, !dbg !72
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2, !dbg !73
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 800, 3, 0, !dbg !74
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 900, 3, 1, !dbg !75
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 900, 4, 0, !dbg !76
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1, !dbg !77
  %24 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 880000) to i64)), !dbg !78
  %25 = bitcast i8* %24 to double*, !dbg !79
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %25, 0, !dbg !80
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %25, 1, !dbg !81
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 0, 2, !dbg !82
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 800, 3, 0, !dbg !83
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 1100, 3, 1, !dbg !84
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 1100, 4, 0, !dbg !85
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1, !dbg !86
  %33 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 990000) to i64)), !dbg !87
  %34 = bitcast i8* %33 to double*, !dbg !88
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %34, 0, !dbg !89
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, double* %34, 1, !dbg !90
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 0, 2, !dbg !91
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 1100, 3, 0, !dbg !92
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 900, 3, 1, !dbg !93
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 900, 4, 0, !dbg !94
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 1, 4, 1, !dbg !95
  %42 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1080000) to i64)), !dbg !96
  %43 = bitcast i8* %42 to double*, !dbg !97
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %43, 0, !dbg !98
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, double* %43, 1, !dbg !99
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 0, 2, !dbg !100
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 900, 3, 0, !dbg !101
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 1200, 3, 1, !dbg !102
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, i64 1200, 4, 0, !dbg !103
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 1, 4, 1, !dbg !104
  %51 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 960000) to i64)), !dbg !105
  %52 = bitcast i8* %51 to double*, !dbg !106
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %52, 0, !dbg !107
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, double* %52, 1, !dbg !108
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 0, 2, !dbg !109
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 800, 3, 0, !dbg !110
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 1200, 3, 1, !dbg !111
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 1200, 4, 0, !dbg !112
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 1, 4, 1, !dbg !113
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 0, !dbg !114
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !115
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 2, !dbg !116
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 3, 0, !dbg !117
  %64 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 4, 0, !dbg !118
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0, !dbg !119
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1, !dbg !120
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2, !dbg !121
  %68 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0, !dbg !122
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0, !dbg !123
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0, !dbg !124
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !125
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2, !dbg !126
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0, !dbg !127
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1, !dbg !128
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0, !dbg !129
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1, !dbg !130
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0, !dbg !131
  %78 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 1, !dbg !132
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 2, !dbg !133
  %80 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 0, !dbg !134
  %81 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 1, !dbg !135
  %82 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 0, !dbg !136
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 1, !dbg !137
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 0, !dbg !138
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1, !dbg !139
  %86 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 2, !dbg !140
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 0, !dbg !141
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 1, !dbg !142
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 0, !dbg !143
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 1, !dbg !144
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0, !dbg !145
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1, !dbg !146
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 2, !dbg !147
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 0, !dbg !148
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 1, !dbg !149
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 0, !dbg !150
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 1, !dbg !151
  call void @init_array(i32 800, i32 900, i32 1100, i32 1200, double* %60, double* %61, i64 %62, i64 %63, i64 %64, double* %65, double* %66, i64 %67, i64 %68, i64 %69, double* %70, double* %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, double* %77, double* %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, double* %84, double* %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, double* %91, double* %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97), !dbg !152
  %98 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !153
  %99 = getelementptr double, double* %98, i64 0, !dbg !154
  %100 = load double, double* %99, align 8, !dbg !155
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1, !dbg !156
  %102 = getelementptr double, double* %101, i64 0, !dbg !157
  %103 = load double, double* %102, align 8, !dbg !158
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0, !dbg !159
  %105 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !160
  %106 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2, !dbg !161
  %107 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0, !dbg !162
  %108 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1, !dbg !163
  %109 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0, !dbg !164
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1, !dbg !165
  %111 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0, !dbg !166
  %112 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1, !dbg !167
  %113 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2, !dbg !168
  %114 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0, !dbg !169
  %115 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1, !dbg !170
  %116 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0, !dbg !171
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1, !dbg !172
  %118 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0, !dbg !173
  %119 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 1, !dbg !174
  %120 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 2, !dbg !175
  %121 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 0, !dbg !176
  %122 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 1, !dbg !177
  %123 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 0, !dbg !178
  %124 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 1, !dbg !179
  %125 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 0, !dbg !180
  %126 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1, !dbg !181
  %127 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 2, !dbg !182
  %128 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 0, !dbg !183
  %129 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 1, !dbg !184
  %130 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 0, !dbg !185
  %131 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 1, !dbg !186
  %132 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0, !dbg !187
  %133 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1, !dbg !188
  %134 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 2, !dbg !189
  %135 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 0, !dbg !190
  %136 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 1, !dbg !191
  %137 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 0, !dbg !192
  %138 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 1, !dbg !193
  call void @kernel_2mm(i32 800, i32 900, i32 1100, i32 1200, double %100, double %103, double* %104, double* %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, double* %111, double* %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, double* %118, double* %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, double* %125, double* %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, double* %132, double* %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138), !dbg !194
  %139 = icmp sgt i32 %0, 42, !dbg !195
  br i1 %139, label %140, label %146, !dbg !196

140:                                              ; preds = %2
  %141 = getelementptr i8*, i8** %1, i64 0, !dbg !197
  %142 = load i8*, i8** %141, align 8, !dbg !198
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !199
  %144 = trunc i32 %143 to i1, !dbg !200
  %145 = xor i1 %144, true, !dbg !201
  br label %147, !dbg !202

146:                                              ; preds = %2
  br label %147, !dbg !203

147:                                              ; preds = %140, %146
  %148 = phi i1 [ false, %146 ], [ %145, %140 ]
  br label %149, !dbg !204

149:                                              ; preds = %147
  br i1 %148, label %150, label %158, !dbg !205

150:                                              ; preds = %149
  %151 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0, !dbg !206
  %152 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1, !dbg !207
  %153 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 2, !dbg !208
  %154 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 0, !dbg !209
  %155 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 1, !dbg !210
  %156 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 0, !dbg !211
  %157 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 1, !dbg !212
  call void @print_array(i32 800, i32 1200, double* %151, double* %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157), !dbg !213
  br label %158, !dbg !214

158:                                              ; preds = %150, %149
  %159 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0, !dbg !215
  %160 = bitcast double* %159 to i8*, !dbg !216
  call void @free(i8* %160), !dbg !217
  %161 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0, !dbg !218
  %162 = bitcast double* %161 to i8*, !dbg !219
  call void @free(i8* %162), !dbg !220
  %163 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0, !dbg !221
  %164 = bitcast double* %163 to i8*, !dbg !222
  call void @free(i8* %164), !dbg !223
  %165 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 0, !dbg !224
  %166 = bitcast double* %165 to i8*, !dbg !225
  call void @free(i8* %166), !dbg !226
  %167 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0, !dbg !227
  %168 = bitcast double* %167 to i8*, !dbg !228
  call void @free(i8* %168), !dbg !229
  ret i32 0, !dbg !230
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !231 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !232
  ret i32 %3, !dbg !234
}

define internal void @init_array(i32 %0, i32 %1, i32 %2, i32 %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, double* %21, double* %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, double* %28, double* %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, double* %35, double* %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41) !dbg !235 {
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %4, 0, !dbg !236
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, double* %5, 1, !dbg !238
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %6, 2, !dbg !239
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %7, 3, 0, !dbg !240
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, i64 %8, 4, 0, !dbg !241
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0, !dbg !242
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, double* %10, 1, !dbg !243
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 %11, 2, !dbg !244
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 %12, 3, 0, !dbg !245
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, i64 %13, 4, 0, !dbg !246
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %14, 0, !dbg !247
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, double* %15, 1, !dbg !248
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %16, 2, !dbg !249
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 %17, 3, 0, !dbg !250
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %19, 4, 0, !dbg !251
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %18, 3, 1, !dbg !252
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 %20, 4, 1, !dbg !253
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %21, 0, !dbg !254
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, double* %22, 1, !dbg !255
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, i64 %23, 2, !dbg !256
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, i64 %24, 3, 0, !dbg !257
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 %26, 4, 0, !dbg !258
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 %25, 3, 1, !dbg !259
  %66 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, i64 %27, 4, 1, !dbg !260
  %67 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %28, 0, !dbg !261
  %68 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %67, double* %29, 1, !dbg !262
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %68, i64 %30, 2, !dbg !263
  %70 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, i64 %31, 3, 0, !dbg !264
  %71 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %70, i64 %33, 4, 0, !dbg !265
  %72 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %71, i64 %32, 3, 1, !dbg !266
  %73 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %72, i64 %34, 4, 1, !dbg !267
  %74 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %35, 0, !dbg !268
  %75 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %74, double* %36, 1, !dbg !269
  %76 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %75, i64 %37, 2, !dbg !270
  %77 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, i64 %38, 3, 0, !dbg !271
  %78 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %77, i64 %40, 4, 0, !dbg !272
  %79 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %78, i64 %39, 3, 1, !dbg !273
  %80 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %79, i64 %41, 4, 1, !dbg !274
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, 1, !dbg !275
  %82 = getelementptr double, double* %81, i64 0, !dbg !276
  store double 1.500000e+00, double* %82, align 8, !dbg !277
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1, !dbg !278
  %84 = getelementptr double, double* %83, i64 0, !dbg !279
  store double 1.200000e+00, double* %84, align 8, !dbg !280
  %85 = sext i32 %0 to i64, !dbg !281
  br label %86, !dbg !282

86:                                               ; preds = %108, %42
  %87 = phi i64 [ %109, %108 ], [ 0, %42 ]
  %88 = icmp slt i64 %87, %85, !dbg !283
  br i1 %88, label %89, label %110, !dbg !284

89:                                               ; preds = %86
  %90 = trunc i64 %87 to i32, !dbg !285
  %91 = sext i32 %2 to i64, !dbg !286
  br label %92, !dbg !287

92:                                               ; preds = %95, %89
  %93 = phi i64 [ %107, %95 ], [ 0, %89 ]
  %94 = icmp slt i64 %93, %91, !dbg !288
  br i1 %94, label %95, label %108, !dbg !289

95:                                               ; preds = %92
  %96 = trunc i64 %93 to i32, !dbg !290
  %97 = mul i32 %90, %96, !dbg !291
  %98 = add i32 %97, 1, !dbg !292
  %99 = srem i32 %98, %0, !dbg !293
  %100 = sitofp i32 %99 to double, !dbg !294
  %101 = sitofp i32 %0 to double, !dbg !295
  %102 = fdiv double %100, %101, !dbg !296
  %103 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1, !dbg !297
  %104 = mul i64 %87, 1100, !dbg !298
  %105 = add i64 %104, %93, !dbg !299
  %106 = getelementptr double, double* %103, i64 %105, !dbg !300
  store double %102, double* %106, align 8, !dbg !301
  %107 = add i64 %93, 1, !dbg !302
  br label %92, !dbg !303

108:                                              ; preds = %92
  %109 = add i64 %87, 1, !dbg !304
  br label %86, !dbg !305

110:                                              ; preds = %86
  %111 = sext i32 %2 to i64, !dbg !306
  br label %112, !dbg !307

112:                                              ; preds = %134, %110
  %113 = phi i64 [ %135, %134 ], [ 0, %110 ]
  %114 = icmp slt i64 %113, %111, !dbg !308
  br i1 %114, label %115, label %136, !dbg !309

115:                                              ; preds = %112
  %116 = trunc i64 %113 to i32, !dbg !310
  %117 = sext i32 %1 to i64, !dbg !311
  br label %118, !dbg !312

118:                                              ; preds = %121, %115
  %119 = phi i64 [ %133, %121 ], [ 0, %115 ]
  %120 = icmp slt i64 %119, %117, !dbg !313
  br i1 %120, label %121, label %134, !dbg !314

121:                                              ; preds = %118
  %122 = trunc i64 %119 to i32, !dbg !315
  %123 = add i32 %122, 1, !dbg !316
  %124 = mul i32 %116, %123, !dbg !317
  %125 = srem i32 %124, %1, !dbg !318
  %126 = sitofp i32 %125 to double, !dbg !319
  %127 = sitofp i32 %1 to double, !dbg !320
  %128 = fdiv double %126, %127, !dbg !321
  %129 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %66, 1, !dbg !322
  %130 = mul i64 %113, 900, !dbg !323
  %131 = add i64 %130, %119, !dbg !324
  %132 = getelementptr double, double* %129, i64 %131, !dbg !325
  store double %128, double* %132, align 8, !dbg !326
  %133 = add i64 %119, 1, !dbg !327
  br label %118, !dbg !328

134:                                              ; preds = %118
  %135 = add i64 %113, 1, !dbg !329
  br label %112, !dbg !330

136:                                              ; preds = %112
  %137 = sext i32 %1 to i64, !dbg !331
  br label %138, !dbg !332

138:                                              ; preds = %161, %136
  %139 = phi i64 [ %162, %161 ], [ 0, %136 ]
  %140 = icmp slt i64 %139, %137, !dbg !333
  br i1 %140, label %141, label %163, !dbg !334

141:                                              ; preds = %138
  %142 = trunc i64 %139 to i32, !dbg !335
  %143 = sext i32 %3 to i64, !dbg !336
  br label %144, !dbg !337

144:                                              ; preds = %147, %141
  %145 = phi i64 [ %160, %147 ], [ 0, %141 ]
  %146 = icmp slt i64 %145, %143, !dbg !338
  br i1 %146, label %147, label %161, !dbg !339

147:                                              ; preds = %144
  %148 = trunc i64 %145 to i32, !dbg !340
  %149 = add i32 %148, 3, !dbg !341
  %150 = mul i32 %142, %149, !dbg !342
  %151 = add i32 %150, 1, !dbg !343
  %152 = srem i32 %151, %3, !dbg !344
  %153 = sitofp i32 %152 to double, !dbg !345
  %154 = sitofp i32 %3 to double, !dbg !346
  %155 = fdiv double %153, %154, !dbg !347
  %156 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %73, 1, !dbg !348
  %157 = mul i64 %139, 1200, !dbg !349
  %158 = add i64 %157, %145, !dbg !350
  %159 = getelementptr double, double* %156, i64 %158, !dbg !351
  store double %155, double* %159, align 8, !dbg !352
  %160 = add i64 %145, 1, !dbg !353
  br label %144, !dbg !354

161:                                              ; preds = %144
  %162 = add i64 %139, 1, !dbg !355
  br label %138, !dbg !356

163:                                              ; preds = %138
  %164 = sext i32 %0 to i64, !dbg !357
  br label %165, !dbg !358

165:                                              ; preds = %187, %163
  %166 = phi i64 [ %188, %187 ], [ 0, %163 ]
  %167 = icmp slt i64 %166, %164, !dbg !359
  br i1 %167, label %168, label %189, !dbg !360

168:                                              ; preds = %165
  %169 = trunc i64 %166 to i32, !dbg !361
  %170 = sext i32 %3 to i64, !dbg !362
  br label %171, !dbg !363

171:                                              ; preds = %174, %168
  %172 = phi i64 [ %186, %174 ], [ 0, %168 ]
  %173 = icmp slt i64 %172, %170, !dbg !364
  br i1 %173, label %174, label %187, !dbg !365

174:                                              ; preds = %171
  %175 = trunc i64 %172 to i32, !dbg !366
  %176 = add i32 %175, 2, !dbg !367
  %177 = mul i32 %169, %176, !dbg !368
  %178 = srem i32 %177, %2, !dbg !369
  %179 = sitofp i32 %178 to double, !dbg !370
  %180 = sitofp i32 %2 to double, !dbg !371
  %181 = fdiv double %179, %180, !dbg !372
  %182 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %80, 1, !dbg !373
  %183 = mul i64 %166, 1200, !dbg !374
  %184 = add i64 %183, %172, !dbg !375
  %185 = getelementptr double, double* %182, i64 %184, !dbg !376
  store double %181, double* %185, align 8, !dbg !377
  %186 = add i64 %172, 1, !dbg !378
  br label %171, !dbg !379

187:                                              ; preds = %171
  %188 = add i64 %166, 1, !dbg !380
  br label %165, !dbg !381

189:                                              ; preds = %165
  ret void, !dbg !382
}

define void @_mlir_ciface_init_array(i32 %0, i32 %1, i32 %2, i32 %3, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, { double*, double*, i64, [2 x i64], [2 x i64] }* %6, { double*, double*, i64, [2 x i64], [2 x i64] }* %7, { double*, double*, i64, [2 x i64], [2 x i64] }* %8, { double*, double*, i64, [2 x i64], [2 x i64] }* %9) !dbg !383 {
  %11 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %4, align 8, !dbg !384
  %12 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 0, !dbg !386
  %13 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1, !dbg !387
  %14 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 2, !dbg !388
  %15 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 3, 0, !dbg !389
  %16 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 4, 0, !dbg !390
  %17 = load { double*, double*, i64, [1 x i64], [1 x i64] }, { double*, double*, i64, [1 x i64], [1 x i64] }* %5, align 8, !dbg !391
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 0, !dbg !392
  %19 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 1, !dbg !393
  %20 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 2, !dbg !394
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 3, 0, !dbg !395
  %22 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 4, 0, !dbg !396
  %23 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %6, align 8, !dbg !397
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0, !dbg !398
  %25 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1, !dbg !399
  %26 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2, !dbg !400
  %27 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0, !dbg !401
  %28 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1, !dbg !402
  %29 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0, !dbg !403
  %30 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1, !dbg !404
  %31 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %7, align 8, !dbg !405
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 0, !dbg !406
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1, !dbg !407
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 2, !dbg !408
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 3, 0, !dbg !409
  %36 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 3, 1, !dbg !410
  %37 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 4, 0, !dbg !411
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 4, 1, !dbg !412
  %39 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %8, align 8, !dbg !413
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 0, !dbg !414
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1, !dbg !415
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 2, !dbg !416
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 3, 0, !dbg !417
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 3, 1, !dbg !418
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 4, 0, !dbg !419
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 4, 1, !dbg !420
  %47 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %9, align 8, !dbg !421
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 0, !dbg !422
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 1, !dbg !423
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 2, !dbg !424
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 3, 0, !dbg !425
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 3, 1, !dbg !426
  %53 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 4, 0, !dbg !427
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 4, 1, !dbg !428
  call void @init_array(i32 %0, i32 %1, i32 %2, i32 %3, double* %12, double* %13, i64 %14, i64 %15, i64 %16, double* %18, double* %19, i64 %20, i64 %21, i64 %22, double* %24, double* %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, double* %32, double* %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, double* %40, double* %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, double* %48, double* %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54), !dbg !429
  ret void, !dbg !430
}

define internal void @print_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) !dbg !431 {
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0, !dbg !432
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, double* %3, 1, !dbg !434
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 2, !dbg !435
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %5, 3, 0, !dbg !436
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %7, 4, 0, !dbg !437
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %6, 3, 1, !dbg !438
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 %8, 4, 1, !dbg !439
  %17 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !440
  %18 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !441
  %19 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !442
  %20 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !443
  %21 = sext i32 %0 to i64, !dbg !444
  br label %22, !dbg !445

22:                                               ; preds = %49, %9
  %23 = phi i64 [ %50, %49 ], [ 0, %9 ]
  %24 = icmp slt i64 %23, %21, !dbg !446
  br i1 %24, label %25, label %51, !dbg !447

25:                                               ; preds = %22
  %26 = trunc i64 %23 to i32, !dbg !448
  %27 = sext i32 %1 to i64, !dbg !449
  br label %28, !dbg !450

28:                                               ; preds = %40, %25
  %29 = phi i64 [ %48, %40 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, %27, !dbg !451
  br i1 %30, label %31, label %49, !dbg !452

31:                                               ; preds = %28
  %32 = trunc i64 %29 to i32, !dbg !453
  %33 = mul i32 %26, %0, !dbg !454
  %34 = add i32 %33, %32, !dbg !455
  %35 = srem i32 %34, 20, !dbg !456
  %36 = icmp eq i32 %35, 0, !dbg !457
  br i1 %36, label %37, label %40, !dbg !458

37:                                               ; preds = %31
  %38 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !459
  %39 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !460
  br label %40, !dbg !461

40:                                               ; preds = %37, %31
  %41 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !462
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1, !dbg !463
  %43 = mul i64 %23, 1200, !dbg !464
  %44 = add i64 %43, %29, !dbg !465
  %45 = getelementptr double, double* %42, i64 %44, !dbg !466
  %46 = load double, double* %45, align 8, !dbg !467
  %47 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %46), !dbg !468
  %48 = add i64 %29, 1, !dbg !469
  br label %28, !dbg !470

49:                                               ; preds = %28
  %50 = add i64 %23, 1, !dbg !471
  br label %22, !dbg !472

51:                                               ; preds = %22
  %52 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !473
  %53 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !474
  %54 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !475
  %55 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !476
  ret void, !dbg !477
}

define void @_mlir_ciface_print_array(i32 %0, i32 %1, { double*, double*, i64, [2 x i64], [2 x i64] }* %2) !dbg !478 {
  %4 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %2, align 8, !dbg !479
  %5 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 0, !dbg !481
  %6 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 1, !dbg !482
  %7 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 2, !dbg !483
  %8 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 3, 0, !dbg !484
  %9 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 3, 1, !dbg !485
  %10 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 4, 0, !dbg !486
  %11 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %4, 4, 1, !dbg !487
  call void @print_array(i32 %0, i32 %1, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11), !dbg !488
  ret void, !dbg !489
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_2mm", linkageName: "kernel_2mm", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!44 = !DILocation(line: 50, column: 11, scope: !8)
!45 = !DILocation(line: 51, column: 11, scope: !8)
!46 = !DILocation(line: 52, column: 11, scope: !8)
!47 = !DILocation(line: 53, column: 11, scope: !8)
!48 = !DILocation(line: 54, column: 11, scope: !8)
!49 = !DILocation(line: 55, column: 11, scope: !8)
!50 = !DILocation(line: 56, column: 11, scope: !8)
!51 = !DILocation(line: 58, column: 11, scope: !8)
!52 = !DILocation(line: 59, column: 5, scope: !8)
!53 = !DILocation(line: 60, column: 5, scope: !8)
!54 = !DILocation(line: 61, column: 5, scope: !8)
!55 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 75, type: !5, scopeLine: 75, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!56 = !DILocation(line: 90, column: 11, scope: !57)
!57 = !DILexicalBlockFile(scope: !55, file: !4, discriminator: 0)
!58 = !DILocation(line: 92, column: 11, scope: !57)
!59 = !DILocation(line: 93, column: 11, scope: !57)
!60 = !DILocation(line: 95, column: 11, scope: !57)
!61 = !DILocation(line: 96, column: 11, scope: !57)
!62 = !DILocation(line: 97, column: 11, scope: !57)
!63 = !DILocation(line: 103, column: 11, scope: !57)
!64 = !DILocation(line: 105, column: 11, scope: !57)
!65 = !DILocation(line: 106, column: 11, scope: !57)
!66 = !DILocation(line: 108, column: 11, scope: !57)
!67 = !DILocation(line: 109, column: 11, scope: !57)
!68 = !DILocation(line: 110, column: 11, scope: !57)
!69 = !DILocation(line: 118, column: 11, scope: !57)
!70 = !DILocation(line: 119, column: 11, scope: !57)
!71 = !DILocation(line: 121, column: 11, scope: !57)
!72 = !DILocation(line: 122, column: 11, scope: !57)
!73 = !DILocation(line: 124, column: 11, scope: !57)
!74 = !DILocation(line: 125, column: 11, scope: !57)
!75 = !DILocation(line: 126, column: 11, scope: !57)
!76 = !DILocation(line: 127, column: 11, scope: !57)
!77 = !DILocation(line: 128, column: 11, scope: !57)
!78 = !DILocation(line: 136, column: 11, scope: !57)
!79 = !DILocation(line: 137, column: 11, scope: !57)
!80 = !DILocation(line: 139, column: 11, scope: !57)
!81 = !DILocation(line: 140, column: 11, scope: !57)
!82 = !DILocation(line: 142, column: 11, scope: !57)
!83 = !DILocation(line: 143, column: 11, scope: !57)
!84 = !DILocation(line: 144, column: 11, scope: !57)
!85 = !DILocation(line: 145, column: 11, scope: !57)
!86 = !DILocation(line: 146, column: 11, scope: !57)
!87 = !DILocation(line: 154, column: 11, scope: !57)
!88 = !DILocation(line: 155, column: 11, scope: !57)
!89 = !DILocation(line: 157, column: 11, scope: !57)
!90 = !DILocation(line: 158, column: 11, scope: !57)
!91 = !DILocation(line: 160, column: 11, scope: !57)
!92 = !DILocation(line: 161, column: 11, scope: !57)
!93 = !DILocation(line: 162, column: 11, scope: !57)
!94 = !DILocation(line: 163, column: 11, scope: !57)
!95 = !DILocation(line: 164, column: 11, scope: !57)
!96 = !DILocation(line: 172, column: 11, scope: !57)
!97 = !DILocation(line: 173, column: 11, scope: !57)
!98 = !DILocation(line: 175, column: 11, scope: !57)
!99 = !DILocation(line: 176, column: 12, scope: !57)
!100 = !DILocation(line: 178, column: 12, scope: !57)
!101 = !DILocation(line: 179, column: 12, scope: !57)
!102 = !DILocation(line: 180, column: 12, scope: !57)
!103 = !DILocation(line: 181, column: 12, scope: !57)
!104 = !DILocation(line: 182, column: 12, scope: !57)
!105 = !DILocation(line: 190, column: 12, scope: !57)
!106 = !DILocation(line: 191, column: 12, scope: !57)
!107 = !DILocation(line: 193, column: 12, scope: !57)
!108 = !DILocation(line: 194, column: 12, scope: !57)
!109 = !DILocation(line: 196, column: 12, scope: !57)
!110 = !DILocation(line: 197, column: 12, scope: !57)
!111 = !DILocation(line: 198, column: 12, scope: !57)
!112 = !DILocation(line: 199, column: 12, scope: !57)
!113 = !DILocation(line: 200, column: 12, scope: !57)
!114 = !DILocation(line: 201, column: 12, scope: !57)
!115 = !DILocation(line: 202, column: 12, scope: !57)
!116 = !DILocation(line: 203, column: 12, scope: !57)
!117 = !DILocation(line: 204, column: 12, scope: !57)
!118 = !DILocation(line: 205, column: 12, scope: !57)
!119 = !DILocation(line: 206, column: 12, scope: !57)
!120 = !DILocation(line: 207, column: 12, scope: !57)
!121 = !DILocation(line: 208, column: 12, scope: !57)
!122 = !DILocation(line: 209, column: 12, scope: !57)
!123 = !DILocation(line: 210, column: 12, scope: !57)
!124 = !DILocation(line: 211, column: 12, scope: !57)
!125 = !DILocation(line: 212, column: 12, scope: !57)
!126 = !DILocation(line: 213, column: 12, scope: !57)
!127 = !DILocation(line: 214, column: 12, scope: !57)
!128 = !DILocation(line: 215, column: 12, scope: !57)
!129 = !DILocation(line: 216, column: 12, scope: !57)
!130 = !DILocation(line: 217, column: 12, scope: !57)
!131 = !DILocation(line: 218, column: 12, scope: !57)
!132 = !DILocation(line: 219, column: 12, scope: !57)
!133 = !DILocation(line: 220, column: 12, scope: !57)
!134 = !DILocation(line: 221, column: 12, scope: !57)
!135 = !DILocation(line: 222, column: 12, scope: !57)
!136 = !DILocation(line: 223, column: 12, scope: !57)
!137 = !DILocation(line: 224, column: 12, scope: !57)
!138 = !DILocation(line: 225, column: 12, scope: !57)
!139 = !DILocation(line: 226, column: 12, scope: !57)
!140 = !DILocation(line: 227, column: 12, scope: !57)
!141 = !DILocation(line: 228, column: 12, scope: !57)
!142 = !DILocation(line: 229, column: 12, scope: !57)
!143 = !DILocation(line: 230, column: 12, scope: !57)
!144 = !DILocation(line: 231, column: 12, scope: !57)
!145 = !DILocation(line: 232, column: 12, scope: !57)
!146 = !DILocation(line: 233, column: 12, scope: !57)
!147 = !DILocation(line: 234, column: 12, scope: !57)
!148 = !DILocation(line: 235, column: 12, scope: !57)
!149 = !DILocation(line: 236, column: 12, scope: !57)
!150 = !DILocation(line: 237, column: 12, scope: !57)
!151 = !DILocation(line: 238, column: 12, scope: !57)
!152 = !DILocation(line: 239, column: 5, scope: !57)
!153 = !DILocation(line: 241, column: 12, scope: !57)
!154 = !DILocation(line: 242, column: 12, scope: !57)
!155 = !DILocation(line: 243, column: 12, scope: !57)
!156 = !DILocation(line: 245, column: 12, scope: !57)
!157 = !DILocation(line: 246, column: 12, scope: !57)
!158 = !DILocation(line: 247, column: 12, scope: !57)
!159 = !DILocation(line: 248, column: 12, scope: !57)
!160 = !DILocation(line: 249, column: 12, scope: !57)
!161 = !DILocation(line: 250, column: 12, scope: !57)
!162 = !DILocation(line: 251, column: 12, scope: !57)
!163 = !DILocation(line: 252, column: 12, scope: !57)
!164 = !DILocation(line: 253, column: 12, scope: !57)
!165 = !DILocation(line: 254, column: 12, scope: !57)
!166 = !DILocation(line: 255, column: 12, scope: !57)
!167 = !DILocation(line: 256, column: 12, scope: !57)
!168 = !DILocation(line: 257, column: 12, scope: !57)
!169 = !DILocation(line: 258, column: 12, scope: !57)
!170 = !DILocation(line: 259, column: 12, scope: !57)
!171 = !DILocation(line: 260, column: 12, scope: !57)
!172 = !DILocation(line: 261, column: 12, scope: !57)
!173 = !DILocation(line: 262, column: 12, scope: !57)
!174 = !DILocation(line: 263, column: 12, scope: !57)
!175 = !DILocation(line: 264, column: 12, scope: !57)
!176 = !DILocation(line: 265, column: 12, scope: !57)
!177 = !DILocation(line: 266, column: 12, scope: !57)
!178 = !DILocation(line: 267, column: 12, scope: !57)
!179 = !DILocation(line: 268, column: 12, scope: !57)
!180 = !DILocation(line: 269, column: 12, scope: !57)
!181 = !DILocation(line: 270, column: 12, scope: !57)
!182 = !DILocation(line: 271, column: 12, scope: !57)
!183 = !DILocation(line: 272, column: 12, scope: !57)
!184 = !DILocation(line: 273, column: 12, scope: !57)
!185 = !DILocation(line: 274, column: 12, scope: !57)
!186 = !DILocation(line: 275, column: 12, scope: !57)
!187 = !DILocation(line: 276, column: 12, scope: !57)
!188 = !DILocation(line: 277, column: 12, scope: !57)
!189 = !DILocation(line: 278, column: 12, scope: !57)
!190 = !DILocation(line: 279, column: 12, scope: !57)
!191 = !DILocation(line: 280, column: 12, scope: !57)
!192 = !DILocation(line: 281, column: 12, scope: !57)
!193 = !DILocation(line: 282, column: 12, scope: !57)
!194 = !DILocation(line: 283, column: 5, scope: !57)
!195 = !DILocation(line: 284, column: 12, scope: !57)
!196 = !DILocation(line: 285, column: 5, scope: !57)
!197 = !DILocation(line: 287, column: 12, scope: !57)
!198 = !DILocation(line: 288, column: 12, scope: !57)
!199 = !DILocation(line: 291, column: 12, scope: !57)
!200 = !DILocation(line: 292, column: 12, scope: !57)
!201 = !DILocation(line: 293, column: 12, scope: !57)
!202 = !DILocation(line: 294, column: 5, scope: !57)
!203 = !DILocation(line: 296, column: 5, scope: !57)
!204 = !DILocation(line: 298, column: 5, scope: !57)
!205 = !DILocation(line: 300, column: 5, scope: !57)
!206 = !DILocation(line: 302, column: 12, scope: !57)
!207 = !DILocation(line: 303, column: 12, scope: !57)
!208 = !DILocation(line: 304, column: 12, scope: !57)
!209 = !DILocation(line: 305, column: 12, scope: !57)
!210 = !DILocation(line: 306, column: 12, scope: !57)
!211 = !DILocation(line: 307, column: 12, scope: !57)
!212 = !DILocation(line: 308, column: 12, scope: !57)
!213 = !DILocation(line: 309, column: 5, scope: !57)
!214 = !DILocation(line: 310, column: 5, scope: !57)
!215 = !DILocation(line: 312, column: 12, scope: !57)
!216 = !DILocation(line: 313, column: 12, scope: !57)
!217 = !DILocation(line: 314, column: 5, scope: !57)
!218 = !DILocation(line: 315, column: 12, scope: !57)
!219 = !DILocation(line: 316, column: 12, scope: !57)
!220 = !DILocation(line: 317, column: 5, scope: !57)
!221 = !DILocation(line: 318, column: 12, scope: !57)
!222 = !DILocation(line: 319, column: 12, scope: !57)
!223 = !DILocation(line: 320, column: 5, scope: !57)
!224 = !DILocation(line: 321, column: 12, scope: !57)
!225 = !DILocation(line: 322, column: 12, scope: !57)
!226 = !DILocation(line: 323, column: 5, scope: !57)
!227 = !DILocation(line: 324, column: 12, scope: !57)
!228 = !DILocation(line: 325, column: 12, scope: !57)
!229 = !DILocation(line: 326, column: 5, scope: !57)
!230 = !DILocation(line: 327, column: 5, scope: !57)
!231 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 329, type: !5, scopeLine: 329, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!232 = !DILocation(line: 330, column: 10, scope: !233)
!233 = !DILexicalBlockFile(scope: !231, file: !4, discriminator: 0)
!234 = !DILocation(line: 331, column: 5, scope: !233)
!235 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 333, type: !5, scopeLine: 333, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!236 = !DILocation(line: 335, column: 10, scope: !237)
!237 = !DILexicalBlockFile(scope: !235, file: !4, discriminator: 0)
!238 = !DILocation(line: 336, column: 10, scope: !237)
!239 = !DILocation(line: 337, column: 10, scope: !237)
!240 = !DILocation(line: 338, column: 10, scope: !237)
!241 = !DILocation(line: 339, column: 10, scope: !237)
!242 = !DILocation(line: 341, column: 10, scope: !237)
!243 = !DILocation(line: 342, column: 10, scope: !237)
!244 = !DILocation(line: 343, column: 10, scope: !237)
!245 = !DILocation(line: 344, column: 11, scope: !237)
!246 = !DILocation(line: 345, column: 11, scope: !237)
!247 = !DILocation(line: 347, column: 11, scope: !237)
!248 = !DILocation(line: 348, column: 11, scope: !237)
!249 = !DILocation(line: 349, column: 11, scope: !237)
!250 = !DILocation(line: 350, column: 11, scope: !237)
!251 = !DILocation(line: 351, column: 11, scope: !237)
!252 = !DILocation(line: 352, column: 11, scope: !237)
!253 = !DILocation(line: 353, column: 11, scope: !237)
!254 = !DILocation(line: 355, column: 11, scope: !237)
!255 = !DILocation(line: 356, column: 11, scope: !237)
!256 = !DILocation(line: 357, column: 11, scope: !237)
!257 = !DILocation(line: 358, column: 11, scope: !237)
!258 = !DILocation(line: 359, column: 11, scope: !237)
!259 = !DILocation(line: 360, column: 11, scope: !237)
!260 = !DILocation(line: 361, column: 11, scope: !237)
!261 = !DILocation(line: 363, column: 11, scope: !237)
!262 = !DILocation(line: 364, column: 11, scope: !237)
!263 = !DILocation(line: 365, column: 11, scope: !237)
!264 = !DILocation(line: 366, column: 11, scope: !237)
!265 = !DILocation(line: 367, column: 11, scope: !237)
!266 = !DILocation(line: 368, column: 11, scope: !237)
!267 = !DILocation(line: 369, column: 11, scope: !237)
!268 = !DILocation(line: 371, column: 11, scope: !237)
!269 = !DILocation(line: 372, column: 11, scope: !237)
!270 = !DILocation(line: 373, column: 11, scope: !237)
!271 = !DILocation(line: 374, column: 11, scope: !237)
!272 = !DILocation(line: 375, column: 11, scope: !237)
!273 = !DILocation(line: 376, column: 11, scope: !237)
!274 = !DILocation(line: 377, column: 11, scope: !237)
!275 = !DILocation(line: 386, column: 11, scope: !237)
!276 = !DILocation(line: 387, column: 11, scope: !237)
!277 = !DILocation(line: 388, column: 5, scope: !237)
!278 = !DILocation(line: 390, column: 11, scope: !237)
!279 = !DILocation(line: 391, column: 11, scope: !237)
!280 = !DILocation(line: 392, column: 5, scope: !237)
!281 = !DILocation(line: 393, column: 11, scope: !237)
!282 = !DILocation(line: 394, column: 5, scope: !237)
!283 = !DILocation(line: 396, column: 11, scope: !237)
!284 = !DILocation(line: 397, column: 5, scope: !237)
!285 = !DILocation(line: 399, column: 11, scope: !237)
!286 = !DILocation(line: 400, column: 11, scope: !237)
!287 = !DILocation(line: 401, column: 5, scope: !237)
!288 = !DILocation(line: 403, column: 11, scope: !237)
!289 = !DILocation(line: 404, column: 5, scope: !237)
!290 = !DILocation(line: 406, column: 11, scope: !237)
!291 = !DILocation(line: 407, column: 11, scope: !237)
!292 = !DILocation(line: 408, column: 11, scope: !237)
!293 = !DILocation(line: 409, column: 11, scope: !237)
!294 = !DILocation(line: 410, column: 11, scope: !237)
!295 = !DILocation(line: 411, column: 11, scope: !237)
!296 = !DILocation(line: 412, column: 11, scope: !237)
!297 = !DILocation(line: 413, column: 11, scope: !237)
!298 = !DILocation(line: 415, column: 11, scope: !237)
!299 = !DILocation(line: 416, column: 11, scope: !237)
!300 = !DILocation(line: 417, column: 11, scope: !237)
!301 = !DILocation(line: 418, column: 5, scope: !237)
!302 = !DILocation(line: 419, column: 11, scope: !237)
!303 = !DILocation(line: 420, column: 5, scope: !237)
!304 = !DILocation(line: 422, column: 11, scope: !237)
!305 = !DILocation(line: 423, column: 5, scope: !237)
!306 = !DILocation(line: 425, column: 11, scope: !237)
!307 = !DILocation(line: 426, column: 5, scope: !237)
!308 = !DILocation(line: 428, column: 11, scope: !237)
!309 = !DILocation(line: 429, column: 5, scope: !237)
!310 = !DILocation(line: 431, column: 11, scope: !237)
!311 = !DILocation(line: 432, column: 11, scope: !237)
!312 = !DILocation(line: 433, column: 5, scope: !237)
!313 = !DILocation(line: 435, column: 11, scope: !237)
!314 = !DILocation(line: 436, column: 5, scope: !237)
!315 = !DILocation(line: 438, column: 11, scope: !237)
!316 = !DILocation(line: 439, column: 11, scope: !237)
!317 = !DILocation(line: 440, column: 11, scope: !237)
!318 = !DILocation(line: 441, column: 11, scope: !237)
!319 = !DILocation(line: 442, column: 11, scope: !237)
!320 = !DILocation(line: 443, column: 11, scope: !237)
!321 = !DILocation(line: 444, column: 11, scope: !237)
!322 = !DILocation(line: 445, column: 11, scope: !237)
!323 = !DILocation(line: 447, column: 11, scope: !237)
!324 = !DILocation(line: 448, column: 11, scope: !237)
!325 = !DILocation(line: 449, column: 11, scope: !237)
!326 = !DILocation(line: 450, column: 5, scope: !237)
!327 = !DILocation(line: 451, column: 11, scope: !237)
!328 = !DILocation(line: 452, column: 5, scope: !237)
!329 = !DILocation(line: 454, column: 11, scope: !237)
!330 = !DILocation(line: 455, column: 5, scope: !237)
!331 = !DILocation(line: 457, column: 11, scope: !237)
!332 = !DILocation(line: 458, column: 5, scope: !237)
!333 = !DILocation(line: 460, column: 12, scope: !237)
!334 = !DILocation(line: 461, column: 5, scope: !237)
!335 = !DILocation(line: 463, column: 12, scope: !237)
!336 = !DILocation(line: 464, column: 12, scope: !237)
!337 = !DILocation(line: 465, column: 5, scope: !237)
!338 = !DILocation(line: 467, column: 12, scope: !237)
!339 = !DILocation(line: 468, column: 5, scope: !237)
!340 = !DILocation(line: 470, column: 12, scope: !237)
!341 = !DILocation(line: 471, column: 12, scope: !237)
!342 = !DILocation(line: 472, column: 12, scope: !237)
!343 = !DILocation(line: 473, column: 12, scope: !237)
!344 = !DILocation(line: 474, column: 12, scope: !237)
!345 = !DILocation(line: 475, column: 12, scope: !237)
!346 = !DILocation(line: 476, column: 12, scope: !237)
!347 = !DILocation(line: 477, column: 12, scope: !237)
!348 = !DILocation(line: 478, column: 12, scope: !237)
!349 = !DILocation(line: 480, column: 12, scope: !237)
!350 = !DILocation(line: 481, column: 12, scope: !237)
!351 = !DILocation(line: 482, column: 12, scope: !237)
!352 = !DILocation(line: 483, column: 5, scope: !237)
!353 = !DILocation(line: 484, column: 12, scope: !237)
!354 = !DILocation(line: 485, column: 5, scope: !237)
!355 = !DILocation(line: 487, column: 12, scope: !237)
!356 = !DILocation(line: 488, column: 5, scope: !237)
!357 = !DILocation(line: 490, column: 12, scope: !237)
!358 = !DILocation(line: 491, column: 5, scope: !237)
!359 = !DILocation(line: 493, column: 12, scope: !237)
!360 = !DILocation(line: 494, column: 5, scope: !237)
!361 = !DILocation(line: 496, column: 12, scope: !237)
!362 = !DILocation(line: 497, column: 12, scope: !237)
!363 = !DILocation(line: 498, column: 5, scope: !237)
!364 = !DILocation(line: 500, column: 12, scope: !237)
!365 = !DILocation(line: 501, column: 5, scope: !237)
!366 = !DILocation(line: 503, column: 12, scope: !237)
!367 = !DILocation(line: 504, column: 12, scope: !237)
!368 = !DILocation(line: 505, column: 12, scope: !237)
!369 = !DILocation(line: 506, column: 12, scope: !237)
!370 = !DILocation(line: 507, column: 12, scope: !237)
!371 = !DILocation(line: 508, column: 12, scope: !237)
!372 = !DILocation(line: 509, column: 12, scope: !237)
!373 = !DILocation(line: 510, column: 12, scope: !237)
!374 = !DILocation(line: 512, column: 12, scope: !237)
!375 = !DILocation(line: 513, column: 12, scope: !237)
!376 = !DILocation(line: 514, column: 12, scope: !237)
!377 = !DILocation(line: 515, column: 5, scope: !237)
!378 = !DILocation(line: 516, column: 12, scope: !237)
!379 = !DILocation(line: 517, column: 5, scope: !237)
!380 = !DILocation(line: 519, column: 12, scope: !237)
!381 = !DILocation(line: 520, column: 5, scope: !237)
!382 = !DILocation(line: 522, column: 5, scope: !237)
!383 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 524, type: !5, scopeLine: 524, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!384 = !DILocation(line: 525, column: 10, scope: !385)
!385 = !DILexicalBlockFile(scope: !383, file: !4, discriminator: 0)
!386 = !DILocation(line: 526, column: 10, scope: !385)
!387 = !DILocation(line: 527, column: 10, scope: !385)
!388 = !DILocation(line: 528, column: 10, scope: !385)
!389 = !DILocation(line: 529, column: 10, scope: !385)
!390 = !DILocation(line: 530, column: 10, scope: !385)
!391 = !DILocation(line: 531, column: 10, scope: !385)
!392 = !DILocation(line: 532, column: 10, scope: !385)
!393 = !DILocation(line: 533, column: 10, scope: !385)
!394 = !DILocation(line: 534, column: 10, scope: !385)
!395 = !DILocation(line: 535, column: 11, scope: !385)
!396 = !DILocation(line: 536, column: 11, scope: !385)
!397 = !DILocation(line: 537, column: 11, scope: !385)
!398 = !DILocation(line: 538, column: 11, scope: !385)
!399 = !DILocation(line: 539, column: 11, scope: !385)
!400 = !DILocation(line: 540, column: 11, scope: !385)
!401 = !DILocation(line: 541, column: 11, scope: !385)
!402 = !DILocation(line: 542, column: 11, scope: !385)
!403 = !DILocation(line: 543, column: 11, scope: !385)
!404 = !DILocation(line: 544, column: 11, scope: !385)
!405 = !DILocation(line: 545, column: 11, scope: !385)
!406 = !DILocation(line: 546, column: 11, scope: !385)
!407 = !DILocation(line: 547, column: 11, scope: !385)
!408 = !DILocation(line: 548, column: 11, scope: !385)
!409 = !DILocation(line: 549, column: 11, scope: !385)
!410 = !DILocation(line: 550, column: 11, scope: !385)
!411 = !DILocation(line: 551, column: 11, scope: !385)
!412 = !DILocation(line: 552, column: 11, scope: !385)
!413 = !DILocation(line: 553, column: 11, scope: !385)
!414 = !DILocation(line: 554, column: 11, scope: !385)
!415 = !DILocation(line: 555, column: 11, scope: !385)
!416 = !DILocation(line: 556, column: 11, scope: !385)
!417 = !DILocation(line: 557, column: 11, scope: !385)
!418 = !DILocation(line: 558, column: 11, scope: !385)
!419 = !DILocation(line: 559, column: 11, scope: !385)
!420 = !DILocation(line: 560, column: 11, scope: !385)
!421 = !DILocation(line: 561, column: 11, scope: !385)
!422 = !DILocation(line: 562, column: 11, scope: !385)
!423 = !DILocation(line: 563, column: 11, scope: !385)
!424 = !DILocation(line: 564, column: 11, scope: !385)
!425 = !DILocation(line: 565, column: 11, scope: !385)
!426 = !DILocation(line: 566, column: 11, scope: !385)
!427 = !DILocation(line: 567, column: 11, scope: !385)
!428 = !DILocation(line: 568, column: 11, scope: !385)
!429 = !DILocation(line: 569, column: 5, scope: !385)
!430 = !DILocation(line: 570, column: 5, scope: !385)
!431 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 572, type: !5, scopeLine: 572, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!432 = !DILocation(line: 574, column: 10, scope: !433)
!433 = !DILexicalBlockFile(scope: !431, file: !4, discriminator: 0)
!434 = !DILocation(line: 575, column: 10, scope: !433)
!435 = !DILocation(line: 576, column: 10, scope: !433)
!436 = !DILocation(line: 577, column: 10, scope: !433)
!437 = !DILocation(line: 578, column: 10, scope: !433)
!438 = !DILocation(line: 579, column: 10, scope: !433)
!439 = !DILocation(line: 580, column: 10, scope: !433)
!440 = !DILocation(line: 586, column: 11, scope: !433)
!441 = !DILocation(line: 589, column: 11, scope: !433)
!442 = !DILocation(line: 591, column: 11, scope: !433)
!443 = !DILocation(line: 596, column: 11, scope: !433)
!444 = !DILocation(line: 597, column: 11, scope: !433)
!445 = !DILocation(line: 598, column: 5, scope: !433)
!446 = !DILocation(line: 600, column: 11, scope: !433)
!447 = !DILocation(line: 601, column: 5, scope: !433)
!448 = !DILocation(line: 603, column: 11, scope: !433)
!449 = !DILocation(line: 604, column: 11, scope: !433)
!450 = !DILocation(line: 605, column: 5, scope: !433)
!451 = !DILocation(line: 607, column: 11, scope: !433)
!452 = !DILocation(line: 608, column: 5, scope: !433)
!453 = !DILocation(line: 610, column: 11, scope: !433)
!454 = !DILocation(line: 611, column: 11, scope: !433)
!455 = !DILocation(line: 612, column: 11, scope: !433)
!456 = !DILocation(line: 613, column: 11, scope: !433)
!457 = !DILocation(line: 614, column: 11, scope: !433)
!458 = !DILocation(line: 615, column: 5, scope: !433)
!459 = !DILocation(line: 618, column: 11, scope: !433)
!460 = !DILocation(line: 621, column: 11, scope: !433)
!461 = !DILocation(line: 622, column: 5, scope: !433)
!462 = !DILocation(line: 625, column: 11, scope: !433)
!463 = !DILocation(line: 628, column: 11, scope: !433)
!464 = !DILocation(line: 630, column: 11, scope: !433)
!465 = !DILocation(line: 631, column: 11, scope: !433)
!466 = !DILocation(line: 632, column: 11, scope: !433)
!467 = !DILocation(line: 633, column: 11, scope: !433)
!468 = !DILocation(line: 634, column: 11, scope: !433)
!469 = !DILocation(line: 635, column: 11, scope: !433)
!470 = !DILocation(line: 636, column: 5, scope: !433)
!471 = !DILocation(line: 638, column: 11, scope: !433)
!472 = !DILocation(line: 639, column: 5, scope: !433)
!473 = !DILocation(line: 642, column: 11, scope: !433)
!474 = !DILocation(line: 647, column: 11, scope: !433)
!475 = !DILocation(line: 649, column: 11, scope: !433)
!476 = !DILocation(line: 652, column: 11, scope: !433)
!477 = !DILocation(line: 653, column: 5, scope: !433)
!478 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 655, type: !5, scopeLine: 655, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!479 = !DILocation(line: 656, column: 10, scope: !480)
!480 = !DILexicalBlockFile(scope: !478, file: !4, discriminator: 0)
!481 = !DILocation(line: 657, column: 10, scope: !480)
!482 = !DILocation(line: 658, column: 10, scope: !480)
!483 = !DILocation(line: 659, column: 10, scope: !480)
!484 = !DILocation(line: 660, column: 10, scope: !480)
!485 = !DILocation(line: 661, column: 10, scope: !480)
!486 = !DILocation(line: 662, column: 10, scope: !480)
!487 = !DILocation(line: 663, column: 10, scope: !480)
!488 = !DILocation(line: 664, column: 5, scope: !480)
!489 = !DILocation(line: 665, column: 5, scope: !480)
