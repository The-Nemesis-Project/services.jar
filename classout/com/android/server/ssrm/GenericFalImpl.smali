.class public Lcom/android/server/ssrm/GenericFalImpl;
.super Ljava/lang/Object;
.source "GenericFalImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/GenericFalImpl$1;,
        Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;,
        Lcom/android/server/ssrm/GenericFalImpl$PlatformType;,
        Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    }
.end annotation


# static fields
.field private static final ADONIS_GPU_TABLE:[I

.field private static CPUS_ONLINE_MAX_LIMIT_1:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_2:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_3:I = 0x0

.field private static final DEBUG:Z

.field private static final EXYNOS4_GPU_TABLE:[I

.field private static final HW_VENDOR:Ljava/lang/String;

.field private static final PEGA_BUS_TABLE:[I

.field private static final PEGA_PRIME_BUS_TABLE:[I

.field private static QC_GPU_TABLE:[I = null

.field private static SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath; = null

.field private static final TAG:Ljava/lang/String; = "SSRMv2:GenericFalImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static mDdrOppPath:Z

.field private static mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field private static mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field public static mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    .line 38
    sget-object v0, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    .line 52
    sput-object v2, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    .line 231
    sput-boolean v3, Lcom/android/server/ssrm/GenericFalImpl;->mDdrOppPath:Z

    .line 233
    sput-boolean v3, Lcom/android/server/ssrm/GenericFalImpl;->mApeOppPath:Z

    .line 431
    sput-object v2, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 470
    const/16 v0, 0x7fe

    sput v0, Lcom/android/server/ssrm/GenericFalImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    .line 472
    const/16 v0, 0x7fd

    sput v0, Lcom/android/server/ssrm/GenericFalImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    .line 474
    const/16 v0, 0x7fc

    sput v0, Lcom/android/server/ssrm/GenericFalImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    .line 478
    sput-object v2, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 546
    sput-object v2, Lcom/android/server/ssrm/GenericFalImpl;->QC_GPU_TABLE:[I

    .line 548
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->ADONIS_GPU_TABLE:[I

    .line 552
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->EXYNOS4_GPU_TABLE:[I

    .line 556
    new-array v0, v4, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    .line 560
    new-array v0, v4, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_BUS_TABLE:[I

    return-void

    .line 548
    :array_48
    .array-data 4
        0x214
        0x1e0
        0x15e
        0x10a
        0xb1
    .end array-data

    .line 552
    :array_56
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 556
    :array_62
    .array-data 4
        0x6b79c
        0x47964
        0x47938
        0x2b030
        0x23ecb
        0x1ae1e
    .end array-data

    .line 560
    :array_72
    .array-data 4
        0x61b48
        0x413c0
        0x41398
        0x271a0
        0x2080d
        0x18704
    .end array-data
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v1, "Combination"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 56
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    .line 73
    :goto_11
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "mPlatformInfo":Ljava/lang/String;
    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 75
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    .line 92
    :goto_23
    new-instance v1, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v3, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;Lcom/android/server/ssrm/GenericFalImpl$PlatformType;)V

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    .line 93
    return-void

    .line 57
    .end local v0    # "mPlatformInfo":Ljava/lang/String;
    :cond_2f
    const-string v1, "Strawberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 58
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->SLSI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_11

    .line 59
    :cond_3e
    const-string v1, "Tropical"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 60
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->TI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_11

    .line 61
    :cond_4d
    const-string v1, "Raspberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 62
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->RENESAS:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_11

    .line 63
    :cond_5c
    const-string v1, "Maple"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 64
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_11

    .line 65
    :cond_6b
    const-string v1, "IslandPunch"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 66
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->INTEL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_11

    .line 67
    :cond_7a
    const-string v1, "Blueberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 68
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->BROADCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_11

    .line 70
    :cond_89
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_11

    .line 76
    .restart local v0    # "mPlatformInfo":Ljava/lang/String;
    :cond_8e
    const-string v1, "msm8226"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 77
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto :goto_23

    .line 78
    :cond_9b
    const-string v1, "msm8974"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 79
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_23

    .line 80
    :cond_a9
    const-string v1, "ja"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 81
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_23

    .line 82
    :cond_b9
    const-string v1, "ha"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 83
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_23

    .line 84
    :cond_c9
    const-string v1, "exynos4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 85
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_23

    .line 86
    :cond_d7
    const-string v1, "mrvl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 87
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_23

    .line 89
    :cond_e5
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_23
.end method

.method private static acquirePerfCoreMaxLock(I)V
    .registers 5
    .param p0, "coreNum"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 481
    if-lt p0, v2, :cond_7

    const/4 v0, 0x4

    if-le p0, v0, :cond_8

    .line 512
    :cond_7
    :goto_7
    return-void

    .line 486
    :cond_8
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_1b

    .line 487
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 489
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 493
    :cond_1b
    packed-switch p0, :pswitch_data_6e

    goto :goto_7

    .line 505
    :pswitch_1f
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 507
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/GenericFalImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    .line 495
    :pswitch_39
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 497
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/GenericFalImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    .line 500
    :pswitch_53
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 502
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/GenericFalImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_7

    .line 493
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_53
        :pswitch_39
    .end packed-switch
.end method

.method private static acquirePerfCoreMinLock(I)V
    .registers 5
    .param p0, "coreNum"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 434
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/4 v0, 0x4

    if-le p0, v0, :cond_9

    .line 468
    :cond_8
    :goto_8
    return-void

    .line 439
    :cond_9
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_1c

    .line 440
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 442
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 446
    :cond_1c
    packed-switch p0, :pswitch_data_6c

    goto :goto_8

    .line 460
    :pswitch_20
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 462
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_76

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_8

    .line 448
    :pswitch_39
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 450
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_7e

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_8

    .line 454
    :pswitch_52
    const-string v0, "SSRMv2:GenericFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 456
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_86

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_8

    .line 446
    nop

    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_20
        :pswitch_52
        :pswitch_39
    .end packed-switch

    .line 462
    :array_76
    .array-data 4
        0x702
        0x100
    .end array-data

    .line 450
    :array_7e
    .array-data 4
        0x704
        0x100
    .end array-data

    .line 456
    :array_86
    .array-data 4
        0x703
        0x100
    .end array-data
.end method

.method private static adjustValueToSysfsValue(II)I
    .registers 7
    .param p0, "type"    # I
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 400
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v1, v2, :cond_14

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v1, v2, :cond_14

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v1, v2, :cond_30

    .line 402
    :cond_14
    if-eq p0, v3, :cond_18

    if-ne p0, v4, :cond_1d

    .line 404
    :cond_18
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->QC_GPU_TABLE:[I

    if-nez v1, :cond_1f

    .line 405
    const/4 p1, 0x0

    :cond_1d
    :goto_1d
    move v0, p1

    .line 428
    :cond_1e
    return v0

    .line 407
    :cond_1f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->QC_GPU_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 408
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->QC_GPU_TABLE:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_1e

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 412
    :cond_2e
    const/4 p1, 0x0

    goto :goto_1d

    .line 415
    .end local v0    # "i":I
    :cond_30
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v1, v2, :cond_1d

    .line 416
    if-eq p0, v3, :cond_3a

    if-ne p0, v4, :cond_1d

    .line 418
    :cond_3a
    sparse-switch p1, :sswitch_data_40

    goto :goto_1d

    .line 421
    :sswitch_3e
    const/4 p1, 0x0

    .line 422
    goto :goto_1d

    .line 418
    :sswitch_data_40
    .sparse-switch
        -0x1 -> :sswitch_3e
        0x214 -> :sswitch_3e
    .end sparse-switch
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 638
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "filePtr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static isPegaPrime()Z
    .registers 13

    .prologue
    .line 611
    const-string v0, "/sys/devices/system/cpu/busfreq/curr_freq"

    .line 612
    .local v0, "BUS_FREQ_PATH":Ljava/lang/String;
    const/4 v2, 0x0

    .line 613
    .local v2, "buf":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 615
    .local v8, "result":Ljava/lang/String;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_3e
    .catchall {:try_start_5 .. :try_end_f} :catchall_7f

    .line 616
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v3, "buf":Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_cb
    .catchall {:try_start_f .. :try_end_12} :catchall_c8

    move-result-object v8

    .line 621
    if-eqz v3, :cond_18

    .line 622
    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_a9

    :cond_18
    :goto_18
    move-object v2, v3

    .line 629
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :cond_19
    :goto_19
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1d
    if-ge v6, v7, :cond_89

    aget v5, v1, v6

    .line 630
    .local v5, "freq":I
    if-eqz v8, :cond_86

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 631
    const/4 v9, 0x1

    .line 634
    .end local v5    # "freq":I
    :goto_3d
    return v9

    .line 617
    .end local v1    # "arr$":[I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_3e
    move-exception v4

    .line 618
    .local v4, "e":Ljava/lang/Exception;
    :goto_3f
    :try_start_3f
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_7f

    .line 621
    if-eqz v2, :cond_19

    .line 622
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_19

    .line 624
    :catch_61
    move-exception v4

    .line 625
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 620
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_7f
    move-exception v9

    .line 621
    :goto_80
    if-eqz v2, :cond_85

    .line 622
    :try_start_82
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_8b

    .line 620
    :cond_85
    :goto_85
    throw v9

    .line 629
    .restart local v1    # "arr$":[I
    .restart local v5    # "freq":I
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_86
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 634
    .end local v5    # "freq":I
    :cond_89
    const/4 v9, 0x0

    goto :goto_3d

    .line 624
    .end local v1    # "arr$":[I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_8b
    move-exception v4

    .line 625
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "SSRMv2:GenericFalImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isPegaPrime:: e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 624
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_a9
    move-exception v4

    .line 625
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 620
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_c8
    move-exception v9

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_80

    .line 617
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_cb
    move-exception v4

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_3f
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 647
    sget-boolean v0, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 648
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_7
    return-void
.end method

.method private parseCpuCoreTable()[I
    .registers 14

    .prologue
    .line 692
    const-string v9, "SSRMv2:GenericFalImpl"

    const-string v10, "parseCpuCoreTable"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v7, 0x0

    .line 694
    .local v7, "supportedCpuCore":[I
    const/4 v0, 0x0

    .line 696
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_9
    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 697
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v10, v10, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_dc
    .catchall {:try_start_9 .. :try_end_21} :catchall_124

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 699
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_22
    if-nez v0, :cond_2b

    .line 774
    if-eqz v0, :cond_29

    .line 775
    :try_start_26
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_149

    :cond_29
    :goto_29
    move-object v8, v7

    .line 781
    .end local v7    # "supportedCpuCore":[I
    .local v8, "supportedCpuCore":[I
    :goto_2a
    return-object v8

    .line 703
    .end local v8    # "supportedCpuCore":[I
    .restart local v7    # "supportedCpuCore":[I
    :cond_2b
    :try_start_2b
    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v10, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v9, v10, :cond_67

    .line 704
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 705
    .local v5, "strSupportedCpuCore":[Ljava/lang/String;
    array-length v9, v5

    new-array v7, v9, [I

    .line 706
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    array-length v9, v5

    if-ge v3, v9, :cond_7b

    .line 707
    aget-object v9, v5, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v3

    .line 708
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseCpuCoreTable:: supportedCpuCore = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v7, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 710
    .end local v3    # "i":I
    .end local v5    # "strSupportedCpuCore":[Ljava/lang/String;
    :cond_67
    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v10, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    if-ne v9, v10, :cond_a0

    .line 711
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 712
    .local v6, "strSupportedCpuCoreNum":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_74} :catch_dc
    .catchall {:try_start_2b .. :try_end_74} :catchall_124

    move-result v9

    add-int/lit8 v4, v9, 0x1

    .line 713
    .local v4, "numOfCpuCore":I
    packed-switch v4, :pswitch_data_184

    .line 735
    const/4 v7, 0x0

    .line 774
    .end local v4    # "numOfCpuCore":I
    .end local v6    # "strSupportedCpuCoreNum":Ljava/lang/String;
    :cond_7b
    :goto_7b
    if-eqz v0, :cond_80

    .line 775
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_168

    :cond_80
    :goto_80
    move-object v8, v7

    .line 781
    .end local v7    # "supportedCpuCore":[I
    .restart local v8    # "supportedCpuCore":[I
    goto :goto_2a

    .line 715
    .end local v8    # "supportedCpuCore":[I
    .restart local v4    # "numOfCpuCore":I
    .restart local v6    # "strSupportedCpuCoreNum":Ljava/lang/String;
    .restart local v7    # "supportedCpuCore":[I
    :pswitch_82
    const/4 v9, 0x1

    :try_start_83
    new-array v8, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    .end local v7    # "supportedCpuCore":[I
    .restart local v8    # "supportedCpuCore":[I
    move-object v7, v8

    .line 718
    .end local v8    # "supportedCpuCore":[I
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 720
    :pswitch_8b
    const/4 v9, 0x2

    new-array v7, v9, [I

    .end local v7    # "supportedCpuCore":[I
    fill-array-data v7, :array_190

    .line 723
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 725
    :pswitch_92
    const/4 v9, 0x3

    new-array v7, v9, [I

    .end local v7    # "supportedCpuCore":[I
    fill-array-data v7, :array_198

    .line 728
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 730
    :pswitch_99
    const/4 v9, 0x4

    new-array v7, v9, [I

    .end local v7    # "supportedCpuCore":[I
    fill-array-data v7, :array_1a2

    .line 733
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 738
    .end local v4    # "numOfCpuCore":I
    .end local v6    # "strSupportedCpuCoreNum":Ljava/lang/String;
    :cond_a0
    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v10, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v9, v10, :cond_7b

    .line 739
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 740
    .local v6, "strSupportedCpuCoreNum":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v4, v9, 0x1

    .line 741
    .restart local v4    # "numOfCpuCore":I
    packed-switch v4, :pswitch_data_1ae

    .line 763
    const/4 v7, 0x0

    goto :goto_7b

    .line 743
    :pswitch_be
    const/4 v9, 0x1

    new-array v8, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    .end local v7    # "supportedCpuCore":[I
    .restart local v8    # "supportedCpuCore":[I
    move-object v7, v8

    .line 746
    .end local v8    # "supportedCpuCore":[I
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 748
    :pswitch_c7
    const/4 v9, 0x2

    new-array v7, v9, [I

    .end local v7    # "supportedCpuCore":[I
    fill-array-data v7, :array_1ba

    .line 751
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 753
    :pswitch_ce
    const/4 v9, 0x3

    new-array v7, v9, [I

    .end local v7    # "supportedCpuCore":[I
    fill-array-data v7, :array_1c2

    .line 756
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 758
    :pswitch_d5
    const/4 v9, 0x4

    new-array v7, v9, [I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_d8} :catch_dc
    .catchall {:try_start_83 .. :try_end_d8} :catchall_124

    .end local v7    # "supportedCpuCore":[I
    fill-array-data v7, :array_1cc

    .line 761
    .restart local v7    # "supportedCpuCore":[I
    goto :goto_7b

    .line 767
    .end local v4    # "numOfCpuCore":I
    .end local v6    # "strSupportedCpuCoreNum":[Ljava/lang/String;
    :catch_dc
    move-exception v2

    .line 768
    .local v2, "e":Ljava/lang/Exception;
    :try_start_dd
    sget-boolean v9, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v9, :cond_fd

    .line 769
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseCpuCoreTable:: failed by Exception, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_dd .. :try_end_fd} :catchall_124

    .line 771
    :cond_fd
    const/4 v7, 0x0

    .line 774
    if-eqz v0, :cond_80

    .line 775
    :try_start_100
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_105

    goto/16 :goto_80

    .line 777
    :catch_105
    move-exception v2

    .line 778
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_11f
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 773
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_124
    move-exception v9

    .line 774
    if-eqz v0, :cond_12a

    .line 775
    :try_start_127
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_12b

    .line 773
    :cond_12a
    :goto_12a
    throw v9

    .line 777
    :catch_12b
    move-exception v2

    .line 778
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SSRMv2:GenericFalImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 777
    .end local v2    # "e":Ljava/io/IOException;
    :catch_149
    move-exception v2

    .line 778
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 777
    .end local v2    # "e":Ljava/io/IOException;
    :catch_168
    move-exception v2

    .line 778
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_11f

    .line 713
    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_82
        :pswitch_8b
        :pswitch_92
        :pswitch_99
    .end packed-switch

    .line 720
    :array_190
    .array-data 4
        0x2
        0x1
    .end array-data

    .line 725
    :array_198
    .array-data 4
        0x3
        0x2
        0x1
    .end array-data

    .line 730
    :array_1a2
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data

    .line 741
    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_be
        :pswitch_c7
        :pswitch_ce
        :pswitch_d5
    .end packed-switch

    .line 748
    :array_1ba
    .array-data 4
        0x2
        0x1
    .end array-data

    .line 753
    :array_1c2
    .array-data 4
        0x3
        0x2
        0x1
    .end array-data

    .line 758
    :array_1cc
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data
.end method

.method private parseGpuFreqTable()[I
    .registers 13

    .prologue
    .line 785
    const-string v8, "SSRMv2:GenericFalImpl"

    const-string v9, "parseGpuFreqTable"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v6, 0x0

    .line 787
    .local v6, "supportedFrequency":[I
    const/4 v4, 0x0

    .line 788
    .local v4, "realArraySize":I
    const/4 v0, 0x0

    .line 790
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_a
    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 791
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_a7
    .catchall {:try_start_a .. :try_end_22} :catchall_10c

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 793
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_23
    if-nez v0, :cond_2c

    .line 833
    if-eqz v0, :cond_2a

    .line 834
    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_14c

    :cond_2a
    :goto_2a
    move-object v7, v6

    .line 840
    .end local v6    # "supportedFrequency":[I
    .local v7, "supportedFrequency":[I
    :goto_2b
    return-object v7

    .line 796
    .end local v7    # "supportedFrequency":[I
    .restart local v6    # "supportedFrequency":[I
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, "strSupportedFreq":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    array-length v8, v5

    if-ge v3, v8, :cond_47

    .line 798
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_44

    .line 799
    add-int/lit8 v4, v4, 0x1

    .line 797
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 802
    :cond_47
    array-length v8, v5

    if-eq v4, v8, :cond_6a

    .line 803
    const/4 v3, 0x0

    :goto_4b
    array-length v8, v5

    if-ge v3, v8, :cond_6a

    .line 804
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_67

    add-int/lit8 v8, v3, 0x1

    array-length v9, v5

    if-ge v8, v9, :cond_67

    .line 805
    add-int/lit8 v8, v3, 0x1

    aget-object v8, v5, v8

    aput-object v8, v5, v3

    .line 806
    add-int/lit8 v8, v3, 0x1

    const-string v9, ""

    aput-object v9, v5, v8

    .line 803
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 811
    :cond_6a
    new-array v6, v4, [I

    .line 812
    const/4 v3, 0x0

    :goto_6d
    if-ge v3, v4, :cond_d1

    .line 813
    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v8, v9, :cond_9e

    .line 814
    sub-int v8, v4, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v3

    .line 819
    :goto_81
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: supportedFrequency = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 817
    :cond_9e
    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v3
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_a6} :catch_a7
    .catchall {:try_start_2c .. :try_end_a6} :catchall_10c

    goto :goto_81

    .line 826
    .end local v3    # "i":I
    .end local v5    # "strSupportedFreq":[Ljava/lang/String;
    :catch_a7
    move-exception v2

    .line 827
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a8
    sget-boolean v8, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v8, :cond_c8

    .line 828
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by Exception, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_a8 .. :try_end_c8} :catchall_10c

    .line 830
    :cond_c8
    const/4 v6, 0x0

    .line 833
    if-eqz v0, :cond_ce

    .line 834
    :try_start_cb
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_131

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_ce
    :goto_ce
    move-object v7, v6

    .line 840
    .end local v6    # "supportedFrequency":[I
    .restart local v7    # "supportedFrequency":[I
    goto/16 :goto_2b

    .line 821
    .end local v7    # "supportedFrequency":[I
    .restart local v3    # "i":I
    .restart local v5    # "strSupportedFreq":[Ljava/lang/String;
    .restart local v6    # "supportedFrequency":[I
    :cond_d1
    :try_start_d1
    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v8, v9, :cond_e3

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v8, v9, :cond_e3

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v8, v9, :cond_e8

    .line 823
    :cond_e3
    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    array-length v9, v6

    iput v9, v8, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e8} :catch_a7
    .catchall {:try_start_d1 .. :try_end_e8} :catchall_10c

    .line 833
    :cond_e8
    if-eqz v0, :cond_ce

    .line 834
    :try_start_ea
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_ce

    .line 836
    :catch_ee
    move-exception v2

    .line 837
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v3    # "i":I
    .end local v5    # "strSupportedFreq":[Ljava/lang/String;
    :goto_108
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 832
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_10c
    move-exception v8

    .line 833
    if-eqz v0, :cond_112

    .line 834
    :try_start_10f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_113

    .line 832
    :cond_112
    :goto_112
    throw v8

    .line 836
    :catch_113
    move-exception v2

    .line 837
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 836
    .local v2, "e":Ljava/lang/Exception;
    :catch_131
    move-exception v2

    .line 837
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_108

    .line 836
    .end local v2    # "e":Ljava/io/IOException;
    :catch_14c
    move-exception v2

    .line 837
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a
.end method

.method private parseSystemBusTable()[I
    .registers 12

    .prologue
    .line 653
    const-string v7, "SSRMv2:GenericFalImpl"

    const-string v8, "parseSystemBusTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v5, 0x0

    .line 655
    .local v5, "supportedFrequency":[I
    const/4 v0, 0x0

    .line 657
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_9
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 658
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_74
    .catchall {:try_start_9 .. :try_end_21} :catchall_9d

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 660
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_22
    if-nez v0, :cond_2b

    .line 681
    if-eqz v0, :cond_29

    .line 682
    :try_start_26
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_e0

    :cond_29
    :goto_29
    move-object v6, v5

    .line 688
    .end local v5    # "supportedFrequency":[I
    .local v6, "supportedFrequency":[I
    :goto_2a
    return-object v6

    .line 663
    .end local v6    # "supportedFrequency":[I
    .restart local v5    # "supportedFrequency":[I
    :cond_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "strSupportedFreq":[Ljava/lang/String;
    array-length v7, v4

    new-array v5, v7, [I

    .line 665
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    array-length v7, v4

    if-ge v3, v7, :cond_ff

    .line 666
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v7, v8, :cond_6b

    .line 667
    array-length v7, v4

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v3

    .line 672
    :goto_4e
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 670
    :cond_6b
    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v3
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_73} :catch_74
    .catchall {:try_start_2b .. :try_end_73} :catchall_9d

    goto :goto_4e

    .line 674
    .end local v3    # "i":I
    .end local v4    # "strSupportedFreq":[Ljava/lang/String;
    :catch_74
    move-exception v2

    .line 675
    .local v2, "e":Ljava/lang/Exception;
    :try_start_75
    sget-boolean v7, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v7, :cond_95

    .line 676
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_75 .. :try_end_95} :catchall_9d

    .line 678
    :cond_95
    const/4 v5, 0x0

    .line 681
    if-eqz v0, :cond_9b

    .line 682
    :try_start_98
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_c2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9b
    :goto_9b
    move-object v6, v5

    .line 688
    .end local v5    # "supportedFrequency":[I
    .restart local v6    # "supportedFrequency":[I
    goto :goto_2a

    .line 680
    .end local v6    # "supportedFrequency":[I
    .restart local v5    # "supportedFrequency":[I
    :catchall_9d
    move-exception v7

    .line 681
    if-eqz v0, :cond_a3

    .line 682
    :try_start_a0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    .line 680
    :cond_a3
    :goto_a3
    throw v7

    .line 684
    :catch_a4
    move-exception v2

    .line 685
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 684
    .local v2, "e":Ljava/lang/Exception;
    :catch_c2
    move-exception v2

    .line 685
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_dc
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 684
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e0
    move-exception v2

    .line 685
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 681
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "strSupportedFreq":[Ljava/lang/String;
    :cond_ff
    if-eqz v0, :cond_9b

    .line 682
    :try_start_101
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_9b

    .line 684
    :catch_105
    move-exception v2

    .line 685
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_dc
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 516
    packed-switch p1, :pswitch_data_52

    .line 540
    :cond_3
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 519
    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    if-ne v0, v1, :cond_d

    .line 520
    const/4 v0, 0x1

    goto :goto_4

    .line 521
    :cond_d
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_3

    .line 522
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 526
    :pswitch_1c
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 528
    :pswitch_25
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 530
    :pswitch_2e
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 532
    :pswitch_37
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 534
    :pswitch_40
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 536
    :pswitch_49
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 516
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_3
        :pswitch_25
        :pswitch_2e
        :pswitch_37
        :pswitch_40
        :pswitch_49
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 566
    packed-switch p1, :pswitch_data_84

    .line 607
    :cond_3
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 569
    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_e

    .line 570
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->ADONIS_GPU_TABLE:[I

    goto :goto_4

    .line 571
    :cond_e
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_17

    .line 572
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->EXYNOS4_GPU_TABLE:[I

    goto :goto_4

    .line 573
    :cond_17
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_29

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_29

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_32

    .line 576
    :cond_29
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->QC_GPU_TABLE:[I

    .line 577
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->QC_GPU_TABLE:[I

    goto :goto_4

    .line 578
    :cond_32
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_3e

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_3

    .line 580
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    goto :goto_4

    .line 585
    :pswitch_43
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    if-eq v0, v1, :cond_55

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_55

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_3

    .line 587
    :cond_55
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_4

    .line 592
    :pswitch_5a
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6c

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6c

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_71

    .line 595
    :cond_6c
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_4

    .line 596
    :cond_71
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_3

    .line 597
    invoke-static {}, Lcom/android/server/ssrm/GenericFalImpl;->isPegaPrime()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 598
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    goto :goto_4

    .line 600
    :cond_80
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_BUS_TABLE:[I

    goto :goto_4

    .line 566
    nop

    :pswitch_data_84
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5a
        :pswitch_5a
        :pswitch_3
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .registers 12
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 324
    const/4 v4, 0x0

    .line 325
    .local v4, "successFlag":Z
    const/4 v1, 0x0

    .line 326
    .local v1, "filePtr":Ljava/io/File;
    packed-switch p1, :pswitch_data_156

    .line 365
    :pswitch_6
    const/4 v4, 0x0

    move v5, v4

    .line 396
    :goto_8
    return v5

    .line 328
    :pswitch_9
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    if-ne v6, v7, :cond_13

    .line 329
    invoke-static {p2}, Lcom/android/server/ssrm/GenericFalImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_8

    .line 331
    :cond_13
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v5, v6, :cond_22

    .line 332
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .restart local v1    # "filePtr":Ljava/io/File;
    :cond_22
    :goto_22
    invoke-static {p1, p2}, Lcom/android/server/ssrm/GenericFalImpl;->adjustValueToSysfsValue(II)I

    move-result p2

    .line 370
    if-eqz v1, :cond_4e

    .line 371
    const-string v5, "SSRMv2:GenericFalImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_4e
    if-eqz v1, :cond_69

    .line 377
    const/4 v2, 0x0

    .line 379
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_51
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_c7
    .catchall {:try_start_51 .. :try_end_56} :catchall_10e

    .line 380
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_56
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_63} :catch_151
    .catchall {:try_start_56 .. :try_end_63} :catchall_14e

    .line 381
    const/4 v4, 0x1

    .line 388
    if-eqz v3, :cond_69

    .line 389
    :try_start_66
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_133

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_69
    :goto_69
    move v5, v4

    .line 396
    goto :goto_8

    .line 336
    :pswitch_6b
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    if-ne v6, v7, :cond_22

    .line 337
    invoke-static {p2}, Lcom/android/server/ssrm/GenericFalImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_8

    .line 342
    :pswitch_75
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_22

    .line 345
    :pswitch_7f
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_22

    .line 348
    :pswitch_89
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_22

    .line 351
    :pswitch_93
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_22

    .line 354
    :pswitch_9d
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v1    # "filePtr":Ljava/io/File;
    goto/16 :goto_22

    .line 357
    :pswitch_a8
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .restart local v1    # "filePtr":Ljava/io/File;
    const/16 v5, 0x28

    if-eq p2, v5, :cond_bd

    const/16 v5, 0x33

    if-eq p2, v5, :cond_bd

    const/16 v5, 0x32

    if-ne p2, v5, :cond_c0

    .line 359
    :cond_bd
    const/4 p2, 0x1

    goto/16 :goto_22

    .line 360
    :cond_c0
    const/16 v5, 0x3c

    if-ne p2, v5, :cond_22

    .line 361
    const/4 p2, 0x0

    goto/16 :goto_22

    .line 382
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_c7
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    :goto_c8
    :try_start_c8
    sget-boolean v5, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v5, :cond_e8

    .line 384
    const-string v5, "SSRMv2:GenericFalImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_c8 .. :try_end_e8} :catchall_10e

    .line 388
    :cond_e8
    if-eqz v2, :cond_69

    .line 389
    :try_start_ea
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ef

    goto/16 :goto_69

    .line 391
    :catch_ef
    move-exception v0

    .line 392
    const-string v5, "SSRMv2:GenericFalImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_109
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_10e
    move-exception v5

    .line 388
    :goto_10f
    if-eqz v2, :cond_114

    .line 389
    :try_start_111
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115

    .line 387
    :cond_114
    :goto_114
    throw v5

    .line 391
    :catch_115
    move-exception v0

    .line 392
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 391
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_133
    move-exception v0

    .line 392
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "SSRMv2:GenericFalImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_109

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_14e
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_10f

    .line 382
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_151
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_c8

    .line 326
    nop

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6
        :pswitch_7f
        :pswitch_89
        :pswitch_93
        :pswitch_9d
        :pswitch_a8
        :pswitch_9
        :pswitch_6b
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .registers 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 237
    const/4 v5, 0x0

    .line 238
    .local v5, "successFlag":Z
    const/4 v1, 0x0

    .line 239
    .local v1, "filePtr":Ljava/io/File;
    const/4 v4, -0x1

    .line 241
    .local v4, "revertValue":I
    packed-switch p1, :pswitch_data_16c

    .line 288
    :pswitch_8
    const/4 v5, 0x0

    move v6, v5

    .line 316
    :goto_a
    return v6

    .line 243
    :pswitch_b
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    if-ne v7, v8, :cond_1d

    .line 244
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_30

    .line 245
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 246
    sput-object v9, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_a

    .line 249
    :cond_1d
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v6, v7, :cond_30

    .line 250
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 291
    :cond_30
    :goto_30
    if-eqz v1, :cond_58

    .line 292
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", revertValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_58
    if-eqz v1, :cond_73

    .line 297
    const/4 v2, 0x0

    .line 299
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_5b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_de
    .catchall {:try_start_5b .. :try_end_60} :catchall_125

    .line 300
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_60
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6d} :catch_168
    .catchall {:try_start_60 .. :try_end_6d} :catchall_165

    .line 301
    const/4 v5, 0x1

    .line 308
    if-eqz v3, :cond_73

    .line 309
    :try_start_70
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_14a

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_73
    :goto_73
    move v6, v5

    .line 316
    goto :goto_a

    .line 255
    :pswitch_75
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    if-ne v7, v8, :cond_30

    .line 256
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_30

    .line 257
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 258
    sput-object v9, Lcom/android/server/ssrm/GenericFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_a

    .line 264
    :pswitch_87
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 266
    goto :goto_30

    .line 268
    :pswitch_95
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 270
    goto :goto_30

    .line 272
    :pswitch_a3
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 274
    goto :goto_30

    .line 276
    :pswitch_b1
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 278
    goto/16 :goto_30

    .line 280
    :pswitch_c0
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 282
    goto/16 :goto_30

    .line 284
    :pswitch_cf
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 286
    goto/16 :goto_30

    .line 302
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_de
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/IOException;
    :goto_df
    :try_start_df
    sget-boolean v6, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v6, :cond_ff

    .line 304
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_df .. :try_end_ff} :catchall_125

    .line 308
    :cond_ff
    if-eqz v2, :cond_73

    .line 309
    :try_start_101
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_106

    goto/16 :goto_73

    .line 311
    :catch_106
    move-exception v0

    .line 312
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_120
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_125
    move-exception v6

    .line 308
    :goto_126
    if-eqz v2, :cond_12b

    .line 309
    :try_start_128
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_12c

    .line 307
    :cond_12b
    :goto_12b
    throw v6

    .line 311
    :catch_12c
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_14a
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_120

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_165
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_126

    .line 302
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_168
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_df

    .line 241
    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_87
        :pswitch_8
        :pswitch_95
        :pswitch_a3
        :pswitch_b1
        :pswitch_c0
        :pswitch_cf
        :pswitch_b
        :pswitch_75
    .end packed-switch
.end method
