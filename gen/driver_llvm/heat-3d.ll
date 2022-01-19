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

define internal void @kernel_heat_3d(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19) !dbg !3 {
  %21 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %2, 0, !dbg !7
  %22 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %21, double* %3, 1, !dbg !9
  %23 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %22, i64 %4, 2, !dbg !10
  %24 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %23, i64 %5, 3, 0, !dbg !11
  %25 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, i64 %8, 4, 0, !dbg !12
  %26 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %25, i64 %6, 3, 1, !dbg !13
  %27 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %26, i64 %9, 4, 1, !dbg !14
  %28 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %27, i64 %7, 3, 2, !dbg !15
  %29 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %28, i64 %10, 4, 2, !dbg !16
  %30 = alloca { double*, double*, i64, [3 x i64], [3 x i64] }, i64 1, align 8, !dbg !17
  store { double*, double*, i64, [3 x i64], [3 x i64] } %29, { double*, double*, i64, [3 x i64], [3 x i64] }* %30, align 8, !dbg !18
  %31 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %11, 0, !dbg !19
  %32 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %31, double* %12, 1, !dbg !20
  %33 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %32, i64 %13, 2, !dbg !21
  %34 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %33, i64 %14, 3, 0, !dbg !22
  %35 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %34, i64 %17, 4, 0, !dbg !23
  %36 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %35, i64 %15, 3, 1, !dbg !24
  %37 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %36, i64 %18, 4, 1, !dbg !25
  %38 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %37, i64 %16, 3, 2, !dbg !26
  %39 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %38, i64 %19, 4, 2, !dbg !27
  %40 = alloca { double*, double*, i64, [3 x i64], [3 x i64] }, i64 1, align 8, !dbg !28
  store { double*, double*, i64, [3 x i64], [3 x i64] } %39, { double*, double*, i64, [3 x i64], [3 x i64] }* %40, align 8, !dbg !29
  call void @__program_kernel_heat_3d(i32 %0, i32 %1, { double*, double*, i64, [3 x i64], [3 x i64] }* %30, { double*, double*, i64, [3 x i64], [3 x i64] }* %40), !dbg !30
  ret void, !dbg !31
}

declare void @__program_kernel_heat_3d(i32, i32, { double*, double*, i64, [3 x i64], [3 x i64] }*, { double*, double*, i64, [3 x i64], [3 x i64] }*)

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) !dbg !32 {
  %3 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1728000) to i64)), !dbg !33
  %4 = bitcast i8* %3 to double*, !dbg !35
  %5 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %4, 0, !dbg !36
  %6 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %5, double* %4, 1, !dbg !37
  %7 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %6, i64 0, 2, !dbg !38
  %8 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, i64 120, 3, 0, !dbg !39
  %9 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %8, i64 120, 3, 1, !dbg !40
  %10 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %9, i64 120, 3, 2, !dbg !41
  %11 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %10, i64 14400, 4, 0, !dbg !42
  %12 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %11, i64 120, 4, 1, !dbg !43
  %13 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %12, i64 1, 4, 2, !dbg !44
  %14 = call i8* @malloc(i64 ptrtoint (double* getelementptr (double, double* null, i64 1728000) to i64)), !dbg !45
  %15 = bitcast i8* %14 to double*, !dbg !46
  %16 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %15, 0, !dbg !47
  %17 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %16, double* %15, 1, !dbg !48
  %18 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %17, i64 0, 2, !dbg !49
  %19 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %18, i64 120, 3, 0, !dbg !50
  %20 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %19, i64 120, 3, 1, !dbg !51
  %21 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %20, i64 120, 3, 2, !dbg !52
  %22 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %21, i64 14400, 4, 0, !dbg !53
  %23 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %22, i64 120, 4, 1, !dbg !54
  %24 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %23, i64 1, 4, 2, !dbg !55
  %25 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0, !dbg !56
  %26 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 1, !dbg !57
  %27 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 2, !dbg !58
  %28 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 0, !dbg !59
  %29 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 1, !dbg !60
  %30 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 2, !dbg !61
  %31 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 0, !dbg !62
  %32 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 1, !dbg !63
  %33 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 2, !dbg !64
  %34 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 0, !dbg !65
  %35 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 1, !dbg !66
  %36 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 2, !dbg !67
  %37 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 3, 0, !dbg !68
  %38 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 3, 1, !dbg !69
  %39 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 3, 2, !dbg !70
  %40 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 4, 0, !dbg !71
  %41 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 4, 1, !dbg !72
  %42 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 4, 2, !dbg !73
  call void @init_array(i32 120, double* %25, double* %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, double* %34, double* %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42), !dbg !74
  %43 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0, !dbg !75
  %44 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 1, !dbg !76
  %45 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 2, !dbg !77
  %46 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 0, !dbg !78
  %47 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 1, !dbg !79
  %48 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 2, !dbg !80
  %49 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 0, !dbg !81
  %50 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 1, !dbg !82
  %51 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 2, !dbg !83
  %52 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 0, !dbg !84
  %53 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 1, !dbg !85
  %54 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 2, !dbg !86
  %55 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 3, 0, !dbg !87
  %56 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 3, 1, !dbg !88
  %57 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 3, 2, !dbg !89
  %58 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 4, 0, !dbg !90
  %59 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 4, 1, !dbg !91
  %60 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, 4, 2, !dbg !92
  call void @kernel_heat_3d(i32 500, i32 120, double* %43, double* %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, double* %52, double* %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60), !dbg !93
  %61 = icmp sgt i32 %0, 42, !dbg !94
  br i1 %61, label %62, label %68, !dbg !95

