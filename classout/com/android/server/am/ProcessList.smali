.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final DEBUG:Z = false

.field static final DHA_INCREASE_THRESHOLD:J = 0xa00000L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HDPI_1024_INIT:I = 0x24

.field static final HDPI_1024_MAX:I = 0x24

.field static final HDPI_1024_MIN:I = 0x12

.field static final HDPI_512_INIT:I = 0x18

.field static final HDPI_512_MAX:I = 0x18

.field static final HDPI_512_MIN:I = 0x18

.field static final HDPI_768_INIT:I = 0x24

.field static final HDPI_768_MAX:I = 0x24

.field static final HDPI_768_MIN:I = 0x12

.field static final HDPI_over1024_INIT:I = 0x3c

.field static final HDPI_over1024_MAX:I = 0x3c

.field static final HDPI_over1024_MIN:I = 0x1e

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static final HOME_APP_ADJ:I = 0x6

.field static final INIT_HIDDEN_APPS:I

.field static final LDPI_INIT:I = 0x18

.field static final LDPI_MAX:I = 0x18

.field static final LDPI_MIN:I = 0xf

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MAX_HIDDEN_APPS:I

.field static final MDPI_1024_INIT:I = 0x24

.field static final MDPI_1024_MAX:I = 0x24

.field static final MDPI_1024_MIN:I = 0x12

.field static final MDPI_256_INIT:I = 0x18

.field static final MDPI_256_MAX:I = 0x18

.field static final MDPI_256_MIN:I = 0x18

.field static final MDPI_512_INIT:I = 0x18

.field static final MDPI_512_MAX:I = 0x18

.field static final MDPI_512_MIN:I = 0xf

.field static final MDPI_768_INIT:I = 0x18

.field static final MDPI_768_MAX:I = 0x18

.field static final MDPI_768_MIN:I = 0xf

.field static final MDPI_over1024_INIT:I = 0x3c

.field static final MDPI_over1024_MAX:I = 0x3c

.field static final MDPI_over1024_MIN:I = 0x18

.field static final MIN_2ND_HIDDEN_APPS_FOR_DHA:I = 0x6

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

.field static final MIN_HIDDEN_APPS_FOR_DHA:I

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field static final TOTAL_DEVICE_MEMORY:J

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I = 0x3

.field static final TRIM_HIDDEN_APPS:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final TVDPI_1024_INIT:I = 0x24

.field static final TVDPI_1024_MAX:I = 0x24

.field static final TVDPI_1024_MIN:I = 0x18

.field static final TVDPI_over1024_INIT:I = 0x3c

.field static final TVDPI_over1024_MAX:I = 0x3c

.field static final TVDPI_over1024_MIN:I = 0x18

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static final XHDPI_1024_INIT:I = 0x1e

.field static final XHDPI_1024_MAX:I = 0x1e

.field static final XHDPI_1024_MIN:I = 0x18

.field static final XHDPI_1536_INIT:I = 0x33

.field static final XHDPI_1536_MAX:I = 0x33

.field static final XHDPI_1536_MIN:I = 0x18

.field static final XHDPI_2048_INIT:I = 0x3c

.field static final XHDPI_2048_MAX:I = 0x3c

.field static final XHDPI_2048_MIN:I = 0x18

.field static final XXHDPI_2048_INIT:I = 0x3c

.field static final XXHDPI_2048_MAX:I = 0x3c

.field static final XXHDPI_2048_MIN:I = 0x1e

.field static final XXHDPI_over2048_INIT:I = 0x3c

.field static final XXHDPI_over2048_MAX:I = 0x3c

.field static final XXHDPI_over2048_MIN:I = 0x18

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;


# instance fields
.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomKillDepth:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSz2ndDHAThreshold:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAThreshold:J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 115
    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 176
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 385
    const-string v0, "INIT_HIDDEN_APPS"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_HIDDEN_APPS:I

    .line 387
    const-string v0, "MIN_HIDDEN_APPS_FOR_DHA"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    .line 391
    const-string v0, "MAX_HIDDEN_APPS"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    return-void
.end method

