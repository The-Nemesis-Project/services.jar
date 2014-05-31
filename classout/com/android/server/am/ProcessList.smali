.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final INIT_CACHED_APPS:I = 0x6

.field static final INIT_EMPTY_APPS:I = 0x1e

.field static final MAX_CACHED_APPS:I = 0x6

.field static MAX_EMPTY_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x927c0L

.field static MID_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mMaxCached:I

.field private static final sFirstAwakePssTimes:[J

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSz2ndDHAThreshold:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private mSzMidDHA:I

.field private mSzMidDHA2nd:I

.field private mSzMidDHA2ndStep:I

.field private mSzMidDHAStep:I

.field private mSzUpdateDHACount:I

.field private mSzUpdateDHAMaxCount:I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xe

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->DEBUG:Z

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 114
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 149
    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 151
    const/16 v0, 0x8

    sput v0, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    .line 153
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 157
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 161
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 164
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 167
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 215
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 221
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 485
    new-array v0, v2, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 502
    new-array v0, v2, [J

    fill-array-data v0, :array_66

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 519
    new-array v0, v2, [J

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    return-void

    .line 485
    :array_46
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 502
    :array_66
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 519
    :array_a2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data
.end method

.method constructor <init>()V
    .registers 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x6

    const/4 v5, 0x0

    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-array v1, v2, [I

    fill-array-data v1, :array_64

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 178
    new-array v1, v2, [J

    fill-array-data v1, :array_74

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 184
    new-array v1, v2, [J

    fill-array-data v1, :array_90

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 189
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 193
    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 195
    const-wide/32 v1, 0x1000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 197
    const-wide/32 v1, 0x800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 199
    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 201
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    .line 203
    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    .line 205
    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    .line 207
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    rsub-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 209
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v2, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 211
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 213
    const/high16 v1, 0x40000000

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 228
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 229
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 230
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 231
    invoke-direct {p0, v5, v5, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 232
    return-void

    .line 172
    :array_64
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 178
    :array_74
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 184
    :array_90
    .array-data 8
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 441
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    .line 442
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 443
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 446
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 447
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 346
    if-ne p2, p3, :cond_19

    .line 347
    if-nez p1, :cond_5

    .line 350
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 348
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 350
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static computeNextPssTime(IZZJ)J
    .registers 8
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "sleeping"    # Z
    .param p3, "now"    # J

    .prologue
    .line 542
    if-eqz p2, :cond_d

    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 549
    .local v0, "table":[J
    :goto_6
    aget-wide v1, v0, p0

    add-long/2addr v1, p3

    return-wide v1

    .line 542
    .end local v0    # "table":[J
    :cond_a
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_6

    :cond_d
    if-eqz p1, :cond_12

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_6

    :cond_12
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_6
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .registers 7
    .param p0, "setAdj"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 354
    const/16 v0, 0x9

    if-lt p0, v0, :cond_17

    .line 355
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_16
    return-object v0

    .line 356
    :cond_17
    const/16 v0, 0x8

    if-lt p0, v0, :cond_25

    .line 357
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 358
    :cond_25
    const/4 v0, 0x7

    if-lt p0, v0, :cond_30

    .line 359
    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 360
    :cond_30
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3b

    .line 361
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 362
    :cond_3b
    const/4 v0, 0x5

    if-lt p0, v0, :cond_47

    .line 363
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 364
    :cond_47
    const/4 v0, 0x4

    if-lt p0, v0, :cond_52

    .line 365
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 366
    :cond_52
    const/4 v0, 0x3

    if-lt p0, v0, :cond_5d

    .line 367
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 368
    :cond_5d
    const/4 v0, 0x2

    if-lt p0, v0, :cond_68

    .line 369
    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 370
    :cond_68
    if-lt p0, v5, :cond_72

    .line 371
    const-string/jumbo v0, "vis  "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 372
    :cond_72
    if-ltz p0, :cond_7c

    .line 373
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 374
    :cond_7c
    if-lt p0, v4, :cond_85

    .line 375
    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 376
    :cond_85
    if-lt p0, v3, :cond_8f

    .line 377
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 378
    :cond_8f
    if-lt p0, v1, :cond_99

    .line 379
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 381
    :cond_99
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"    # I

    .prologue
    .line 387
    packed-switch p0, :pswitch_data_34

    .line 434
    const-string v0, "??"

    .line 437
    .local v0, "procState":Ljava/lang/String;
    :goto_5
    return-object v0

    .line 389
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "N "

    .line 390
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 392
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "P "

    .line 393
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 395
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "PU"

    .line 396
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 398
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "T "

    .line 399
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 401
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "IF"

    .line 402
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 404
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_15
    const-string v0, "IB"

    .line 405
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 407
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_18
    const-string v0, "BU"

    .line 408
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 410
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "HW"

    .line 411
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 413
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "S "

    .line 414
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 416
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_21
    const-string v0, "R "

    .line 417
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 419
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_24
    const-string v0, "HO"

    .line 420
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 422
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_27
    const-string v0, "LA"

    .line 423
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 425
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "CA"

    .line 426
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 428
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "Ca"

    .line 429
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 431
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_30
    const-string v0, "CE"

    .line 432
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 387
    nop

    :pswitch_data_34
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 537
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static totalDeviceMemory()J
    .registers 4

    .prologue
    .line 117
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_b

    .line 118
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 120
    :cond_b
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 122
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .registers 30
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x12c

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43c80000

    div-float v19, v20, v21

    .line 251
    .local v19, "scaleMem":F
    const v11, 0x5dc00

    .line 252
    .local v11, "minSize":I
    const v9, 0xfa000

    .line 253
    .local v9, "maxSize":I
    mul-int v20, p1, p2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    const v21, 0x9c400

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v20, v21

    .line 260
    .local v18, "scaleDisp":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v3, "adjString":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v10, "memString":Ljava/lang/StringBuilder;
    cmpl-float v20, v19, v18

    if-lez v20, :cond_9b

    move/from16 v17, v19

    .line 264
    .local v17, "scale":F
    :goto_3f
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_9e

    const/16 v17, 0x0

    .line 266
    :cond_47
    :goto_47
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e0009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 268
    .local v13, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e0008

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 274
    .local v12, "minfree_abs":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_a7

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v20, v0

    aget-wide v7, v20, v6

    .line 276
    .local v7, "low":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v20, v0

    aget-wide v4, v20, v6

    .line 277
    .local v4, "high":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    long-to-float v0, v7

    move/from16 v21, v0

    sub-long v22, v4, v7

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v17

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v21, v0

    aput-wide v21, v20, v6

    .line 274
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    .end local v4    # "high":J
    .end local v6    # "i":I
    .end local v7    # "low":J
    .end local v12    # "minfree_abs":I
    .end local v13    # "minfree_adj":I
    .end local v17    # "scale":F
    :cond_9b
    move/from16 v17, v18

    .line 263
    goto :goto_3f

    .line 265
    .restart local v17    # "scale":F
    :cond_9e
    const/high16 v20, 0x3f800000

    cmpl-float v20, v17, v20

    if-lez v20, :cond_47

    const/high16 v17, 0x3f800000

    goto :goto_47

    .line 280
    .restart local v6    # "i":I
    .restart local v12    # "minfree_abs":I
    .restart local v13    # "minfree_adj":I
    :cond_a7
    if-ltz v12, :cond_f7

    .line 281
    const/4 v6, 0x0

    :goto_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_f7

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v6

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-wide v22, v22, v23

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v21, v0

    aput-wide v21, v20, v6

    .line 281
    add-int/lit8 v6, v6, 0x1

    goto :goto_aa

    .line 286
    :cond_f7
    if-eqz v13, :cond_163

    .line 287
    const/4 v6, 0x0

    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_163

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    aget-wide v21, v20, v6

    int-to-float v0, v13

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v24, v0

    aget-wide v24, v24, v6

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-wide v24, v24, v25

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    aput-wide v21, v20, v6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v6

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_160

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    aput-wide v21, v20, v6

    .line 287
    :cond_160
    add-int/lit8 v6, v6, 0x1

    goto :goto_fa

    .line 298
    :cond_163
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 300
    const/4 v6, 0x0

    :goto_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_1c0

    .line 301
    if-lez v6, :cond_19b

    .line 302
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :cond_19b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    aget v20, v20, v6

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v6

    const-wide/16 v22, 0x400

    mul-long v20, v20, v22

    const-wide/16 v22, 0x1000

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v6, v6, 0x1

    goto :goto_17c

    .line 311
    :cond_1c0
    mul-int v20, p1, p2

    mul-int/lit8 v20, v20, 0x4

    mul-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    div-int/lit16 v14, v0, 0x400

    .line 312
    .local v14, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e000b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 313
    .local v16, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e000a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 315
    .local v15, "reserve_abs":I
    if-ltz v15, :cond_1e3

    .line 316
    move v14, v15

    .line 319
    :cond_1e3
    if-eqz v16, :cond_1ea

    .line 320
    add-int v14, v14, v16

    .line 321
    if-gez v14, :cond_1ea

    .line 322
    const/4 v14, 0x0

    .line 327
    :cond_1ea
    if-eqz p3, :cond_214

    .line 328
    const-string v20, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v20, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string/jumbo v20, "sys.sysctl.extra_free_kbytes"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_214
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 336
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-wide v20, v20, v21

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-wide/from16 v20, v0

    sput-wide v20, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 339
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 570
    const/4 v1, 0x0

    .line 572
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_17
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    .line 573
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_44
    .catchall {:try_start_6 .. :try_end_d} :catchall_41

    .line 577
    if-eqz v2, :cond_47

    .line 579
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-object v1, v2

    .line 584
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_13
    :goto_13
    return-void

    .line 580
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v3

    move-object v1, v2

    .line 581
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_13

    .line 574
    :catch_17
    move-exception v0

    .line 575
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

    .line 577
    if-eqz v1, :cond_13

    .line 579
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_13

    .line 580
    :catch_36
    move-exception v3

    goto :goto_13

    .line 577
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v3

    :goto_39
    if-eqz v1, :cond_3e

    .line 579
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 581
    :cond_3e
    :goto_3e
    throw v3

    .line 580
    :catch_3f
    move-exception v4

    goto :goto_3e

    .line 577
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_41
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_39

    .line 574
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

    .line 235
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    .line 236
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 237
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 238
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    .line 239
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 240
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 243
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method decrementEmptyAppCount(II)I
    .registers 5
    .param p1, "empty"    # I
    .param p2, "cached"    # I

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 682
    .local v0, "ret":I
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    sub-int v0, p1, v1

    .line 684
    sget v1, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v0, v1, :cond_b

    .line 685
    sget v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 687
    :cond_b
    const/4 v1, 0x2

    if-le p2, v1, :cond_12

    .line 688
    add-int/lit8 v1, p2, -0x1

    sput v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 690
    :cond_12
    return v0
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .prologue
    .line 566
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .registers 7
    .param p1, "adjustment"    # I

    .prologue
    const-wide/16 v3, 0x400

    .line 553
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 554
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    .line 555
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 558
    :goto_13
    return-wide v1

    .line 553
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 558
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_13
.end method

.method public setTrimCachedApps(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 699
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 700
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 703
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 704
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 695
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 696
    return-void
.end method

.method public setTrimLowlTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 707
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 708
    return-void
.end method

.method public updateHiddenAppNum(III)I
    .registers 19
    .param p1, "maxEmptyApp"    # I
    .param p2, "curCached"    # I
    .param p3, "curEmpty"    # I

    .prologue
    .line 589
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    if-ge v9, v10, :cond_d0

    .line 590
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 598
    :goto_c
    move/from16 v3, p1

    .line 600
    .local v3, "ret":I
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v9, :cond_143

    .line 602
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 605
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v7

    .line 606
    .local v7, "szFreeMem":J
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v9

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    add-long v5, v9, v11

    .line 608
    .local v5, "szAvailableMem":J
    move/from16 v2, p1

    .line 609
    .local v2, "maxEmpty":I
    div-int/lit8 v9, v2, 0x2

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 611
    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    const/4 v10, 0x2

    if-ge v9, v10, :cond_39

    .line 612
    const/4 v9, 0x2

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 614
    :cond_39
    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    const/4 v10, 0x6

    if-le v9, v10, :cond_41

    .line 615
    const/4 v9, 0x6

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 618
    :cond_41
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_c8

    .line 619
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AvailableMem = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x400

    div-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB (Free: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB, Cached: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Threshold = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB [MaxHidden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/am/ProcessList;->mMaxCached:I

    add-int v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Hidden"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_c8
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_f9

    move v4, v3

    .line 676
    .end local v2    # "maxEmpty":I
    .end local v3    # "ret":I
    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    .local v4, "ret":I
    :goto_cf
    return v4

    .line 593
    .end local v4    # "ret":I
    :cond_d0
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 594
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_ee

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_dd
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 595
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_f3

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_ea
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto/16 :goto_c

    .line 594
    :cond_ee
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    goto :goto_dd

    .line 595
    :cond_f3
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_ea

    .line 630
    .restart local v2    # "maxEmpty":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_f9
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_10a

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_145

    :cond_10a
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v3, v9, :cond_145

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    if-le v3, v9, :cond_145

    .line 632
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    .line 633
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_143

    .line 634
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "maxEmpty":I
    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    :cond_143
    :goto_143
    move v4, v3

    .line 676
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_cf

    .line 638
    .end local v4    # "ret":I
    .restart local v2    # "maxEmpty":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_145
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_156

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_18c

    :cond_156
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-le v3, v9, :cond_18c

    .line 640
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    .line 641
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_143

    .line 642
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 647
    :cond_18c
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_202

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_202

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-ge v3, v9, :cond_202

    move/from16 v0, p3

    if-lt v0, v2, :cond_202

    .line 650
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    .line 651
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 652
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_1cc

    .line 653
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_1f7

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_1bd
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 654
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_1fc

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_1ca
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 656
    :cond_1cc
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_143

    .line 657
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    .line 653
    :cond_1f7
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_1bd

    .line 654
    :cond_1fc
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_1ca

    .line 661
    :cond_202
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_143

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_143

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-lt v3, v9, :cond_143

    sget v9, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    if-ge v3, v9, :cond_143

    move/from16 v0, p3

    if-lt v0, v2, :cond_143

    .line 664
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    .line 665
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 666
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_246

    .line 667
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_271

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_237
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 668
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_276

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_244
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 670
    :cond_246
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_143

    .line 671
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    .line 667
    :cond_271
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_237

    .line 668
    :cond_276
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_244
.end method