62:                                               ; preds = %2
  %63 = getelementptr i8*, i8** %1, i64 0, !dbg !96
  %64 = load i8*, i8** %63, align 8, !dbg !97
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i32 0, i32 0)), !dbg !98
  %66 = trunc i32 %65 to i1, !dbg !99
  %67 = xor i1 %66, true, !dbg !100
  br label %69, !dbg !101

68:                                               ; preds = %2
  br label %69, !dbg !102

69:                                               ; preds = %62, %68
  %70 = phi i1 [ false, %68 ], [ %67, %62 ]
  br label %71, !dbg !103

71:                                               ; preds = %69
  br i1 %70, label %72, label %82, !dbg !104

72:                                               ; preds = %71
  %73 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0, !dbg !105
  %74 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 1, !dbg !106
  %75 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 2, !dbg !107
  %76 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 0, !dbg !108
  %77 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 1, !dbg !109
  %78 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 2, !dbg !110
  %79 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 0, !dbg !111
  %80 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 1, !dbg !112
  %81 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 2, !dbg !113
  call void @print_array(i32 120, double* %73, double* %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81), !dbg !114
  br label %82, !dbg !115

82:                                               ; preds = %72, %71
  %83 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0, !dbg !116
  %84 = bitcast double* %83 to i8*, !dbg !117
  call void @free(i8* %84), !dbg !118
  ret i32 0, !dbg !119
}

define i32 @_mlir_ciface_main(i32 %0, i8** %1) !dbg !120 {
  %3 = call i32 @main(i32 %0, i8** %1), !dbg !121
  ret i32 %3, !dbg !123
}

define internal void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18) !dbg !124 {
  %20 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %1, 0, !dbg !125
  %21 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %20, double* %2, 1, !dbg !127
  %22 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %21, i64 %3, 2, !dbg !128
  %23 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %22, i64 %4, 3, 0, !dbg !129
  %24 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %23, i64 %7, 4, 0, !dbg !130
  %25 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, i64 %5, 3, 1, !dbg !131
  %26 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %25, i64 %8, 4, 1, !dbg !132
  %27 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %26, i64 %6, 3, 2, !dbg !133
  %28 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %27, i64 %9, 4, 2, !dbg !134
  %29 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %10, 0, !dbg !135
  %30 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %29, double* %11, 1, !dbg !136
  %31 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %30, i64 %12, 2, !dbg !137
  %32 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %31, i64 %13, 3, 0, !dbg !138
  %33 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %32, i64 %16, 4, 0, !dbg !139
  %34 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %33, i64 %14, 3, 1, !dbg !140
  %35 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %34, i64 %17, 4, 1, !dbg !141
  %36 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %35, i64 %15, 3, 2, !dbg !142
  %37 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %36, i64 %18, 4, 2, !dbg !143
  %38 = sext i32 %0 to i64, !dbg !144
  br label %39, !dbg !145

39:                                               ; preds = %85, %19
  %40 = phi i64 [ %86, %85 ], [ 0, %19 ]
  %41 = icmp slt i64 %40, %38, !dbg !146
  br i1 %41, label %42, label %87, !dbg !147

42:                                               ; preds = %39
  %43 = trunc i64 %40 to i32, !dbg !148
  %44 = sext i32 %0 to i64, !dbg !149
  br label %45, !dbg !150

45:                                               ; preds = %83, %42
  %46 = phi i64 [ %84, %83 ], [ 0, %42 ]
  %47 = icmp slt i64 %46, %44, !dbg !151
  br i1 %47, label %48, label %85, !dbg !152

48:                                               ; preds = %45
  %49 = trunc i64 %46 to i32, !dbg !153
  %50 = sext i32 %0 to i64, !dbg !154
  br label %51, !dbg !155

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %82, %54 ], [ 0, %48 ]
  %53 = icmp slt i64 %52, %50, !dbg !156
  br i1 %53, label %54, label %83, !dbg !157