.method constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 467
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-array v1, v5, [I

    aput v4, v1, v4

    aput v2, v1, v2

    aput v3, v1, v3

    const/4 v2, 0x3

    aput v6, v1, v2

    sget v2, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0xf

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 427
    new-array v1, v5, [J

    fill-array-data v1, :array_5a

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 435
    new-array v1, v5, [J

    fill-array-data v1, :array_76

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 443
    new-array v1, v5, [I

    fill-array-data v1, :array_92

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    .line 449
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 455
    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 457
    const-wide/32 v1, 0x1000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 459
    const-wide/32 v1, 0x800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 468
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 469
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 470
    sget-wide v1, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 471
    invoke-direct {p0, v4, v4, v4}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 472
    return-void

    .line 427
    nop

    :array_5a
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 435
    :array_76
    .array-data 8
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data

    .line 443
    :array_92
    .array-data 4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data
.end method

.method static dynamicStatus(Ljava/lang/String;)I
    .registers 15
    .param p0, "varS"    # Ljava/lang/String;

    .prologue
    .line 189
    const/16 v4, 0x78

    .line 190
    .local v4, "ldpi":I
    const/16 v5, 0xa0

    .line 191
    .local v5, "mdpi":I
    const/16 v6, 0xd5

    .line 192
    .local v6, "tvdpi":I
    const/16 v3, 0xf0

    .line 193
    .local v3, "hdpi":I
    const/16 v8, 0x140

    .line 194
    .local v8, "xhdpi":I
    const/16 v9, 0x1e0

    .line 196
    .local v9, "xxhdpi":I
    const/4 v7, 0x0

    .line 197
    .local v7, "varI":I
    const-string v10, "ro.sf.lcd_density"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "densityS":Ljava/lang/String;
    :try_start_15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "densityI":I
    const-string v10, "DHA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "density is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v10, "INIT_HIDDEN_APPS"

    if-ne p0, v10, :cond_d8

    .line 208
    const/16 v10, 0x78

    if-gt v0, v10, :cond_3c

    .line 210
    const/16 v7, 0x18

    .line 377
    .end local v0    # "densityI":I
    :goto_3b
    return v7

    .line 212
    .restart local v0    # "densityI":I
    :cond_3c
    const/16 v10, 0xa0

    if-gt v0, v10, :cond_6f

    .line 214
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x100

    cmp-long v10, v10, v12

    if-gez v10, :cond_4b

    .line 215
    const/16 v7, 0x18

    goto :goto_3b

    .line 216
    :cond_4b
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-gez v10, :cond_56

    .line 217
    const/16 v7, 0x18

    goto :goto_3b

    .line 218
    :cond_56
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x2e4

    cmp-long v10, v10, v12

    if-gez v10, :cond_61

    .line 219
    const/16 v7, 0x18

    goto :goto_3b

    .line 220
    :cond_61
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_6c

    .line 221
    const/16 v7, 0x24

    goto :goto_3b

    .line 223
    :cond_6c
    const/16 v7, 0x3c

    goto :goto_3b

    .line 226
    :cond_6f
    const/16 v10, 0xd5

    if-gt v0, v10, :cond_81

    .line 228
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_7e

    .line 229
    const/16 v7, 0x24

    goto :goto_3b

    .line 231
    :cond_7e
    const/16 v7, 0x3c

    goto :goto_3b

    .line 233
    :cond_81
    const/16 v10, 0xf0

    if-gt v0, v10, :cond_a9

    .line 235
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x200

    cmp-long v10, v10, v12

    if-gez v10, :cond_90

    .line 236
    const/16 v7, 0x18

    goto :goto_3b

    .line 237
    :cond_90
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x2e4

    cmp-long v10, v10, v12

    if-gez v10, :cond_9b

    .line 238
    const/16 v7, 0x24

    goto :goto_3b

    .line 239
    :cond_9b
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_a6

    .line 240
    const/16 v7, 0x24

    goto :goto_3b

    .line 242
    :cond_a6
    const/16 v7, 0x3c

    goto :goto_3b

    .line 244
    :cond_a9
    const/16 v10, 0x140

    if-gt v0, v10, :cond_c8

    .line 246
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_b8

    .line 247
    const/16 v7, 0x1e

    goto :goto_3b

    .line 248
    :cond_b8
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x600

    cmp-long v10, v10, v12

    if-gez v10, :cond_c4

    .line 249
    const/16 v7, 0x33

    goto/16 :goto_3b

    .line 251
    :cond_c4
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 256
    :cond_c8
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x800

    cmp-long v10, v10, v12

    if-gez v10, :cond_d4

    .line 257
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 259
    :cond_d4
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 262
    :cond_d8
    const-string v10, "MIN_HIDDEN_APPS_FOR_DHA"

    if-ne p0, v10, :cond_194

    .line 263
    const/16 v10, 0x78

    if-gt v0, v10, :cond_e4

    .line 265
    const/16 v7, 0xf

    goto/16 :goto_3b

    .line 267
    :cond_e4
    const/16 v10, 0xa0

    if-gt v0, v10, :cond_11c

    .line 269
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x100

    cmp-long v10, v10, v12

    if-gez v10, :cond_f4

    .line 270
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 271
    :cond_f4
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-gez v10, :cond_100

    .line 272
    const/16 v7, 0xf

    goto/16 :goto_3b

    .line 273
    :cond_100
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x2e4

    cmp-long v10, v10, v12

    if-gez v10, :cond_10c

    .line 274
    const/16 v7, 0xf

    goto/16 :goto_3b

    .line 275
    :cond_10c
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_118

    .line 276
    const/16 v7, 0x12

    goto/16 :goto_3b

    .line 278
    :cond_118
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 280
    :cond_11c
    const/16 v10, 0xd5

    if-gt v0, v10, :cond_130

    .line 282
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_12c

    .line 283
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 285
    :cond_12c
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 287
    :cond_130
    const/16 v10, 0xf0

    if-gt v0, v10, :cond_15c

    .line 289
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x200

    cmp-long v10, v10, v12

    if-gez v10, :cond_140

    .line 290
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 291
    :cond_140
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x2e4

    cmp-long v10, v10, v12

    if-gez v10, :cond_14c

    .line 292
    const/16 v7, 0x12

    goto/16 :goto_3b

    .line 293
    :cond_14c
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_158

    .line 294
    const/16 v7, 0x12

    goto/16 :goto_3b

    .line 296
    :cond_158
    const/16 v7, 0x1e

    goto/16 :goto_3b

    .line 298
    :cond_15c
    const/16 v10, 0x140

    if-gt v0, v10, :cond_184

    .line 300
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_16c

    .line 301
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 302
    :cond_16c
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-ltz v10, :cond_180

    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x600

    cmp-long v10, v10, v12

    if-gez v10, :cond_180

    .line 303
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 305
    :cond_180
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 309
    :cond_184
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x800

    cmp-long v10, v10, v12

    if-gez v10, :cond_190

    .line 310
    const/16 v7, 0x1e

    goto/16 :goto_3b

    .line 312
    :cond_190
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 316
    :cond_194
    const/16 v10, 0x78

    if-gt v0, v10, :cond_19c

    .line 318
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 320
    :cond_19c
    const/16 v10, 0xa0

    if-gt v0, v10, :cond_1d4

    .line 322
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x100

    cmp-long v10, v10, v12

    if-gez v10, :cond_1ac

    .line 323
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 324
    :cond_1ac
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-gez v10, :cond_1b8

    .line 325
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 326
    :cond_1b8
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x2e4

    cmp-long v10, v10, v12

    if-gez v10, :cond_1c4

    .line 327
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 328
    :cond_1c4
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_1d0

    .line 329
    const/16 v7, 0x24

    goto/16 :goto_3b

    .line 331
    :cond_1d0
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 333
    :cond_1d4
    const/16 v10, 0xd5

    if-gt v0, v10, :cond_1e8

    .line 335
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_1e4

    .line 336
    const/16 v7, 0x24

    goto/16 :goto_3b

    .line 338
    :cond_1e4
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 340
    :cond_1e8
    const/16 v10, 0xf0

    if-gt v0, v10, :cond_21c

    .line 342
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x200

    cmp-long v10, v10, v12

    if-gez v10, :cond_1f8

    .line 343
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 344
    :cond_1f8
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x2e4

    cmp-long v10, v10, v12

    if-gez v10, :cond_204

    .line 345
    const/16 v7, 0x24

    goto/16 :goto_3b

    .line 346
    :cond_204
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x2e4

    cmp-long v10, v10, v12

    if-ltz v10, :cond_218

    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_218

    .line 347
    const/16 v7, 0x24

    goto/16 :goto_3b

    .line 349
    :cond_218
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 351
    :cond_21c
    const/16 v10, 0x140

    if-gt v0, v10, :cond_244

    .line 353
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-gez v10, :cond_22c

    .line 354
    const/16 v7, 0x1e

    goto/16 :goto_3b

    .line 355
    :cond_22c
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-ltz v10, :cond_240

    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v12, 0x600

    cmp-long v10, v10, v12

    if-gez v10, :cond_240

    .line 356
    const/16 v7, 0x33

    goto/16 :goto_3b

    .line 358
    :cond_240
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 362
    :cond_244
    sget-wide v10, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J
    :try_end_246
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_246} :catch_254

    const-wide/16 v12, 0x800

    cmp-long v10, v10, v12

    if-gez v10, :cond_250

    .line 363
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 365
    :cond_250
    const/16 v7, 0x3c

    goto/16 :goto_3b

    .line 368
    .end local v0    # "densityI":I
    :catch_254
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v10, "DHA"

    const-string v11, "densityS is invalid"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v10, "INIT_HIDDEN_APPS"

    if-ne p0, v10, :cond_264

    .line 371
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 372
    :cond_264
    const-string v10, "MIN_HIDDEN_APPS_FOR_DHA"

    if-ne p0, v10, :cond_26c

    .line 373
    const/16 v7, 0x18

    goto/16 :goto_3b

    .line 375
    :cond_26c
    const/16 v7, 0x18

    goto/16 :goto_3b
.end method

.method static totalDeviceMemory()J
    .registers 4

    .prologue
    .line 179
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_b

    .line 180
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 182
    :cond_b
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 184
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .registers 25
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x12c

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x44b54000

    div-float v16, v17, v18

    .line 491
    .local v16, "scaleMem":F
    const v13, 0x25800

    .line 492
    .local v13, "minSize":I
    const v11, 0x1fa400

    .line 493
    .local v11, "maxSize":I
    mul-int v17, p1, p2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    sub-float v17, v17, v18

    const v18, 0x1d4c00

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 496
    .local v15, "scaleDisp":F
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v10, v0, [J

    fill-array-data v10, :array_154

    .line 501
    .local v10, "mOomMinFreeHighSwap":[J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v3, "adjString":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v12, "memString":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v7, "killString":Ljava/lang/StringBuilder;
    cmpl-float v17, v16, v15

    if-lez v17, :cond_da

    move/from16 v14, v16

    .line 506
    .local v14, "scale":F
    :goto_4e
    const/16 v17, 0x0

    cmpg-float v17, v14, v17

    if-gez v17, :cond_dd

    const/4 v14, 0x0

    .line 508
    :cond_55
    :goto_55
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_e7

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v17, v0

    aget-wide v8, v17, v6

    .line 510
    .local v8, "low":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v17, v0

    aget-wide v4, v17, v6

    .line 514
    .local v4, "high":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    long-to-float v0, v8

    move/from16 v18, v0

    sub-long v19, v4, v8

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-long v0, v0

    move-wide/from16 v18, v0

    aput-wide v18, v17, v6

    .line 516
    if-lez v6, :cond_a7

    .line 517
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v17, v0

    aget-wide v17, v17, v6

    const-wide/16 v19, 0x400

    mul-long v17, v17, v19

    const-wide/16 v19, 0x1000

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_56

    .end local v4    # "high":J
    .end local v6    # "i":I
    .end local v8    # "low":J
    .end local v14    # "scale":F
    :cond_da
    move v14, v15

    .line 505
    goto/16 :goto_4e

    .line 507
    .restart local v14    # "scale":F
    :cond_dd
    const/high16 v17, 0x3f800000

    cmpl-float v17, v14, v17

    if-lez v17, :cond_55

    const/high16 v14, 0x3f800000

    goto/16 :goto_55

    .line 534
    .restart local v6    # "i":I
    :cond_e7
    if-eqz p3, :cond_116

    .line 535
    const-string v17, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v17, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v17, "/sys/module/lowmemorykiller/parameters/adj_killed_level"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_116
    const/16 v17, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 543
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-wide v17, v17, v18

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 545
    return-void

    .line 496
    nop

    :array_154
    .array-data 8
        0x8000
        0xa000
        0xc000
        0xe000
        0x16000
        0x1e000
    .end array-data
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 559
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_17
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    .line 560
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_44
    .catchall {:try_start_6 .. :try_end_d} :catchall_41

    .line 564
    if-eqz v2, :cond_47

    .line 566
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-object v1, v2

    .line 571
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_13
    :goto_13
    return-void

    .line 567
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v3

    move-object v1, v2

    .line 568
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_13

    .line 561
    :catch_17
    move-exception v0

    .line 562
    .local v0, "e":Ljava/io/IOException;
    :goto_18
    :try_start_18
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_38

    .line 564
    if-eqz v1, :cond_13

    .line 566
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_13

    .line 567
    :catch_36
    move-exception v3

    goto :goto_13

    .line 564
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v3

    :goto_39
    if-eqz v1, :cond_3e

    .line 566
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 568
    :cond_3e
    :goto_3e
    throw v3

    .line 567
    :catch_3f
    move-exception v4

    goto :goto_3e

    .line 564
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_41
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_39

    .line 561
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_44
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_18

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_47
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_13
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 475
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    .line 476
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 477
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 478
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    .line 479
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 480
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 483
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method getMemLevel(I)J
    .registers 7
    .param p1, "adjustment"    # I

    .prologue
    const-wide/16 v3, 0x400

    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 549
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    .line 550
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 553
    :goto_13
    return-wide v1

    .line 548
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 553
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_13
.end method

.method public updateHiddenAppNum(III)I
    .registers 19
    .param p1, "maxHiddenApp"    # I
    .param p2, "curHidden"    # I
    .param p3, "curEmpty"    # I

    .prologue
    .line 575
    move/from16 v3, p1

    .line 576
    .local v3, "ret":I
    mul-int/lit8 v9, p1, 0x2

    div-int/lit8 v1, v9, 0x3

    .line 577
    .local v1, "maxEmpty":I
    sub-int v2, p1, v1

    .line 579
    .local v2, "maxHidden":I
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v9, :cond_4a

    .line 581
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 584
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v7

    .line 585
    .local v7, "szFreeMem":J
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v9

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    add-long v5, v9, v11

    .line 594
    .local v5, "szAvailableMem":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_2d

    move v4, v3

    .line 636
    .end local v3    # "ret":I
    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    .local v4, "ret":I
    :goto_2c
    return v4

    .line 599
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_2d
    long-to-double v9, v5

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-double v11, v11

    const-wide v13, 0x3ffb333333333333L

    mul-double/2addr v11, v13

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_41

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_4c

    :cond_41
    sget v9, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-gt v3, v9, :cond_4c

    const/4 v9, 0x6

    if-le v3, v9, :cond_4c

    .line 602
    add-int/lit8 v3, v3, -0x3

    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    :cond_4a
    :goto_4a
    move v4, v3

    .line 636
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_2c

    .line 608
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_4c
    long-to-double v9, v5

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-double v11, v11

    const-wide v13, 0x3ffb333333333333L

    mul-double/2addr v11, v13

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_60

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_67

    :cond_60
    sget v9, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-le v3, v9, :cond_67

    .line 610
    add-int/lit8 v3, v3, -0x3

    goto :goto_4a

    .line 617
    :cond_67
    long-to-double v9, v5

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-double v11, v11

    const-wide v13, 0x3ffb333333333333L

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4164000000000000L

    add-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_8d

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_8d

    sget v9, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-ge v3, v9, :cond_8d

    move/from16 v0, p2

    if-ge v0, v2, :cond_8a

    move/from16 v0, p3

    if-lt v0, v1, :cond_8d

    .line 620
    :cond_8a
    add-int/lit8 v3, v3, 0x3

    goto :goto_4a

    .line 626
    :cond_8d
    long-to-double v9, v5

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-double v11, v11

    const-wide v13, 0x3ffb333333333333L

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4164000000000000L

    add-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_4a

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_4a

    sget v9, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-lt v3, v9, :cond_4a

    sget v9, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    if-ge v3, v9, :cond_4a

    move/from16 v0, p2

    if-ge v0, v2, :cond_b4

    move/from16 v0, p3

    if-lt v0, v1, :cond_4a

    .line 629
    :cond_b4
    add-int/lit8 v3, v3, 0x3

    goto :goto_4a
.end method
