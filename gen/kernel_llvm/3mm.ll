; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define internal void @renamed_kernel_3mm(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, double* %26, double* %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, double* %33, double* %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, double* %40, double* %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, double* %47, double* %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53) !dbg !3 {
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %5, 0, !dbg !7
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, double* %6, 1, !dbg !9
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %7, 2, !dbg !10
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %8, 3, 0, !dbg !11
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 %10, 4, 0, !dbg !12
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, i64 %9, 3, 1, !dbg !13
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %11, 4, 1, !dbg !14
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0, !dbg !15
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, double* %13, 1, !dbg !16
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 %14, 2, !dbg !17
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 %15, 3, 0, !dbg !18
  %66 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, i64 %17, 4, 0, !dbg !19
  %67 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %66, i64 %16, 3, 1, !dbg !20
  %68 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %67, i64 %18, 4, 1, !dbg !21
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0, !dbg !22
  %70 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, double* %20, 1, !dbg !23
  %71 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %70, i64 %21, 2, !dbg !24
  %72 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %71, i64 %22, 3, 0, !dbg !25
  %73 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %72, i64 %24, 4, 0, !dbg !26
  %74 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %73, i64 %23, 3, 1, !dbg !27
  %75 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %74, i64 %25, 4, 1, !dbg !28
  %76 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %26, 0, !dbg !29
  %77 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, double* %27, 1, !dbg !30
  %78 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %77, i64 %28, 2, !dbg !31
  %79 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %78, i64 %29, 3, 0, !dbg !32
  %80 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %79, i64 %31, 4, 0, !dbg !33
  %81 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %80, i64 %30, 3, 1, !dbg !34
  %82 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %81, i64 %32, 4, 1, !dbg !35
  %83 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %33, 0, !dbg !36
  %84 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %83, double* %34, 1, !dbg !37
  %85 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %84, i64 %35, 2, !dbg !38
  %86 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %85, i64 %36, 3, 0, !dbg !39
  %87 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %86, i64 %38, 4, 0, !dbg !40
  %88 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %87, i64 %37, 3, 1, !dbg !41
  %89 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %88, i64 %39, 4, 1, !dbg !42
  %90 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %40, 0, !dbg !43
  %91 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %90, double* %41, 1, !dbg !44
  %92 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %91, i64 %42, 2, !dbg !45
  %93 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %92, i64 %43, 3, 0, !dbg !46
  %94 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %93, i64 %45, 4, 0, !dbg !47
  %95 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %94, i64 %44, 3, 1, !dbg !48
  %96 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %95, i64 %46, 4, 1, !dbg !49
  %97 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %47, 0, !dbg !50
  %98 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %97, double* %48, 1, !dbg !51
  %99 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %98, i64 %49, 2, !dbg !52
  %100 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %99, i64 %50, 3, 0, !dbg !53
  %101 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %100, i64 %52, 4, 0, !dbg !54
  %102 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %101, i64 %51, 3, 1, !dbg !55
  %103 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %102, i64 %53, 4, 1, !dbg !56
  %104 = sext i32 %1 to i64, !dbg !57
  %105 = sext i32 %2 to i64, !dbg !58
  %106 = sext i32 %3 to i64, !dbg !59
  %107 = sext i32 %4 to i64, !dbg !60
  %108 = sext i32 %3 to i64, !dbg !61
  %109 = sext i32 %1 to i64, !dbg !62
  %110 = sext i32 %0 to i64, !dbg !63
  br label %111, !dbg !64

111:                                              ; preds = %151, %54
  %112 = phi i64 [ %152, %151 ], [ 0, %54 ]
  %113 = icmp slt i64 %112, %110, !dbg !65
  br i1 %113, label %114, label %153, !dbg !66

114:                                              ; preds = %111
  br label %115, !dbg !67

115:                                              ; preds = %149, %114
  %116 = phi i64 [ %150, %149 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, %104, !dbg !68
  br i1 %117, label %118, label %151, !dbg !69

118:                                              ; preds = %115
  %119 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !70
  %120 = mul i64 %112, 900, !dbg !71
  %121 = add i64 %120, %116, !dbg !72
  %122 = getelementptr double, double* %119, i64 %121, !dbg !73
  store double 0.000000e+00, double* %122, align 8, !dbg !74
  br label %123, !dbg !75

123:                                              ; preds = %126, %118
  %124 = phi i64 [ %148, %126 ], [ 0, %118 ]
  %125 = icmp slt i64 %124, %105, !dbg !76
  br i1 %125, label %126, label %149, !dbg !77

126:                                              ; preds = %123
  %127 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %68, 1, !dbg !78
  %128 = mul i64 %112, 1000, !dbg !79
  %129 = add i64 %128, %124, !dbg !80
  %130 = getelementptr double, double* %127, i64 %129, !dbg !81
  %131 = load double, double* %130, align 8, !dbg !82
  %132 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %75, 1, !dbg !83
  %133 = mul i64 %124, 900, !dbg !84
  %134 = add i64 %133, %116, !dbg !85
  %135 = getelementptr double, double* %132, i64 %134, !dbg !86
  %136 = load double, double* %135, align 8, !dbg !87
  %137 = fmul double %131, %136, !dbg !88
  %138 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !89
  %139 = mul i64 %112, 900, !dbg !90
  %140 = add i64 %139, %116, !dbg !91
  %141 = getelementptr double, double* %138, i64 %140, !dbg !92
  %142 = load double, double* %141, align 8, !dbg !93
  %143 = fadd double %142, %137, !dbg !94
  %144 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !95
  %145 = mul i64 %112, 900, !dbg !96
  %146 = add i64 %145, %116, !dbg !97
  %147 = getelementptr double, double* %144, i64 %146, !dbg !98
  store double %143, double* %147, align 8, !dbg !99
  %148 = add i64 %124, 1, !dbg !100
  br label %123, !dbg !101

149:                                              ; preds = %123
  %150 = add i64 %116, 1, !dbg !102
  br label %115, !dbg !103

151:                                              ; preds = %115
  %152 = add i64 %112, 1, !dbg !104
  br label %111, !dbg !105

153:                                              ; preds = %111
  %154 = sext i32 %1 to i64, !dbg !106
  br label %155, !dbg !107

155:                                              ; preds = %195, %153
  %156 = phi i64 [ %196, %195 ], [ 0, %153 ]
  %157 = icmp slt i64 %156, %154, !dbg !108
  br i1 %157, label %158, label %197, !dbg !109

158:                                              ; preds = %155
  br label %159, !dbg !110

159:                                              ; preds = %193, %158
  %160 = phi i64 [ %194, %193 ], [ 0, %158 ]
  %161 = icmp slt i64 %160, %106, !dbg !111
  br i1 %161, label %162, label %195, !dbg !112

162:                                              ; preds = %159
  %163 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1, !dbg !113
  %164 = mul i64 %156, 1100, !dbg !114
  %165 = add i64 %164, %160, !dbg !115
  %166 = getelementptr double, double* %163, i64 %165, !dbg !116
  store double 0.000000e+00, double* %166, align 8, !dbg !117
  br label %167, !dbg !118

167:                                              ; preds = %170, %162
  %168 = phi i64 [ %192, %170 ], [ 0, %162 ]
  %169 = icmp slt i64 %168, %107, !dbg !119
  br i1 %169, label %170, label %193, !dbg !120

170:                                              ; preds = %167
  %171 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %89, 1, !dbg !121
  %172 = mul i64 %156, 1200, !dbg !122
  %173 = add i64 %172, %168, !dbg !123
  %174 = getelementptr double, double* %171, i64 %173, !dbg !124
  %175 = load double, double* %174, align 8, !dbg !125
  %176 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %96, 1, !dbg !126
  %177 = mul i64 %168, 1100, !dbg !127
  %178 = add i64 %177, %160, !dbg !128
  %179 = getelementptr double, double* %176, i64 %178, !dbg !129
  %180 = load double, double* %179, align 8, !dbg !130
  %181 = fmul double %175, %180, !dbg !131
  %182 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1, !dbg !132
  %183 = mul i64 %156, 1100, !dbg !133
  %184 = add i64 %183, %160, !dbg !134
  %185 = getelementptr double, double* %182, i64 %184, !dbg !135
  %186 = load double, double* %185, align 8, !dbg !136
  %187 = fadd double %186, %181, !dbg !137
  %188 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1, !dbg !138
  %189 = mul i64 %156, 1100, !dbg !139
  %190 = add i64 %189, %160, !dbg !140
  %191 = getelementptr double, double* %188, i64 %190, !dbg !141
  store double %187, double* %191, align 8, !dbg !142
  %192 = add i64 %168, 1, !dbg !143
  br label %167, !dbg !144

193:                                              ; preds = %167
  %194 = add i64 %160, 1, !dbg !145
  br label %159, !dbg !146

195:                                              ; preds = %159
  %196 = add i64 %156, 1, !dbg !147
  br label %155, !dbg !148

197:                                              ; preds = %155
  %198 = sext i32 %0 to i64, !dbg !149
  br label %199, !dbg !150

199:                                              ; preds = %239, %197
  %200 = phi i64 [ %240, %239 ], [ 0, %197 ]
  %201 = icmp slt i64 %200, %198, !dbg !151
  br i1 %201, label %202, label %241, !dbg !152

202:                                              ; preds = %199
  br label %203, !dbg !153

203:                                              ; preds = %237, %202
  %204 = phi i64 [ %238, %237 ], [ 0, %202 ]
  %205 = icmp slt i64 %204, %108, !dbg !154
  br i1 %205, label %206, label %239, !dbg !155

206:                                              ; preds = %203
  %207 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %103, 1, !dbg !156
  %208 = mul i64 %200, 1100, !dbg !157
  %209 = add i64 %208, %204, !dbg !158
  %210 = getelementptr double, double* %207, i64 %209, !dbg !159
  store double 0.000000e+00, double* %210, align 8, !dbg !160
  br label %211, !dbg !161

211:                                              ; preds = %214, %206
  %212 = phi i64 [ %236, %214 ], [ 0, %206 ]
  %213 = icmp slt i64 %212, %109, !dbg !162
  br i1 %213, label %214, label %237, !dbg !163

214:                                              ; preds = %211
  %215 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !164
  %216 = mul i64 %200, 900, !dbg !165
  %217 = add i64 %216, %212, !dbg !166
  %218 = getelementptr double, double* %215, i64 %217, !dbg !167
  %219 = load double, double* %218, align 8, !dbg !168
  %220 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1, !dbg !169
  %221 = mul i64 %212, 1100, !dbg !170
  %222 = add i64 %221, %204, !dbg !171
  %223 = getelementptr double, double* %220, i64 %222, !dbg !172
  %224 = load double, double* %223, align 8, !dbg !173
  %225 = fmul double %219, %224, !dbg !174
  %226 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %103, 1, !dbg !175
  %227 = mul i64 %200, 1100, !dbg !176
  %228 = add i64 %227, %204, !dbg !177
  %229 = getelementptr double, double* %226, i64 %228, !dbg !178
  %230 = load double, double* %229, align 8, !dbg !179
  %231 = fadd double %230, %225, !dbg !180
  %232 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %103, 1, !dbg !181
  %233 = mul i64 %200, 1100, !dbg !182
  %234 = add i64 %233, %204, !dbg !183
  %235 = getelementptr double, double* %232, i64 %234, !dbg !184
  store double %231, double* %235, align 8, !dbg !185
  %236 = add i64 %212, 1, !dbg !186
  br label %211, !dbg !187

237:                                              ; preds = %211
  %238 = add i64 %204, 1, !dbg !188
  br label %203, !dbg !189

239:                                              ; preds = %203
  %240 = add i64 %200, 1, !dbg !190
  br label %199, !dbg !191

241:                                              ; preds = %199
  ret void, !dbg !192
}

define void @_mlir_ciface_kernel_3mm(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, { double*, double*, i64, [2 x i64], [2 x i64] }* %6, { double*, double*, i64, [2 x i64], [2 x i64] }* %7, { double*, double*, i64, [2 x i64], [2 x i64] }* %8, { double*, double*, i64, [2 x i64], [2 x i64] }* %9, { double*, double*, i64, [2 x i64], [2 x i64] }* %10, { double*, double*, i64, [2 x i64], [2 x i64] }* %11) !dbg !193 {
  %13 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %5, align 8, !dbg !194
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 0, !dbg !196
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 1, !dbg !197
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 2, !dbg !198
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 3, 0, !dbg !199
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 3, 1, !dbg !200
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 4, 0, !dbg !201
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, 4, 1, !dbg !202
  %21 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %6, align 8, !dbg !203
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 0, !dbg !204
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 1, !dbg !205
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 2, !dbg !206
  %25 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 3, 0, !dbg !207
  %26 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 3, 1, !dbg !208
  %27 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 4, 0, !dbg !209
  %28 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 4, 1, !dbg !210
  %29 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %7, align 8, !dbg !211
  %30 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0, !dbg !212
  %31 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1, !dbg !213
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2, !dbg !214
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0, !dbg !215
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1, !dbg !216
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0, !dbg !217
  %36 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1, !dbg !218
  %37 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %8, align 8, !dbg !219
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 0, !dbg !220
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1, !dbg !221
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 2, !dbg !222
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 3, 0, !dbg !223
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 3, 1, !dbg !224
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 4, 0, !dbg !225
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 4, 1, !dbg !226
  %45 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %9, align 8, !dbg !227
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, 0, !dbg !228
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, 1, !dbg !229
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, 2, !dbg !230
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, 3, 0, !dbg !231
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, 3, 1, !dbg !232
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, 4, 0, !dbg !233
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, 4, 1, !dbg !234
  %53 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %10, align 8, !dbg !235
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, 0, !dbg !236
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, 1, !dbg !237
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, 2, !dbg !238
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, 3, 0, !dbg !239
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, 3, 1, !dbg !240
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, 4, 0, !dbg !241
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, 4, 1, !dbg !242
  %61 = load { double*, double*, i64, [2 x i64], [2 x i64] }, { double*, double*, i64, [2 x i64], [2 x i64] }* %11, align 8, !dbg !243
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 0, !dbg !244
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1, !dbg !245
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 2, !dbg !246
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 3, 0, !dbg !247
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 3, 1, !dbg !248
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 4, 0, !dbg !249
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 4, 1, !dbg !250
  call void @renamed_kernel_3mm(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double* %14, double* %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, double* %22, double* %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, double* %30, double* %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, double* %38, double* %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, double* %46, double* %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, double* %54, double* %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, double* %62, double* %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68), !dbg !251
  ret void, !dbg !252
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "kernel_3mm", linkageName: "kernel_3mm", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
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
!16 = !DILocation(line: 13, column: 11, scope: !8)
!17 = !DILocation(line: 14, column: 11, scope: !8)
!18 = !DILocation(line: 15, column: 11, scope: !8)
!19 = !DILocation(line: 16, column: 11, scope: !8)
!20 = !DILocation(line: 17, column: 11, scope: !8)
!21 = !DILocation(line: 18, column: 11, scope: !8)
!22 = !DILocation(line: 20, column: 11, scope: !8)
!23 = !DILocation(line: 21, column: 11, scope: !8)
!24 = !DILocation(line: 22, column: 11, scope: !8)
!25 = !DILocation(line: 23, column: 11, scope: !8)
!26 = !DILocation(line: 24, column: 11, scope: !8)
!27 = !DILocation(line: 25, column: 11, scope: !8)
!28 = !DILocation(line: 26, column: 11, scope: !8)
!29 = !DILocation(line: 28, column: 11, scope: !8)
!30 = !DILocation(line: 29, column: 11, scope: !8)
!31 = !DILocation(line: 30, column: 11, scope: !8)
!32 = !DILocation(line: 31, column: 11, scope: !8)
!33 = !DILocation(line: 32, column: 11, scope: !8)
!34 = !DILocation(line: 33, column: 11, scope: !8)
!35 = !DILocation(line: 34, column: 11, scope: !8)
!36 = !DILocation(line: 36, column: 11, scope: !8)
!37 = !DILocation(line: 37, column: 11, scope: !8)
!38 = !DILocation(line: 38, column: 11, scope: !8)
!39 = !DILocation(line: 39, column: 11, scope: !8)
!40 = !DILocation(line: 40, column: 11, scope: !8)
!41 = !DILocation(line: 41, column: 11, scope: !8)
!42 = !DILocation(line: 42, column: 11, scope: !8)
!43 = !DILocation(line: 44, column: 11, scope: !8)
!44 = !DILocation(line: 45, column: 11, scope: !8)
!45 = !DILocation(line: 46, column: 11, scope: !8)
!46 = !DILocation(line: 47, column: 11, scope: !8)
!47 = !DILocation(line: 48, column: 11, scope: !8)
!48 = !DILocation(line: 49, column: 11, scope: !8)
!49 = !DILocation(line: 50, column: 11, scope: !8)
!50 = !DILocation(line: 52, column: 11, scope: !8)
!51 = !DILocation(line: 53, column: 11, scope: !8)
!52 = !DILocation(line: 54, column: 11, scope: !8)
!53 = !DILocation(line: 55, column: 11, scope: !8)
!54 = !DILocation(line: 56, column: 11, scope: !8)
!55 = !DILocation(line: 57, column: 11, scope: !8)
!56 = !DILocation(line: 58, column: 11, scope: !8)
!57 = !DILocation(line: 60, column: 11, scope: !8)
!58 = !DILocation(line: 61, column: 11, scope: !8)
!59 = !DILocation(line: 62, column: 11, scope: !8)
!60 = !DILocation(line: 63, column: 11, scope: !8)
!61 = !DILocation(line: 64, column: 11, scope: !8)
!62 = !DILocation(line: 65, column: 11, scope: !8)
!63 = !DILocation(line: 66, column: 11, scope: !8)
!64 = !DILocation(line: 69, column: 5, scope: !8)
!65 = !DILocation(line: 71, column: 11, scope: !8)
!66 = !DILocation(line: 72, column: 5, scope: !8)
!67 = !DILocation(line: 76, column: 5, scope: !8)
!68 = !DILocation(line: 78, column: 11, scope: !8)
!69 = !DILocation(line: 79, column: 5, scope: !8)
!70 = !DILocation(line: 81, column: 11, scope: !8)
!71 = !DILocation(line: 83, column: 11, scope: !8)
!72 = !DILocation(line: 84, column: 11, scope: !8)
!73 = !DILocation(line: 85, column: 11, scope: !8)
!74 = !DILocation(line: 86, column: 5, scope: !8)
!75 = !DILocation(line: 89, column: 5, scope: !8)
!76 = !DILocation(line: 91, column: 11, scope: !8)
!77 = !DILocation(line: 92, column: 5, scope: !8)
!78 = !DILocation(line: 94, column: 11, scope: !8)
!79 = !DILocation(line: 96, column: 11, scope: !8)
!80 = !DILocation(line: 97, column: 11, scope: !8)
!81 = !DILocation(line: 98, column: 11, scope: !8)
!82 = !DILocation(line: 99, column: 11, scope: !8)
!83 = !DILocation(line: 100, column: 11, scope: !8)
!84 = !DILocation(line: 102, column: 11, scope: !8)
!85 = !DILocation(line: 103, column: 11, scope: !8)
!86 = !DILocation(line: 104, column: 11, scope: !8)
!87 = !DILocation(line: 105, column: 11, scope: !8)
!88 = !DILocation(line: 106, column: 11, scope: !8)
!89 = !DILocation(line: 107, column: 11, scope: !8)
!90 = !DILocation(line: 109, column: 11, scope: !8)
!91 = !DILocation(line: 110, column: 11, scope: !8)
!92 = !DILocation(line: 111, column: 11, scope: !8)
!93 = !DILocation(line: 112, column: 11, scope: !8)
!94 = !DILocation(line: 113, column: 12, scope: !8)
!95 = !DILocation(line: 114, column: 12, scope: !8)
!96 = !DILocation(line: 116, column: 12, scope: !8)
!97 = !DILocation(line: 117, column: 12, scope: !8)
!98 = !DILocation(line: 118, column: 12, scope: !8)
!99 = !DILocation(line: 119, column: 5, scope: !8)
!100 = !DILocation(line: 120, column: 12, scope: !8)
!101 = !DILocation(line: 121, column: 5, scope: !8)
!102 = !DILocation(line: 123, column: 12, scope: !8)
!103 = !DILocation(line: 124, column: 5, scope: !8)
!104 = !DILocation(line: 126, column: 12, scope: !8)
!105 = !DILocation(line: 127, column: 5, scope: !8)
!106 = !DILocation(line: 129, column: 12, scope: !8)
!107 = !DILocation(line: 132, column: 5, scope: !8)
!108 = !DILocation(line: 134, column: 12, scope: !8)
!109 = !DILocation(line: 135, column: 5, scope: !8)
!110 = !DILocation(line: 139, column: 5, scope: !8)
!111 = !DILocation(line: 141, column: 12, scope: !8)
!112 = !DILocation(line: 142, column: 5, scope: !8)
!113 = !DILocation(line: 144, column: 12, scope: !8)
!114 = !DILocation(line: 146, column: 12, scope: !8)
!115 = !DILocation(line: 147, column: 12, scope: !8)
!116 = !DILocation(line: 148, column: 12, scope: !8)
!117 = !DILocation(line: 149, column: 5, scope: !8)
!118 = !DILocation(line: 152, column: 5, scope: !8)
!119 = !DILocation(line: 154, column: 12, scope: !8)
!120 = !DILocation(line: 155, column: 5, scope: !8)
!121 = !DILocation(line: 157, column: 12, scope: !8)
!122 = !DILocation(line: 159, column: 12, scope: !8)
!123 = !DILocation(line: 160, column: 12, scope: !8)
!124 = !DILocation(line: 161, column: 12, scope: !8)
!125 = !DILocation(line: 162, column: 12, scope: !8)
!126 = !DILocation(line: 163, column: 12, scope: !8)
!127 = !DILocation(line: 165, column: 12, scope: !8)
!128 = !DILocation(line: 166, column: 12, scope: !8)
!129 = !DILocation(line: 167, column: 12, scope: !8)
!130 = !DILocation(line: 168, column: 12, scope: !8)
!131 = !DILocation(line: 169, column: 12, scope: !8)
!132 = !DILocation(line: 170, column: 12, scope: !8)
!133 = !DILocation(line: 172, column: 12, scope: !8)
!134 = !DILocation(line: 173, column: 12, scope: !8)
!135 = !DILocation(line: 174, column: 12, scope: !8)
!136 = !DILocation(line: 175, column: 12, scope: !8)
!137 = !DILocation(line: 176, column: 12, scope: !8)
!138 = !DILocation(line: 177, column: 12, scope: !8)
!139 = !DILocation(line: 179, column: 12, scope: !8)
!140 = !DILocation(line: 180, column: 12, scope: !8)
!141 = !DILocation(line: 181, column: 12, scope: !8)
!142 = !DILocation(line: 182, column: 5, scope: !8)
!143 = !DILocation(line: 183, column: 12, scope: !8)
!144 = !DILocation(line: 184, column: 5, scope: !8)
!145 = !DILocation(line: 186, column: 12, scope: !8)
!146 = !DILocation(line: 187, column: 5, scope: !8)
!147 = !DILocation(line: 189, column: 12, scope: !8)
!148 = !DILocation(line: 190, column: 5, scope: !8)
!149 = !DILocation(line: 192, column: 12, scope: !8)
!150 = !DILocation(line: 195, column: 5, scope: !8)
!151 = !DILocation(line: 197, column: 12, scope: !8)
!152 = !DILocation(line: 198, column: 5, scope: !8)
!153 = !DILocation(line: 202, column: 5, scope: !8)
!154 = !DILocation(line: 204, column: 12, scope: !8)
!155 = !DILocation(line: 205, column: 5, scope: !8)
!156 = !DILocation(line: 207, column: 12, scope: !8)
!157 = !DILocation(line: 209, column: 12, scope: !8)
!158 = !DILocation(line: 210, column: 12, scope: !8)
!159 = !DILocation(line: 211, column: 12, scope: !8)
!160 = !DILocation(line: 212, column: 5, scope: !8)
!161 = !DILocation(line: 215, column: 5, scope: !8)
!162 = !DILocation(line: 217, column: 12, scope: !8)
!163 = !DILocation(line: 218, column: 5, scope: !8)
!164 = !DILocation(line: 220, column: 12, scope: !8)
!165 = !DILocation(line: 222, column: 12, scope: !8)
!166 = !DILocation(line: 223, column: 12, scope: !8)
!167 = !DILocation(line: 224, column: 12, scope: !8)
!168 = !DILocation(line: 225, column: 12, scope: !8)
!169 = !DILocation(line: 226, column: 12, scope: !8)
!170 = !DILocation(line: 228, column: 12, scope: !8)
!171 = !DILocation(line: 229, column: 12, scope: !8)
!172 = !DILocation(line: 230, column: 12, scope: !8)
!173 = !DILocation(line: 231, column: 12, scope: !8)
!174 = !DILocation(line: 232, column: 12, scope: !8)
!175 = !DILocation(line: 233, column: 12, scope: !8)
!176 = !DILocation(line: 235, column: 12, scope: !8)
!177 = !DILocation(line: 236, column: 12, scope: !8)
!178 = !DILocation(line: 237, column: 12, scope: !8)
!179 = !DILocation(line: 238, column: 12, scope: !8)
!180 = !DILocation(line: 239, column: 12, scope: !8)
!181 = !DILocation(line: 240, column: 12, scope: !8)
!182 = !DILocation(line: 242, column: 12, scope: !8)
!183 = !DILocation(line: 243, column: 12, scope: !8)
!184 = !DILocation(line: 244, column: 12, scope: !8)
!185 = !DILocation(line: 245, column: 5, scope: !8)
!186 = !DILocation(line: 246, column: 12, scope: !8)
!187 = !DILocation(line: 247, column: 5, scope: !8)
!188 = !DILocation(line: 249, column: 12, scope: !8)
!189 = !DILocation(line: 250, column: 5, scope: !8)
!190 = !DILocation(line: 252, column: 12, scope: !8)
!191 = !DILocation(line: 253, column: 5, scope: !8)
!192 = !DILocation(line: 255, column: 5, scope: !8)
!193 = distinct !DISubprogram(name: "_mlir_ciface_kernel_3mm", linkageName: "_mlir_ciface_kernel_3mm", scope: null, file: !4, line: 257, type: !5, scopeLine: 257, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!194 = !DILocation(line: 258, column: 10, scope: !195)
!195 = !DILexicalBlockFile(scope: !193, file: !4, discriminator: 0)
!196 = !DILocation(line: 259, column: 10, scope: !195)
!197 = !DILocation(line: 260, column: 10, scope: !195)
!198 = !DILocation(line: 261, column: 10, scope: !195)
!199 = !DILocation(line: 262, column: 10, scope: !195)
!200 = !DILocation(line: 263, column: 10, scope: !195)
!201 = !DILocation(line: 264, column: 10, scope: !195)
!202 = !DILocation(line: 265, column: 10, scope: !195)
!203 = !DILocation(line: 266, column: 10, scope: !195)
!204 = !DILocation(line: 267, column: 10, scope: !195)
!205 = !DILocation(line: 268, column: 11, scope: !195)
!206 = !DILocation(line: 269, column: 11, scope: !195)
!207 = !DILocation(line: 270, column: 11, scope: !195)
!208 = !DILocation(line: 271, column: 11, scope: !195)
!209 = !DILocation(line: 272, column: 11, scope: !195)
!210 = !DILocation(line: 273, column: 11, scope: !195)
!211 = !DILocation(line: 274, column: 11, scope: !195)
!212 = !DILocation(line: 275, column: 11, scope: !195)
!213 = !DILocation(line: 276, column: 11, scope: !195)
!214 = !DILocation(line: 277, column: 11, scope: !195)
!215 = !DILocation(line: 278, column: 11, scope: !195)
!216 = !DILocation(line: 279, column: 11, scope: !195)
!217 = !DILocation(line: 280, column: 11, scope: !195)
!218 = !DILocation(line: 281, column: 11, scope: !195)
!219 = !DILocation(line: 282, column: 11, scope: !195)
!220 = !DILocation(line: 283, column: 11, scope: !195)
!221 = !DILocation(line: 284, column: 11, scope: !195)
!222 = !DILocation(line: 285, column: 11, scope: !195)
!223 = !DILocation(line: 286, column: 11, scope: !195)
!224 = !DILocation(line: 287, column: 11, scope: !195)
!225 = !DILocation(line: 288, column: 11, scope: !195)
!226 = !DILocation(line: 289, column: 11, scope: !195)
!227 = !DILocation(line: 290, column: 11, scope: !195)
!228 = !DILocation(line: 291, column: 11, scope: !195)
!229 = !DILocation(line: 292, column: 11, scope: !195)
!230 = !DILocation(line: 293, column: 11, scope: !195)
!231 = !DILocation(line: 294, column: 11, scope: !195)
!232 = !DILocation(line: 295, column: 11, scope: !195)
!233 = !DILocation(line: 296, column: 11, scope: !195)
!234 = !DILocation(line: 297, column: 11, scope: !195)
!235 = !DILocation(line: 298, column: 11, scope: !195)
!236 = !DILocation(line: 299, column: 11, scope: !195)
!237 = !DILocation(line: 300, column: 11, scope: !195)
!238 = !DILocation(line: 301, column: 11, scope: !195)
!239 = !DILocation(line: 302, column: 11, scope: !195)
!240 = !DILocation(line: 303, column: 11, scope: !195)
!241 = !DILocation(line: 304, column: 11, scope: !195)
!242 = !DILocation(line: 305, column: 11, scope: !195)
!243 = !DILocation(line: 306, column: 11, scope: !195)
!244 = !DILocation(line: 307, column: 11, scope: !195)
!245 = !DILocation(line: 308, column: 11, scope: !195)
!246 = !DILocation(line: 309, column: 11, scope: !195)
!247 = !DILocation(line: 310, column: 11, scope: !195)
!248 = !DILocation(line: 311, column: 11, scope: !195)
!249 = !DILocation(line: 312, column: 11, scope: !195)
!250 = !DILocation(line: 313, column: 11, scope: !195)
!251 = !DILocation(line: 314, column: 5, scope: !195)
!252 = !DILocation(line: 315, column: 5, scope: !195)