54:                                               ; preds = %51
  %55 = trunc i64 %52 to i32, !dbg !158
  %56 = add i32 %43, %49, !dbg !159
  %57 = sub i32 %0, %55, !dbg !160
  %58 = add i32 %56, %57, !dbg !161
  %59 = sitofp i32 %58 to double, !dbg !162
  %60 = fmul double %59, 1.000000e+01, !dbg !163
  %61 = sitofp i32 %0 to double, !dbg !164
  %62 = fdiv double %60, %61, !dbg !165
  %63 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %37, 1, !dbg !166
  %64 = mul i64 %40, 14400, !dbg !167
  %65 = mul i64 %46, 120, !dbg !168
  %66 = add i64 %64, %65, !dbg !169
  %67 = add i64 %66, %52, !dbg !170
  %68 = getelementptr double, double* %63, i64 %67, !dbg !171
  store double %62, double* %68, align 8, !dbg !172
  %69 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %37, 1, !dbg !173
  %70 = mul i64 %40, 14400, !dbg !174
  %71 = mul i64 %46, 120, !dbg !175
  %72 = add i64 %70, %71, !dbg !176
  %73 = add i64 %72, %52, !dbg !177
  %74 = getelementptr double, double* %69, i64 %73, !dbg !178
  %75 = load double, double* %74, align 8, !dbg !179
  %76 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %28, 1, !dbg !180
  %77 = mul i64 %40, 14400, !dbg !181
  %78 = mul i64 %46, 120, !dbg !182
  %79 = add i64 %77, %78, !dbg !183
  %80 = add i64 %79, %52, !dbg !184
  %81 = getelementptr double, double* %76, i64 %80, !dbg !185
  store double %75, double* %81, align 8, !dbg !186
  %82 = add i64 %52, 1, !dbg !187
  br label %51, !dbg !188

83:                                               ; preds = %51
  %84 = add i64 %46, 1, !dbg !189
  br label %45, !dbg !190

85:                                               ; preds = %45
  %86 = add i64 %40, 1, !dbg !191
  br label %39, !dbg !192

87:                                               ; preds = %39
  ret void, !dbg !193
}

define void @_mlir_ciface_init_array(i32 %0, { double*, double*, i64, [3 x i64], [3 x i64] }* %1, { double*, double*, i64, [3 x i64], [3 x i64] }* %2) !dbg !194 {
  %4 = load { double*, double*, i64, [3 x i64], [3 x i64] }, { double*, double*, i64, [3 x i64], [3 x i64] }* %1, align 8, !dbg !195
  %5 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 0, !dbg !197
  %6 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 1, !dbg !198
  %7 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 2, !dbg !199
  %8 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 3, 0, !dbg !200
  %9 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 3, 1, !dbg !201
  %10 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 3, 2, !dbg !202
  %11 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 4, 0, !dbg !203
  %12 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 4, 1, !dbg !204
  %13 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %4, 4, 2, !dbg !205
  %14 = load { double*, double*, i64, [3 x i64], [3 x i64] }, { double*, double*, i64, [3 x i64], [3 x i64] }* %2, align 8, !dbg !206
  %15 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 0, !dbg !207
  %16 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 1, !dbg !208
  %17 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 2, !dbg !209
  %18 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 3, 0, !dbg !210
  %19 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 3, 1, !dbg !211
  %20 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 3, 2, !dbg !212
  %21 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 4, 0, !dbg !213
  %22 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 4, 1, !dbg !214
  %23 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, 4, 2, !dbg !215
  call void @init_array(i32 %0, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, double* %15, double* %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23), !dbg !216
  ret void, !dbg !217
}

define internal void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9) !dbg !218 {
  %11 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %1, 0, !dbg !219
  %12 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %11, double* %2, 1, !dbg !221
  %13 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %12, i64 %3, 2, !dbg !222
  %14 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, i64 %4, 3, 0, !dbg !223
  %15 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, i64 %7, 4, 0, !dbg !224
  %16 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %15, i64 %5, 3, 1, !dbg !225
  %17 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %16, i64 %8, 4, 1, !dbg !226
  %18 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %17, i64 %6, 3, 2, !dbg !227
  %19 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %18, i64 %9, 4, 2, !dbg !228
  %20 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !229
  %21 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i32 0, i32 0)), !dbg !230
  %22 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !231
  %23 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !232
  %24 = sext i32 %0 to i64, !dbg !233
  br label %25, !dbg !234

25:                                               ; preds = %65, %10
  %26 = phi i64 [ %66, %65 ], [ 0, %10 ]
  %27 = icmp slt i64 %26, %24, !dbg !235
  br i1 %27, label %28, label %67, !dbg !236

28:                                               ; preds = %25
  %29 = trunc i64 %26 to i32, !dbg !237
  %30 = sext i32 %0 to i64, !dbg !238
  br label %31, !dbg !239

31:                                               ; preds = %63, %28
  %32 = phi i64 [ %64, %63 ], [ 0, %28 ]
  %33 = icmp slt i64 %32, %30, !dbg !240
  br i1 %33, label %34, label %65, !dbg !241

34:                                               ; preds = %31
  %35 = trunc i64 %32 to i32, !dbg !242
  %36 = sext i32 %0 to i64, !dbg !243
  br label %37, !dbg !244

37:                                               ; preds = %52, %34
  %38 = phi i64 [ %62, %52 ], [ 0, %34 ]
  %39 = icmp slt i64 %38, %36, !dbg !245
  br i1 %39, label %40, label %63, !dbg !246

40:                                               ; preds = %37
  %41 = trunc i64 %38 to i32, !dbg !247
  %42 = mul i32 %29, %0, !dbg !248
  %43 = mul i32 %42, %0, !dbg !249
  %44 = mul i32 %35, %0, !dbg !250
  %45 = add i32 %43, %44, !dbg !251
  %46 = add i32 %45, %41, !dbg !252
  %47 = srem i32 %46, 20, !dbg !253
  %48 = icmp eq i32 %47, 0, !dbg !254
  br i1 %48, label %49, label %52, !dbg !255

49:                                               ; preds = %40
  %50 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !256
  %51 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !257
  br label %52, !dbg !258

52:                                               ; preds = %49, %40
  %53 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !259
  %54 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %19, 1, !dbg !260
  %55 = mul i64 %26, 14400, !dbg !261
  %56 = mul i64 %32, 120, !dbg !262
  %57 = add i64 %55, %56, !dbg !263
  %58 = add i64 %57, %38, !dbg !264
  %59 = getelementptr double, double* %54, i64 %58, !dbg !265
  %60 = load double, double* %59, align 8, !dbg !266
  %61 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i32 0, i32 0), double %60), !dbg !267
  %62 = add i64 %38, 1, !dbg !268
  br label %37, !dbg !269

63:                                               ; preds = %37
  %64 = add i64 %32, 1, !dbg !270
  br label %31, !dbg !271

65:                                               ; preds = %31
  %66 = add i64 %26, 1, !dbg !272
  br label %25, !dbg !273

67:                                               ; preds = %25
  %68 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !274
  %69 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !275
  %70 = load { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }** @stderr, align 8, !dbg !276
  %71 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i32 0, i32 0)), !dbg !277
  ret void, !dbg !278
}

define void @_mlir_ciface_print_array(i32 %0, { double*, double*, i64, [3 x i64], [3 x i64] }* %1) !dbg !279 {
  %3 = load { double*, double*, i64, [3 x i64], [3 x i64] }, { double*, double*, i64, [3 x i64], [3 x i64] }* %1, align 8, !dbg !280
  %4 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 0, !dbg !282
  %5 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 1, !dbg !283
  %6 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 2, !dbg !284
  %7 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 3, 0, !dbg !285
  %8 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 3, 1, !dbg !286
  %9 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 3, 2, !dbg !287
  %10 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 4, 0, !dbg !288
  %11 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 4, 1, !dbg !289
  %12 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %3, 4, 2, !dbg !290
  call void @print_array(i32 %0, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12), !dbg !291
  ret void, !dbg !292
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_heat_3d", linkageName: "kernel_heat_3d", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!15 = !DILocation(line: 13, column: 10, scope: !8)
!16 = !DILocation(line: 14, column: 10, scope: !8)
!17 = !DILocation(line: 16, column: 11, scope: !8)
!18 = !DILocation(line: 17, column: 5, scope: !8)
!19 = !DILocation(line: 19, column: 11, scope: !8)
!20 = !DILocation(line: 20, column: 11, scope: !8)
!21 = !DILocation(line: 21, column: 11, scope: !8)
!22 = !DILocation(line: 22, column: 11, scope: !8)
!23 = !DILocation(line: 23, column: 11, scope: !8)
!24 = !DILocation(line: 24, column: 11, scope: !8)
!25 = !DILocation(line: 25, column: 11, scope: !8)
!26 = !DILocation(line: 26, column: 11, scope: !8)
!27 = !DILocation(line: 27, column: 11, scope: !8)
!28 = !DILocation(line: 29, column: 11, scope: !8)
!29 = !DILocation(line: 30, column: 5, scope: !8)
!30 = !DILocation(line: 31, column: 5, scope: !8)
!31 = !DILocation(line: 32, column: 5, scope: !8)
!32 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 46, type: !5, scopeLine: 46, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!33 = !DILocation(line: 63, column: 11, scope: !34)
!34 = !DILexicalBlockFile(scope: !32, file: !4, discriminator: 0)
!35 = !DILocation(line: 64, column: 11, scope: !34)
!36 = !DILocation(line: 66, column: 11, scope: !34)
!37 = !DILocation(line: 67, column: 11, scope: !34)
!38 = !DILocation(line: 69, column: 11, scope: !34)
!39 = !DILocation(line: 70, column: 11, scope: !34)
!40 = !DILocation(line: 71, column: 11, scope: !34)
!41 = !DILocation(line: 72, column: 11, scope: !34)
!42 = !DILocation(line: 73, column: 11, scope: !34)
!43 = !DILocation(line: 74, column: 11, scope: !34)
!44 = !DILocation(line: 75, column: 11, scope: !34)
!45 = !DILocation(line: 85, column: 11, scope: !34)
!46 = !DILocation(line: 86, column: 11, scope: !34)
!47 = !DILocation(line: 88, column: 11, scope: !34)
!48 = !DILocation(line: 89, column: 11, scope: !34)
!49 = !DILocation(line: 91, column: 11, scope: !34)
!50 = !DILocation(line: 92, column: 11, scope: !34)
!51 = !DILocation(line: 93, column: 11, scope: !34)
!52 = !DILocation(line: 94, column: 11, scope: !34)
!53 = !DILocation(line: 95, column: 11, scope: !34)
!54 = !DILocation(line: 96, column: 11, scope: !34)
!55 = !DILocation(line: 97, column: 11, scope: !34)
!56 = !DILocation(line: 98, column: 11, scope: !34)
!57 = !DILocation(line: 99, column: 11, scope: !34)
!58 = !DILocation(line: 100, column: 11, scope: !34)
!59 = !DILocation(line: 101, column: 11, scope: !34)
!60 = !DILocation(line: 102, column: 11, scope: !34)
!61 = !DILocation(line: 103, column: 11, scope: !34)
!62 = !DILocation(line: 104, column: 11, scope: !34)
!63 = !DILocation(line: 105, column: 11, scope: !34)
!64 = !DILocation(line: 106, column: 11, scope: !34)
!65 = !DILocation(line: 107, column: 11, scope: !34)
!66 = !DILocation(line: 108, column: 11, scope: !34)
!67 = !DILocation(line: 109, column: 11, scope: !34)
!68 = !DILocation(line: 110, column: 11, scope: !34)
!69 = !DILocation(line: 111, column: 11, scope: !34)
!70 = !DILocation(line: 112, column: 11, scope: !34)
!71 = !DILocation(line: 113, column: 11, scope: !34)
!72 = !DILocation(line: 114, column: 11, scope: !34)
!73 = !DILocation(line: 115, column: 11, scope: !34)
!74 = !DILocation(line: 116, column: 5, scope: !34)
!75 = !DILocation(line: 117, column: 11, scope: !34)
!76 = !DILocation(line: 118, column: 11, scope: !34)
!77 = !DILocation(line: 119, column: 11, scope: !34)
!78 = !DILocation(line: 120, column: 11, scope: !34)
!79 = !DILocation(line: 121, column: 11, scope: !34)
!80 = !DILocation(line: 122, column: 11, scope: !34)
!81 = !DILocation(line: 123, column: 11, scope: !34)
!82 = !DILocation(line: 124, column: 11, scope: !34)
!83 = !DILocation(line: 125, column: 11, scope: !34)
!84 = !DILocation(line: 126, column: 11, scope: !34)
!85 = !DILocation(line: 127, column: 11, scope: !34)
!86 = !DILocation(line: 128, column: 11, scope: !34)
!87 = !DILocation(line: 129, column: 11, scope: !34)
!88 = !DILocation(line: 130, column: 11, scope: !34)
!89 = !DILocation(line: 131, column: 11, scope: !34)
!90 = !DILocation(line: 132, column: 11, scope: !34)
!91 = !DILocation(line: 133, column: 11, scope: !34)
!92 = !DILocation(line: 134, column: 11, scope: !34)
!93 = !DILocation(line: 135, column: 5, scope: !34)
!94 = !DILocation(line: 136, column: 11, scope: !34)
!95 = !DILocation(line: 137, column: 5, scope: !34)
!96 = !DILocation(line: 139, column: 11, scope: !34)
!97 = !DILocation(line: 140, column: 11, scope: !34)
!98 = !DILocation(line: 143, column: 11, scope: !34)
!99 = !DILocation(line: 144, column: 11, scope: !34)
!100 = !DILocation(line: 145, column: 11, scope: !34)
!101 = !DILocation(line: 146, column: 5, scope: !34)
!102 = !DILocation(line: 148, column: 5, scope: !34)
!103 = !DILocation(line: 150, column: 5, scope: !34)
!104 = !DILocation(line: 152, column: 5, scope: !34)
!105 = !DILocation(line: 154, column: 11, scope: !34)
!106 = !DILocation(line: 155, column: 11, scope: !34)
!107 = !DILocation(line: 156, column: 11, scope: !34)
!108 = !DILocation(line: 157, column: 11, scope: !34)
!109 = !DILocation(line: 158, column: 12, scope: !34)
!110 = !DILocation(line: 159, column: 12, scope: !34)
!111 = !DILocation(line: 160, column: 12, scope: !34)
!112 = !DILocation(line: 161, column: 12, scope: !34)
!113 = !DILocation(line: 162, column: 12, scope: !34)
!114 = !DILocation(line: 163, column: 5, scope: !34)
!115 = !DILocation(line: 164, column: 5, scope: !34)
!116 = !DILocation(line: 166, column: 12, scope: !34)
!117 = !DILocation(line: 167, column: 12, scope: !34)
!118 = !DILocation(line: 168, column: 5, scope: !34)
!119 = !DILocation(line: 169, column: 5, scope: !34)
!120 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 171, type: !5, scopeLine: 171, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!121 = !DILocation(line: 172, column: 10, scope: !122)
!122 = !DILexicalBlockFile(scope: !120, file: !4, discriminator: 0)
!123 = !DILocation(line: 173, column: 5, scope: !122)
!124 = distinct !DISubprogram(name: "init_array", linkageName: "init_array", scope: null, file: !4, line: 175, type: !5, scopeLine: 175, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!125 = !DILocation(line: 177, column: 10, scope: !126)
!126 = !DILexicalBlockFile(scope: !124, file: !4, discriminator: 0)
!127 = !DILocation(line: 178, column: 10, scope: !126)
!128 = !DILocation(line: 179, column: 10, scope: !126)
!129 = !DILocation(line: 180, column: 10, scope: !126)
!130 = !DILocation(line: 181, column: 10, scope: !126)
!131 = !DILocation(line: 182, column: 10, scope: !126)
!132 = !DILocation(line: 183, column: 10, scope: !126)
!133 = !DILocation(line: 184, column: 10, scope: !126)
!134 = !DILocation(line: 185, column: 10, scope: !126)
!135 = !DILocation(line: 187, column: 11, scope: !126)
!136 = !DILocation(line: 188, column: 11, scope: !126)
!137 = !DILocation(line: 189, column: 11, scope: !126)
!138 = !DILocation(line: 190, column: 11, scope: !126)
!139 = !DILocation(line: 191, column: 11, scope: !126)
!140 = !DILocation(line: 192, column: 11, scope: !126)
!141 = !DILocation(line: 193, column: 11, scope: !126)
!142 = !DILocation(line: 194, column: 11, scope: !126)
!143 = !DILocation(line: 195, column: 11, scope: !126)
!144 = !DILocation(line: 199, column: 11, scope: !126)
!145 = !DILocation(line: 200, column: 5, scope: !126)
!146 = !DILocation(line: 202, column: 11, scope: !126)
!147 = !DILocation(line: 203, column: 5, scope: !126)
!148 = !DILocation(line: 205, column: 11, scope: !126)
!149 = !DILocation(line: 206, column: 11, scope: !126)
!150 = !DILocation(line: 207, column: 5, scope: !126)
!151 = !DILocation(line: 209, column: 11, scope: !126)
!152 = !DILocation(line: 210, column: 5, scope: !126)
!153 = !DILocation(line: 212, column: 11, scope: !126)
!154 = !DILocation(line: 213, column: 11, scope: !126)
!155 = !DILocation(line: 214, column: 5, scope: !126)
!156 = !DILocation(line: 216, column: 11, scope: !126)
!157 = !DILocation(line: 217, column: 5, scope: !126)
!158 = !DILocation(line: 219, column: 11, scope: !126)
!159 = !DILocation(line: 220, column: 11, scope: !126)
!160 = !DILocation(line: 221, column: 11, scope: !126)
!161 = !DILocation(line: 222, column: 11, scope: !126)
!162 = !DILocation(line: 223, column: 11, scope: !126)
!163 = !DILocation(line: 224, column: 11, scope: !126)
!164 = !DILocation(line: 225, column: 11, scope: !126)
!165 = !DILocation(line: 226, column: 11, scope: !126)
!166 = !DILocation(line: 227, column: 11, scope: !126)
!167 = !DILocation(line: 229, column: 11, scope: !126)
!168 = !DILocation(line: 231, column: 11, scope: !126)
!169 = !DILocation(line: 232, column: 11, scope: !126)
!170 = !DILocation(line: 233, column: 11, scope: !126)
!171 = !DILocation(line: 234, column: 11, scope: !126)
!172 = !DILocation(line: 235, column: 5, scope: !126)
!173 = !DILocation(line: 236, column: 11, scope: !126)
!174 = !DILocation(line: 238, column: 11, scope: !126)
!175 = !DILocation(line: 240, column: 11, scope: !126)
!176 = !DILocation(line: 241, column: 11, scope: !126)
!177 = !DILocation(line: 242, column: 11, scope: !126)
!178 = !DILocation(line: 243, column: 11, scope: !126)
!179 = !DILocation(line: 244, column: 11, scope: !126)
!180 = !DILocation(line: 245, column: 11, scope: !126)
!181 = !DILocation(line: 247, column: 11, scope: !126)
!182 = !DILocation(line: 249, column: 11, scope: !126)
!183 = !DILocation(line: 250, column: 11, scope: !126)
!184 = !DILocation(line: 251, column: 11, scope: !126)
!185 = !DILocation(line: 252, column: 11, scope: !126)
!186 = !DILocation(line: 253, column: 5, scope: !126)
!187 = !DILocation(line: 254, column: 11, scope: !126)
!188 = !DILocation(line: 255, column: 5, scope: !126)
!189 = !DILocation(line: 257, column: 11, scope: !126)
!190 = !DILocation(line: 258, column: 5, scope: !126)
!191 = !DILocation(line: 260, column: 11, scope: !126)
!192 = !DILocation(line: 261, column: 5, scope: !126)
!193 = !DILocation(line: 263, column: 5, scope: !126)
!194 = distinct !DISubprogram(name: "_mlir_ciface_init_array", linkageName: "_mlir_ciface_init_array", scope: null, file: !4, line: 265, type: !5, scopeLine: 265, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!195 = !DILocation(line: 266, column: 10, scope: !196)
!196 = !DILexicalBlockFile(scope: !194, file: !4, discriminator: 0)
!197 = !DILocation(line: 267, column: 10, scope: !196)
!198 = !DILocation(line: 268, column: 10, scope: !196)
!199 = !DILocation(line: 269, column: 10, scope: !196)
!200 = !DILocation(line: 270, column: 10, scope: !196)
!201 = !DILocation(line: 271, column: 10, scope: !196)
!202 = !DILocation(line: 272, column: 10, scope: !196)
!203 = !DILocation(line: 273, column: 10, scope: !196)
!204 = !DILocation(line: 274, column: 10, scope: !196)
!205 = !DILocation(line: 275, column: 10, scope: !196)
!206 = !DILocation(line: 276, column: 11, scope: !196)
!207 = !DILocation(line: 277, column: 11, scope: !196)
!208 = !DILocation(line: 278, column: 11, scope: !196)
!209 = !DILocation(line: 279, column: 11, scope: !196)
!210 = !DILocation(line: 280, column: 11, scope: !196)
!211 = !DILocation(line: 281, column: 11, scope: !196)
!212 = !DILocation(line: 282, column: 11, scope: !196)
!213 = !DILocation(line: 283, column: 11, scope: !196)
!214 = !DILocation(line: 284, column: 11, scope: !196)
!215 = !DILocation(line: 285, column: 11, scope: !196)
!216 = !DILocation(line: 286, column: 5, scope: !196)
!217 = !DILocation(line: 287, column: 5, scope: !196)
!218 = distinct !DISubprogram(name: "print_array", linkageName: "print_array", scope: null, file: !4, line: 289, type: !5, scopeLine: 289, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!219 = !DILocation(line: 291, column: 10, scope: !220)
!220 = !DILexicalBlockFile(scope: !218, file: !4, discriminator: 0)
!221 = !DILocation(line: 292, column: 10, scope: !220)
!222 = !DILocation(line: 293, column: 10, scope: !220)
!223 = !DILocation(line: 294, column: 10, scope: !220)
!224 = !DILocation(line: 295, column: 10, scope: !220)
!225 = !DILocation(line: 296, column: 10, scope: !220)
!226 = !DILocation(line: 297, column: 10, scope: !220)
!227 = !DILocation(line: 298, column: 10, scope: !220)
!228 = !DILocation(line: 299, column: 10, scope: !220)
!229 = !DILocation(line: 305, column: 11, scope: !220)
!230 = !DILocation(line: 308, column: 11, scope: !220)
!231 = !DILocation(line: 310, column: 11, scope: !220)
!232 = !DILocation(line: 315, column: 11, scope: !220)
!233 = !DILocation(line: 316, column: 11, scope: !220)
!234 = !DILocation(line: 317, column: 5, scope: !220)
!235 = !DILocation(line: 319, column: 11, scope: !220)
!236 = !DILocation(line: 320, column: 5, scope: !220)
!237 = !DILocation(line: 322, column: 11, scope: !220)
!238 = !DILocation(line: 323, column: 11, scope: !220)
!239 = !DILocation(line: 324, column: 5, scope: !220)
!240 = !DILocation(line: 326, column: 11, scope: !220)
!241 = !DILocation(line: 327, column: 5, scope: !220)
!242 = !DILocation(line: 329, column: 11, scope: !220)
!243 = !DILocation(line: 330, column: 11, scope: !220)
!244 = !DILocation(line: 331, column: 5, scope: !220)
!245 = !DILocation(line: 333, column: 11, scope: !220)
!246 = !DILocation(line: 334, column: 5, scope: !220)
!247 = !DILocation(line: 336, column: 11, scope: !220)
!248 = !DILocation(line: 337, column: 11, scope: !220)
!249 = !DILocation(line: 338, column: 11, scope: !220)
!250 = !DILocation(line: 339, column: 11, scope: !220)
!251 = !DILocation(line: 340, column: 11, scope: !220)
!252 = !DILocation(line: 341, column: 11, scope: !220)
!253 = !DILocation(line: 342, column: 11, scope: !220)
!254 = !DILocation(line: 343, column: 11, scope: !220)
!255 = !DILocation(line: 344, column: 5, scope: !220)
!256 = !DILocation(line: 347, column: 11, scope: !220)
!257 = !DILocation(line: 350, column: 11, scope: !220)
!258 = !DILocation(line: 351, column: 5, scope: !220)
!259 = !DILocation(line: 354, column: 11, scope: !220)
!260 = !DILocation(line: 357, column: 11, scope: !220)
!261 = !DILocation(line: 359, column: 11, scope: !220)
!262 = !DILocation(line: 361, column: 11, scope: !220)
!263 = !DILocation(line: 362, column: 11, scope: !220)
!264 = !DILocation(line: 363, column: 11, scope: !220)
!265 = !DILocation(line: 364, column: 11, scope: !220)
!266 = !DILocation(line: 365, column: 11, scope: !220)
!267 = !DILocation(line: 366, column: 11, scope: !220)
!268 = !DILocation(line: 367, column: 11, scope: !220)
!269 = !DILocation(line: 368, column: 5, scope: !220)
!270 = !DILocation(line: 370, column: 11, scope: !220)
!271 = !DILocation(line: 371, column: 5, scope: !220)
!272 = !DILocation(line: 373, column: 11, scope: !220)
!273 = !DILocation(line: 374, column: 5, scope: !220)
!274 = !DILocation(line: 377, column: 11, scope: !220)
!275 = !DILocation(line: 382, column: 11, scope: !220)
!276 = !DILocation(line: 384, column: 11, scope: !220)
!277 = !DILocation(line: 387, column: 11, scope: !220)
!278 = !DILocation(line: 388, column: 5, scope: !220)
!279 = distinct !DISubprogram(name: "_mlir_ciface_print_array", linkageName: "_mlir_ciface_print_array", scope: null, file: !4, line: 390, type: !5, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!280 = !DILocation(line: 391, column: 10, scope: !281)
!281 = !DILexicalBlockFile(scope: !279, file: !4, discriminator: 0)
!282 = !DILocation(line: 392, column: 10, scope: !281)
!283 = !DILocation(line: 393, column: 10, scope: !281)
!284 = !DILocation(line: 394, column: 10, scope: !281)
!285 = !DILocation(line: 395, column: 10, scope: !281)
!286 = !DILocation(line: 396, column: 10, scope: !281)
!287 = !DILocation(line: 397, column: 10, scope: !281)
!288 = !DILocation(line: 398, column: 10, scope: !281)
!289 = !DILocation(line: 399, column: 10, scope: !281)
!290 = !DILocation(line: 400, column: 10, scope: !281)
!291 = !DILocation(line: 401, column: 5, scope: !281)
!292 = !DILocation(line: 402, column: 5, scope: !281)
