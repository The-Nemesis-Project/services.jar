.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    }
.end annotation


# static fields
.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field static final DEBUG:Z

.field private static final IS_TYPE_MRVL:Z

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object;

.field private static final SYSBUS_LOCK:Ljava/lang/Object;

.field static final TAG:Ljava/lang/String; = "SSRMv2:CustomFrequencyManagerService"

.field private static countOfSysBusLock:I

.field public static mContext:Landroid/content/Context;

.field static mContextStatic:Landroid/content/Context;

.field private static final mDebugDVFSLock:Z

.field private static final mSpew:Z


# instance fields
.field private final MMC_BURST_PATH:Ljava/lang/String;

.field private final MMC_CBURST_MODE_VALUE:I

.field private final MMC_NORMAL_MODE_VALUE:I

.field final PATH_CPU_MAX_LIMIT:Ljava/lang/String;

.field final PATH_CPU_MIN_LIMIT:Ljava/lang/String;

.field final UTF8:Ljava/lang/String;

.field private filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

.field mActivityManager:Landroid/app/IActivityManager;

.field mBootComplete:Z

.field mCpuCorePath:Z

.field private mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private final mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

.field mDisableBusBoost:Z

.field mDisableCpuBoost:Z

.field mDisableGpuBoost:Z

.field private final mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

.field mGpuPath:Z

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

.field mMonitor:Lcom/android/server/ssrm/Monitor;

.field private volatile mPersistentDVFSLocksInfo:I

.field mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

.field mScreenOn:Z

.field private mSupportedCPUCore:[I

.field private mSupportedFrequency:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedLCDFrequency:[I

.field private mSupportedSysBusFrequency:[I

.field mSysBusPath:Z

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

.field mUserPresent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    .line 69
    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 71
    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 123
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    .line 125
    const-string v0, "mrvl"

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    .line 1525
    const-string v0, "android_ssrm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 143
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 61
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->UTF8:Ljava/lang/String;

    .line 63
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 65
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 67
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    .line 73
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 75
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    .line 77
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 85
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    .line 87
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 89
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 91
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 93
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 95
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 97
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 101
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    .line 103
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 105
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 107
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    .line 109
    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 111
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    .line 128
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    .line 130
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    .line 132
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    .line 134
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 136
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 138
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 140
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1124
    const-string v4, "/sys/block/mmcblk0/bkops_en"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_BURST_PATH:Ljava/lang/String;

    .line 1126
    const/16 v4, 0x80

    iput v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_CBURST_MODE_VALUE:I

    .line 1128
    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_NORMAL_MODE_VALUE:I

    .line 2166
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 2168
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 2170
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 2172
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 2174
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 2176
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2222
    const-string v4, "/sys/power/cpufreq_max_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MAX_LIMIT:Ljava/lang/String;

    .line 2224
    const-string v4, "/sys/power/cpufreq_min_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MIN_LIMIT:Ljava/lang/String;

    .line 144
    sput-object p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 145
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    sput-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 148
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initFal()V

    .line 149
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysfsNode()V

    .line 150
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 151
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 152
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedCPUCore()V

    .line 153
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    .line 154
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedFrequency()V

    .line 155
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedLCDFreq()V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiver()V

    .line 159
    const-string v2, "/data/system/ssrm_v2.disable_cpu_boost"

    .line 160
    .local v2, "PATH_TO_DISABLE_CPU_BOOST":Ljava/lang/String;
    const-string v3, "/data/system/ssrm_v2.disable_gpu_boost"

    .line 161
    .local v3, "PATH_TO_DISABLE_GPU_BOOST":Ljava/lang/String;
    const-string v1, "/data/system/ssrm_v2.disable_bus_boost"

    .line 162
    .local v1, "PATH_TO_DISABLE_BUS_BOOST":Ljava/lang/String;
    const-string v0, "/data/system/ssrm_v2.disable_all_boost"

    .line 164
    .local v0, "PATH_TO_DISABLE_ALL_BOOST":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_cpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 165
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 167
    :cond_aa
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_gpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 168
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 170
    :cond_b9
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_bus_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 171
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 173
    :cond_c8
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_all_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 174
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 175
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 176
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 179
    :cond_db
    new-instance v4, Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {v4}, Lcom/android/server/ssrm/PreMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 180
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/PreMonitor;->initialize(Landroid/content/Context;)V

    .line 181
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4}, Lcom/android/server/ssrm/PreMonitor;->run()V

    .line 182
    return-void
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 2053
    packed-switch p0, :pswitch_data_c

    .line 2059
    const-string v0, "???"

    :goto_5
    return-object v0

    .line 2055
    :pswitch_6
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_5

    .line 2057
    :pswitch_9
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_5

    .line 2053
    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method private checkSysfsNode()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 198
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    .line 200
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 201
    return-void
.end method

.method private initFal()V
    .registers 3

    .prologue
    .line 185
    const-string v0, "Combination"

    sget-object v1, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 186
    new-instance v0, Lcom/android/server/ssrm/QcFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/QcFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    .line 192
    :goto_11
    return-void

    .line 187
    :cond_12
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_20

    .line 188
    new-instance v0, Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/MarvellFALImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_11

    .line 190
    :cond_20
    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/GenericFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_11
.end method

.method private initSupportedCPUCore()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    if-eqz v0, :cond_5

    .line 239
    :goto_4
    return-void

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    goto :goto_4
.end method

.method private initSupportedFrequency()V
    .registers 21

    .prologue
    .line 1529
    const-string v17, "SSRMv2:CustomFrequencyManagerService"

    const-string v18, "initSupportedFrequency::"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v7, 0x0

    .line 1532
    .local v7, "buf":Ljava/io/BufferedReader;
    const-string v2, "/sys/power/cpufreq_table"

    .line 1533
    .local v2, "CPU_FREQ_TABLE_PATH":Ljava/lang/String;
    const-string v3, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    .line 1534
    .local v3, "CPU_FREQ_TABLE_PATH_ADONIS":Ljava/lang/String;
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    .line 1535
    .local v4, "CPU_FREQ_TABLE_PATH_MARVELL":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v17, "/sys/power/cpufreq_table"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v5, "a":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1537
    .local v6, "b":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1538
    .local v9, "c":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_71

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_71

    const/4 v12, 0x1

    .line 1539
    .local v12, "isCpuFreqTablePathExist":Z
    :goto_36
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_73

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_73

    const/4 v13, 0x1

    .line 1540
    .local v13, "isCpuFreqTablePathForAdonisExist":Z
    :goto_43
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_75

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_75

    const/4 v14, 0x1

    .line 1542
    .local v14, "isCpuFreqTablePathForMarvellExist":Z
    :goto_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_70

    .line 1544
    if-eqz v12, :cond_77

    .line 1545
    :try_start_5a
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/power/cpufreq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_68} :catch_11c
    .catchall {:try_start_5a .. :try_end_68} :catchall_132

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .local v8, "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 1552
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    :cond_69
    :goto_69
    if-nez v7, :cond_9b

    .line 1578
    if-eqz v7, :cond_70

    .line 1579
    :try_start_6d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_13e

    .line 1586
    :cond_70
    :goto_70
    return-void

    .line 1538
    .end local v12    # "isCpuFreqTablePathExist":Z
    .end local v13    # "isCpuFreqTablePathForAdonisExist":Z
    .end local v14    # "isCpuFreqTablePathForMarvellExist":Z
    :cond_71
    const/4 v12, 0x0

    goto :goto_36

    .line 1539
    .restart local v12    # "isCpuFreqTablePathExist":Z
    :cond_73
    const/4 v13, 0x0

    goto :goto_43

    .line 1540
    .restart local v13    # "isCpuFreqTablePathForAdonisExist":Z
    :cond_75
    const/4 v14, 0x0

    goto :goto_50

    .line 1546
    .restart local v14    # "isCpuFreqTablePathForMarvellExist":Z
    :cond_77
    if-eqz v13, :cond_89

    .line 1547
    :try_start_79
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_69

    .line 1548
    :cond_89
    if-eqz v14, :cond_69

    .line 1549
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_69

    .line 1556
    :cond_9b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_9e} :catch_11c
    .catchall {:try_start_79 .. :try_end_9e} :catchall_132

    move-result-object v15

    .line 1557
    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_ac

    .line 1578
    if-eqz v7, :cond_70

    .line 1579
    :try_start_a3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_70

    .line 1581
    :catch_a7
    move-exception v10

    .line 1582
    .end local v15    # "line":Ljava/lang/String;
    .local v10, "e":Ljava/io/IOException;
    :goto_a8
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70

    .line 1560
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_ac
    :try_start_ac
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1561
    .local v16, "strSupportedFreq":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    .line 1563
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_141

    .line 1564
    sget-boolean v17, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v17, :cond_10d

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11

    .line 1570
    :goto_ea
    const-string v17, "SSRMv2:CustomFrequencyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "initSupportedFrequency:: mSupportedFrequency = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v19, v0

    aget v19, v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    add-int/lit8 v11, v11, 0x1

    goto :goto_c6

    .line 1568
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    aget-object v18, v16, v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_11b} :catch_11c
    .catchall {:try_start_ac .. :try_end_11b} :catchall_132

    goto :goto_ea

    .line 1573
    .end local v11    # "i":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "strSupportedFreq":[Ljava/lang/String;
    :catch_11c
    move-exception v10

    .line 1574
    .local v10, "e":Ljava/lang/Exception;
    :try_start_11d
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1575
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I
    :try_end_128
    .catchall {:try_start_11d .. :try_end_128} :catchall_132

    .line 1578
    if-eqz v7, :cond_70

    .line 1579
    :try_start_12a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_12f

    goto/16 :goto_70

    .line 1581
    :catch_12f
    move-exception v10

    goto/16 :goto_a8

    .line 1577
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_132
    move-exception v17

    .line 1578
    if-eqz v7, :cond_138

    .line 1579
    :try_start_135
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_139

    .line 1577
    :cond_138
    :goto_138
    throw v17

    .line 1581
    :catch_139
    move-exception v10

    .line 1582
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_138

    .line 1581
    .end local v10    # "e":Ljava/io/IOException;
    :catch_13e
    move-exception v10

    goto/16 :goto_a8

    .line 1578
    .restart local v11    # "i":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "strSupportedFreq":[Ljava/lang/String;
    :cond_141
    if-eqz v7, :cond_70

    .line 1579
    :try_start_143
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_148

    goto/16 :goto_70

    .line 1581
    :catch_148
    move-exception v10

    goto/16 :goto_a8
.end method

.method private initSupportedGPUFrequency()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_5

    .line 231
    :goto_4
    return-void

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    goto :goto_4
.end method

.method private initSupportedLCDFreq()V
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    if-eqz v0, :cond_5

    .line 252
    :goto_4
    return-void

    .line 246
    :cond_5
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    .line 247
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 248
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 249
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x2

    const/16 v2, 0x33

    aput v2, v0, v1

    .line 250
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x3

    const/16 v2, 0x3c

    aput v2, v0, v1

    goto :goto_4
.end method

.method private initSupportedSysBusFrequency()V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v0, :cond_5

    .line 261
    :goto_4
    return-void

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    goto :goto_4
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2064
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2068
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 2069
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_7
    return-void
.end method

.method private modifyGPUToValue(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_9

    .line 333
    :cond_8
    :goto_8
    return-void

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    goto :goto_8
.end method

.method private static native nativeAcquireDVFSLock(II)I
.end method

.method private static native nativeReleaseDVFSLock(I)I
.end method

.method private static native nativecheckForString(Ljava/lang/String;I)I
.end method

.method private static onListScrollBoostEvent(Z)V
    .registers 7
    .param p0, "enable"    # Z

    .prologue
    .line 2074
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListScrollBoostEvent:: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    :try_start_18
    const-class v3, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    .line 2078
    .local v2, "instance":Lcom/android/server/ssrm/fgapps/TurboModeOnOff;
    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->onListScrollBoost(Z)V
    :try_end_23
    .catch Ljava/lang/InstantiationException; {:try_start_18 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_23} :catch_29

    .line 2084
    .end local v2    # "instance":Lcom/android/server/ssrm/fgapps/TurboModeOnOff;
    :goto_23
    return-void

    .line 2079
    :catch_24
    move-exception v0

    .line 2080
    .local v0, "e1":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_23

    .line 2081
    .end local v0    # "e1":Ljava/lang/InstantiationException;
    :catch_29
    move-exception v1

    .line 2082
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_23
.end method

.method private releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2103
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v4

    .line 2104
    :try_start_3
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v3, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2105
    .local v2, "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherCPUCoreLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 2109
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 2110
    .local v1, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2108
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 2112
    .end local v1    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3e
    monitor-exit v4

    .line 2113
    return-void

    .line 2112
    .end local v0    # "i":I
    .end local v2    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v3
.end method

.method private releaseAllLauncherDVFSLocks(Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2088
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getAllDVFSLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2089
    .local v3, "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_41

    .line 2092
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    :try_start_26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3c

    .line 2093
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 2094
    .local v2, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    iget-object v4, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2092
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2096
    .end local v2    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_3c
    monitor-exit v5

    .line 2100
    .end local v1    # "i":I
    .end local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :goto_3d
    return-void

    .line 2096
    .restart local v1    # "i":I
    .restart local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :catchall_3e
    move-exception v4

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    :try_start_40
    throw v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_41} :catch_41

    .line 2097
    .end local v1    # "i":I
    .end local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :catch_41
    move-exception v0

    .line 2098
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private revertGPUToDefault()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_9

    .line 341
    :cond_8
    :goto_8
    return-void

    .line 340
    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    goto :goto_8
.end method

.method static stringCheckFromPms(Ljava/lang/String;I)I
    .registers 3
    .param p0, "app_path"    # Ljava/lang/String;
    .param p1, "app_hash"    # I

    .prologue
    .line 2253
    invoke-static {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativecheckForString(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private verifyDefaultCondition()V
    .registers 5

    .prologue
    .line 204
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    if-eqz v1, :cond_a

    .line 208
    :try_start_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_16

    .line 214
    :cond_a
    :goto_a
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-eqz v1, :cond_15

    .line 218
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_31

    .line 223
    :cond_15
    :goto_15
    return-void

    .line 209
    :catch_16
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_31
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method


# virtual methods
.method acquireCpuDvfsLock(II)I
    .registers 7
    .param p1, "lockType"    # I
    .param p2, "freq"    # I

    .prologue
    .line 2227
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_b

    .line 2228
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeAcquireDVFSLock(II)I

    move-result v0

    .line 2236
    :goto_a
    return v0

    .line 2231
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2a

    .line 2232
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_max_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_28
    :goto_28
    const/4 v0, 0x0

    goto :goto_a

    .line 2233
    :cond_2a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    .line 2234
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_min_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "lock"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1800
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1801
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1803
    .local v5, "pid":I
    if-eqz p4, :cond_16

    const-string v0, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1804
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    .line 1811
    :cond_16
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x7

    if-eq p1, v0, :cond_20

    .line 1828
    :cond_1f
    :goto_1f
    return-void

    .line 1816
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    if-nez v0, :cond_1f

    const-string v0, "minlock_disable"

    const-string/jumbo v1, "sys.siop.longlife"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1822
    .local v7, "ident":J
    :try_start_37
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4a

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1823
    :try_start_3f
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 1824
    monitor-exit v9
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_47

    .line 1826
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 1824
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v9
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 1826
    :catchall_4a
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "lock"    # Landroid/os/IBinder;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1832
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, p3, p6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v8

    .line 1838
    .local v8, "index":I
    if-gez v8, :cond_e1

    .line 1839
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1840
    .local v0, "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_68

    .line 1841
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "Before Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1844
    :cond_68
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->addLock(Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;)V

    .line 1845
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c1

    .line 1846
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "After Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1848
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Creating new Lock type & adding to List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_c1
    :goto_c1
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_13c

    .line 1864
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_d2

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-ge v1, v2, :cond_da

    .line 1866
    :cond_d2
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1867
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1876
    :cond_da
    :goto_da
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    .line 1877
    return-void

    .line 1853
    .end local v0    # "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_e1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1855
    .restart local v0    # "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c1

    .line 1856
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 1869
    :cond_13c
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_da

    .line 1870
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_14d

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-le v1, v2, :cond_da

    .line 1872
    :cond_14d
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1873
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_da
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "callingId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 1984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1985
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1990
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1992
    .local v7, "ident":J
    :try_start_c
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_a3

    .line 1993
    :try_start_f
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_87

    .line 1996
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 1997
    .local v3, "token":Landroid/os/IBinder;
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    .line 2004
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 2005
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 2011
    .end local v3    # "token":Landroid/os/IBinder;
    :goto_82
    monitor-exit v9
    :try_end_83
    .catchall {:try_start_f .. :try_end_83} :catchall_a0

    .line 2013
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2015
    return-void

    .line 2007
    :cond_87
    :try_start_87
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 2011
    :catchall_a0
    move-exception v0

    monitor-exit v9
    :try_end_a2
    .catchall {:try_start_87 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    .line 2013
    :catchall_a3
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public checkCPUBoostRange(I)Z
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 298
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 299
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 302
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2a

    .line 303
    const/4 v1, 0x1

    .line 309
    :goto_29
    return v1

    .line 301
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 306
    :cond_2d
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_49

    .line 307
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_49
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public checkCPUCoreRange(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 320
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 321
    const/4 v1, 0x1

    .line 324
    :goto_d
    return v1

    .line 319
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public checkFrameRateRange(I)Z
    .registers 3
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public checkGPUFrequencyRange(I)Z
    .registers 5
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_6

    .line 275
    :cond_5
    :goto_5
    return v1

    .line 269
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 270
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_14

    .line 271
    const/4 v1, 0x1

    goto :goto_5

    .line 269
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public checkSysBusFrequencyRange(I)Z
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 280
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 281
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1c
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v1, :cond_31

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 285
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2e

    .line 286
    const/4 v1, 0x1

    .line 293
    .end local v0    # "i":I
    :goto_2d
    return v1

    .line 284
    .restart local v0    # "i":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 290
    .end local v0    # "i":I
    :cond_31
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4d

    .line 291
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_4d
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2153
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump CustomFrequencyManagerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    :cond_3e
    :goto_3e
    return-void

    .line 2160
    :cond_3f
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-eqz v0, :cond_3e

    .line 2161
    const-string v0, "SSRM Service (dumpsys CustomFrequencyManagerService)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ssrm/Monitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public declared-synchronized getDVFSLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .registers 2

    .prologue
    .line 1790
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedCPUCoreNum()[I
    .registers 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .registers 2

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedLCDFrequency()[I
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public mpdUpdate(I)V
    .registers 13
    .param p1, "mpEnable"    # I

    .prologue
    .line 874
    const/4 v9, 0x1

    if-ne p1, v9, :cond_34

    .line 875
    const-string v8, "enable_mpd"

    .line 880
    .local v8, "str":Ljava/lang/String;
    :goto_5
    const/4 v5, 0x0

    .line 881
    .local v5, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v7, 0x0

    .line 883
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_7
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_c} :catch_37
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_4e
    .catchall {:try_start_7 .. :try_end_c} :catchall_62

    .line 884
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .local v6, "hotplugSocket":Landroid/net/LocalSocket;
    :try_start_c
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 886
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 887
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 888
    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 889
    .local v1, "byteString":[B
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_25
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_25} :catch_85
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_25} :catch_82
    .catchall {:try_start_c .. :try_end_25} :catchall_7f

    .line 898
    if-eqz v7, :cond_2a

    .line 899
    :try_start_27
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 901
    :cond_2a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 902
    if-eqz v6, :cond_32

    .line 903
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_76

    :cond_32
    :goto_32
    move-object v5, v6

    .line 909
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :cond_33
    :goto_33
    return-void

    .line 877
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "str":Ljava/lang/String;
    :cond_34
    const-string v8, "disable_mpd"

    .restart local v8    # "str":Ljava/lang/String;
    goto :goto_5

    .line 891
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_37
    move-exception v3

    .line 892
    .local v3, "e1":Ljava/net/UnknownHostException;
    :goto_38
    :try_start_38
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_62

    .line 898
    if-eqz v7, :cond_40

    .line 899
    :try_start_3d
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 901
    :cond_40
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 902
    if-eqz v5, :cond_33

    .line 903
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_33

    .line 905
    :catch_49
    move-exception v4

    .line 906
    .end local v3    # "e1":Ljava/net/UnknownHostException;
    .local v4, "ex":Ljava/io/IOException;
    :goto_4a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 893
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_4e
    move-exception v2

    .line 895
    .local v2, "e":Ljava/io/IOException;
    :goto_4f
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_62

    .line 898
    if-eqz v7, :cond_57

    .line 899
    :try_start_54
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_7b

    .line 901
    :cond_57
    :try_start_57
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_7d

    .line 902
    if-eqz v5, :cond_33

    .line 903
    :try_start_5c
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_33

    .line 905
    :catch_60
    move-exception v4

    goto :goto_4a

    .line 897
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v9

    .line 898
    :goto_63
    if-eqz v7, :cond_68

    .line 899
    :try_start_65
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 901
    :cond_68
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 902
    if-eqz v5, :cond_70

    .line 903
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_70} :catch_71

    .line 897
    :cond_70
    :goto_70
    throw v9

    .line 905
    :catch_71
    move-exception v4

    .line 906
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70

    .line 905
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "byteString":[B
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_76
    move-exception v4

    .line 906
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 905
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_7b
    move-exception v4

    goto :goto_4a

    :catch_7d
    move-exception v4

    goto :goto_4a

    .line 897
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catchall_7f
    move-exception v9

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_63

    .line 893
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_82
    move-exception v2

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_4f

    .line 891
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_85
    move-exception v3

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_38
.end method

.method public notifyWmAniationState(JZ)V
    .registers 11
    .param p1, "currentTime"    # J
    .param p3, "isStart"    # Z

    .prologue
    .line 2117
    iget-boolean v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v4, :cond_5

    .line 2135
    :goto_4
    return-void

    .line 2125
    :cond_5
    :try_start_5
    const-class v4, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v2

    .line 2126
    .local v2, "instance1":Lcom/android/server/ssrm/fgapps/FgAppListener;
    move-object v0, v2

    check-cast v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    move-object v3, v0

    .line 2127
    .local v3, "instance2":Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
    if-eqz p3, :cond_33

    .line 2128
    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->onAnimationStarted(J)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_4

    .line 2132
    .end local v2    # "instance1":Lcom/android/server/ssrm/fgapps/FgAppListener;
    .end local v3    # "instance2":Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
    :catch_15
    move-exception v1

    .line 2133
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyWmAniationState:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2130
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "instance1":Lcom/android/server/ssrm/fgapps/FgAppListener;
    .restart local v3    # "instance2":Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
    :cond_33
    :try_start_33
    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->onAnimationFinished(J)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_15

    goto :goto_4
.end method

.method registerIntentReceiver()V
    .registers 4

    .prologue
    .line 2210
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 2220
    :goto_4
    return-void

    .line 2214
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2215
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2216
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2217
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2218
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2219
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method

.method public releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v1

    .line 1029
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1030
    monitor-exit v1

    .line 1031
    return-void

    .line 1030
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1034
    const/4 v1, 0x0

    .line 1036
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_2
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_12

    .line 1037
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "CPU Core before removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1040
    :cond_12
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 1041
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_28

    .line 1042
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "CPU Core after removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1045
    :cond_28
    if-nez v1, :cond_40

    .line 1046
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_35

    .line 1047
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, request not found, returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_35} :catch_a3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_10c
    .catchall {:try_start_2 .. :try_end_35} :catchall_14a

    .line 1113
    :cond_35
    if-eqz v1, :cond_3f

    .line 1114
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1115
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3e

    .line 1116
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1118
    :cond_3e
    :goto_3e
    const/4 v1, 0x0

    .line 1122
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_3f
    return-void

    .line 1052
    :cond_40
    const/4 v4, 0x4

    if-ne p1, v4, :cond_ca

    .line 1053
    :try_start_43
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_83

    .line 1054
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_52

    .line 1055
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_52
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 1060
    .local v2, "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_8d

    .line 1061
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_78

    .line 1062
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_78
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1068
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_83} :catch_a3
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_83} :catch_10c
    .catchall {:try_start_43 .. :try_end_83} :catchall_14a

    .line 1113
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_83
    :goto_83
    if-eqz v1, :cond_3f

    .line 1114
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1115
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3e

    .line 1116
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_3e

    .line 1070
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8d
    :try_start_8d
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_98

    .line 1071
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_98
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 1075
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a2} :catch_10c
    .catchall {:try_start_8d .. :try_end_a2} :catchall_14a

    goto :goto_83

    .line 1105
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_a3
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_a4
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: FileNotFoundException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_a4 .. :try_end_bf} :catchall_14a

    .line 1113
    if-eqz v1, :cond_3f

    .line 1114
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1115
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3e

    .line 1116
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_3e

    .line 1079
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_ca
    :try_start_ca
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_83

    .line 1080
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_d9

    .line 1081
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_d9
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 1086
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_133

    .line 1087
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_ff

    .line 1088
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_ff
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1094
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_10a
    .catch Ljava/io/FileNotFoundException; {:try_start_ca .. :try_end_10a} :catch_a3
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_10a} :catch_10c
    .catchall {:try_start_ca .. :try_end_10a} :catchall_14a

    goto/16 :goto_83

    .line 1108
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_10c
    move-exception v0

    .line 1109
    .local v0, "e":Ljava/io/IOException;
    :try_start_10d
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: IOException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_128
    .catchall {:try_start_10d .. :try_end_128} :catchall_14a

    .line 1113
    if-eqz v1, :cond_3f

    .line 1114
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1115
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3e

    .line 1116
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_3e

    .line 1096
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_133
    :try_start_133
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_13e

    .line 1097
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_13e
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 1101
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_148
    .catch Ljava/io/FileNotFoundException; {:try_start_133 .. :try_end_148} :catch_a3
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_148} :catch_10c
    .catchall {:try_start_133 .. :try_end_148} :catchall_14a

    goto/16 :goto_83

    .line 1113
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_14a
    move-exception v4

    if-eqz v1, :cond_155

    .line 1114
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1115
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_154

    .line 1116
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1118
    :cond_154
    const/4 v1, 0x0

    .line 1113
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_155
    throw v4
.end method

.method releaseCpuDvfsLock(I)I
    .registers 5
    .param p1, "lockType"    # I

    .prologue
    .line 2240
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_b

    .line 2241
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeReleaseDVFSLock(I)I

    move-result v0

    .line 2249
    :goto_a
    return v0

    .line 2244
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 2245
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_max_limit"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    :cond_17
    :goto_17
    const/4 v0, 0x0

    goto :goto_a

    .line 2246
    :cond_19
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 2247
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_min_limit"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1881
    const-string v2, "jf"

    sget-object v3, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "exynos4"

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_14
    if-eqz p2, :cond_28

    .line 1883
    const-string v2, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1884
    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherDVFSLocks(Ljava/lang/String;)V

    .line 1885
    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V

    .line 1891
    :cond_28
    if-eqz p2, :cond_36

    const-string v2, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1892
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    .line 1898
    :cond_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1900
    .local v0, "ident":J
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v3
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_48

    .line 1901
    :try_start_3d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1902
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_45

    .line 1904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1906
    return-void

    .line 1902
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 1904
    :catchall_48
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 12
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1909
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_13

    .line 1910
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "Before Removing ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1913
    :cond_13
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    .line 1914
    .local v2, "removedDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_29

    .line 1915
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "After Removing ----------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1918
    :cond_29
    if-nez v2, :cond_2c

    .line 1980
    :goto_2b
    return-void

    .line 1921
    :cond_2c
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_c9

    .line 1928
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_b0

    .line 1929
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v1

    .line 1931
    .local v1, "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    if-eqz v1, :cond_b8

    .line 1934
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_a9

    .line 1935
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_a9
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1941
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1979
    .end local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_b0
    :goto_b0
    iget-object v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_2b

    .line 1944
    .restart local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_b8
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_c3

    .line 1945
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_c3
    invoke-virtual {p0, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    .line 1949
    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_b0

    .line 1952
    .end local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_c9
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_b0

    .line 1953
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_b0

    .line 1954
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v0

    .line 1956
    .local v0, "nextMaxOfMinLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    if-eqz v0, :cond_100

    .line 1958
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_f8

    .line 1959
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_f8
    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v6, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1965
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_b0

    .line 1968
    :cond_100
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_10b

    .line 1969
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_10b
    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    .line 1973
    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_b0
.end method

.method public releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 449
    const/4 v1, 0x0

    .line 451
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_14

    .line 452
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "GPU before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 455
    :cond_14
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 456
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2a

    .line 457
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "GPU after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 460
    :cond_2a
    if-nez v1, :cond_44

    .line 461
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_37

    .line 462
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_37} :catch_b2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_37} :catch_123
    .catchall {:try_start_4 .. :try_end_37} :catchall_161

    .line 528
    :cond_37
    if-eqz v1, :cond_42

    .line 529
    :try_start_39
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 530
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_41

    .line 531
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 533
    :cond_41
    const/4 v1, 0x0

    .line 464
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_9a

    .line 538
    :goto_43
    return-void

    .line 466
    :cond_44
    const/16 v4, 0x9

    if-ne p1, v4, :cond_d9

    .line 467
    :try_start_48
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8d

    .line 468
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_57

    .line 469
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU Max request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_57
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 473
    .local v2, "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_9d

    .line 474
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7d

    .line 475
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU_MAX, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_7d
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 480
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 482
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_8d} :catch_b2
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_8d} :catch_123
    .catchall {:try_start_48 .. :try_end_8d} :catchall_161

    .line 528
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8d
    :goto_8d
    if-eqz v1, :cond_98

    .line 529
    :try_start_8f
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 530
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_97

    .line 531
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 533
    :cond_97
    :goto_97
    const/4 v1, 0x0

    .line 537
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_98
    monitor-exit v5

    goto :goto_43

    :catchall_9a
    move-exception v4

    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_8f .. :try_end_9c} :catchall_9a

    throw v4

    .line 484
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9d
    :try_start_9d
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a8

    .line 485
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_a8
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 489
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_b1} :catch_b2
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b1} :catch_123
    .catchall {:try_start_9d .. :try_end_b1} :catchall_161

    goto :goto_8d

    .line 520
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_b2
    move-exception v0

    .line 521
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_b3
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: FileNotFoundException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ce
    .catchall {:try_start_b3 .. :try_end_ce} :catchall_161

    .line 528
    if-eqz v1, :cond_98

    .line 529
    :try_start_d0
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 530
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_97

    .line 531
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d8
    .catchall {:try_start_d0 .. :try_end_d8} :catchall_9a

    goto :goto_97

    .line 493
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_d9
    const/4 v4, 0x1

    if-ne p1, v4, :cond_8d

    .line 494
    :try_start_dc
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8d

    .line 495
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_eb

    .line 496
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_eb
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 500
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_14b

    .line 501
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_111

    .line 502
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_111
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 507
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 509
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_121
    .catch Ljava/io/FileNotFoundException; {:try_start_dc .. :try_end_121} :catch_b2
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_121} :catch_123
    .catchall {:try_start_dc .. :try_end_121} :catchall_161

    goto/16 :goto_8d

    .line 523
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_123
    move-exception v0

    .line 524
    .local v0, "e":Ljava/io/IOException;
    :try_start_124
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13f
    .catchall {:try_start_124 .. :try_end_13f} :catchall_161

    .line 528
    if-eqz v1, :cond_98

    .line 529
    :try_start_141
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 530
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_97

    .line 531
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_149
    .catchall {:try_start_141 .. :try_end_149} :catchall_9a

    goto/16 :goto_97

    .line 511
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_14b
    :try_start_14b
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_156

    .line 512
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_156
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 516
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_15f
    .catch Ljava/io/FileNotFoundException; {:try_start_14b .. :try_end_15f} :catch_b2
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_15f} :catch_123
    .catchall {:try_start_14b .. :try_end_15f} :catchall_161

    goto/16 :goto_8d

    .line 528
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_161
    move-exception v4

    if-eqz v1, :cond_16d

    .line 529
    :try_start_164
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 530
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_16c

    .line 531
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 533
    :cond_16c
    const/4 v1, 0x0

    .line 528
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_16d
    throw v4
    :try_end_16e
    .catchall {:try_start_164 .. :try_end_16e} :catchall_9a
.end method

.method public releasePersistentDVFSLock(ILjava/lang/String;)V
    .registers 10
    .param p1, "callingId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2026
    .local v0, "ident":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_78

    .line 2027
    :try_start_7
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_7d

    .line 2028
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 2029
    .local v2, "lock":Landroid/os/IBinder;
    if-eqz v2, :cond_55

    .line 2030
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callingId : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-virtual {p0, v2, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2035
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 2046
    .end local v2    # "lock":Landroid/os/IBinder;
    :goto_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_75

    .line 2048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2050
    return-void

    .line 2037
    .restart local v2    # "lock":Landroid/os/IBinder;
    :cond_55
    :try_start_55
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    const-string v5, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock under-locked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2046
    .end local v2    # "lock":Landroid/os/IBinder;
    :catchall_75
    move-exception v3

    monitor-exit v4
    :try_end_77
    .catchall {:try_start_55 .. :try_end_77} :catchall_75

    :try_start_77
    throw v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 2048
    :catchall_78
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2042
    :cond_7d
    :try_start_7d
    const-string v3, "SSRMv2:CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_75

    goto :goto_50
.end method

.method public releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 625
    const/4 v1, 0x0

    .line 627
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_14

    .line 628
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "System Bus before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 631
    :cond_14
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 632
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2a

    .line 633
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "System Bus after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 636
    :cond_2a
    if-nez v1, :cond_44

    .line 637
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_37

    .line 638
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_37} :catch_ac
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_37} :catch_114
    .catchall {:try_start_4 .. :try_end_37} :catchall_152

    .line 703
    :cond_37
    if-eqz v1, :cond_42

    .line 704
    :try_start_39
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 705
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_41

    .line 706
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 708
    :cond_41
    const/4 v1, 0x0

    .line 640
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_94

    .line 713
    :goto_43
    return-void

    .line 643
    :cond_44
    const/16 v4, 0xa

    if-ne p1, v4, :cond_d3

    .line 644
    :try_start_48
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_87

    .line 645
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_57

    .line 646
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_57
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 650
    .local v2, "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_97

    .line 651
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7d

    .line 652
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_7d
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 658
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_87} :catch_ac
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_87} :catch_114
    .catchall {:try_start_48 .. :try_end_87} :catchall_152

    .line 703
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_87
    :goto_87
    if-eqz v1, :cond_92

    .line 704
    :try_start_89
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 705
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_91

    .line 706
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 708
    :cond_91
    :goto_91
    const/4 v1, 0x0

    .line 712
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_92
    monitor-exit v5

    goto :goto_43

    :catchall_94
    move-exception v4

    monitor-exit v5
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_94

    throw v4

    .line 660
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_97
    :try_start_97
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a2

    .line 661
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Min to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_a2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 665
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_ab} :catch_ac
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ab} :catch_114
    .catchall {:try_start_97 .. :try_end_ab} :catchall_152

    goto :goto_87

    .line 695
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_ac
    move-exception v0

    .line 696
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_ad
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c8
    .catchall {:try_start_ad .. :try_end_c8} :catchall_152

    .line 703
    if-eqz v1, :cond_92

    .line 704
    :try_start_ca
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 705
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_91

    .line 706
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_94

    goto :goto_91

    .line 669
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_d3
    :try_start_d3
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_87

    .line 670
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e2

    .line 671
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_e2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 676
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_13c

    .line 677
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_108

    .line 678
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_108
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 684
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_112
    .catch Ljava/io/FileNotFoundException; {:try_start_d3 .. :try_end_112} :catch_ac
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_112} :catch_114
    .catchall {:try_start_d3 .. :try_end_112} :catchall_152

    goto/16 :goto_87

    .line 698
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_114
    move-exception v0

    .line 699
    .local v0, "e":Ljava/io/IOException;
    :try_start_115
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_130
    .catchall {:try_start_115 .. :try_end_130} :catchall_152

    .line 703
    if-eqz v1, :cond_92

    .line 704
    :try_start_132
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 705
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_91

    .line 706
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_13a
    .catchall {:try_start_132 .. :try_end_13a} :catchall_94

    goto/16 :goto_91

    .line 686
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_13c
    :try_start_13c
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_147

    .line 687
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Max to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_147
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 691
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_150
    .catch Ljava/io/FileNotFoundException; {:try_start_13c .. :try_end_150} :catch_ac
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_150} :catch_114
    .catchall {:try_start_13c .. :try_end_150} :catchall_152

    goto/16 :goto_87

    .line 703
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_152
    move-exception v4

    if-eqz v1, :cond_15e

    .line 704
    :try_start_155
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 705
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_15d

    .line 706
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 708
    :cond_15d
    const/4 v1, 0x0

    .line 703
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_15e
    throw v4
    :try_end_15f
    .catchall {:try_start_155 .. :try_end_15f} :catchall_94
.end method

.method public requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 955
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 957
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4c

    .line 958
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Core # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_4c
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 963
    :try_start_4f
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkCPUCoreRange(I)Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_10b

    move-result v1

    if-eqz v1, :cond_14e

    .line 965
    :try_start_55
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 967
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_77

    .line 968
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_77
    if-gez v9, :cond_da

    .line 971
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 973
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_93

    .line 974
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "CPU Core before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 977
    :cond_93
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 978
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a8

    .line 979
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "CPU Core after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 982
    :cond_a8
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_b3

    .line 983
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_b3
    :goto_b3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_10e

    .line 993
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_c2

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_d8

    .line 995
    :cond_c2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_cd

    .line 996
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_cd
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1000
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_d8
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_d8} :catch_ee
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_d8} :catch_131
    .catchall {:try_start_55 .. :try_end_d8} :catchall_10b

    .line 1023
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_d8
    :goto_d8
    :try_start_d8
    monitor-exit v10
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_10b

    .line 1024
    return-void

    .line 986
    .restart local v9    # "index":I
    :cond_da
    :try_start_da
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 987
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_b3

    .line 988
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_da .. :try_end_ed} :catch_ee
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_ed} :catch_131
    .catchall {:try_start_da .. :try_end_ed} :catchall_10b

    goto :goto_b3

    .line 1013
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_ee
    move-exception v8

    .line 1014
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_ef
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_d8

    .line 1023
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catchall_10b
    move-exception v1

    monitor-exit v10
    :try_end_10d
    .catchall {:try_start_ef .. :try_end_10d} :catchall_10b

    throw v1

    .line 1003
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_10e
    :try_start_10e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_11a

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_d8

    .line 1005
    :cond_11a
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_125

    .line 1006
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_125
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x9

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1010
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_130
    .catch Ljava/io/FileNotFoundException; {:try_start_10e .. :try_end_130} :catch_ee
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_130} :catch_131
    .catchall {:try_start_10e .. :try_end_130} :catchall_10b

    goto :goto_d8

    .line 1016
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_131
    move-exception v8

    .line 1017
    .local v8, "e":Ljava/io/IOException;
    :try_start_132
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d8

    .line 1021
    .end local v8    # "e":Ljava/io/IOException;
    :cond_14e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CPUCore value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_156
    .catchall {:try_start_132 .. :try_end_156} :catchall_10b
.end method

.method public requestCPUUpdate(II)V
    .registers 15
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .prologue
    .line 837
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "core "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 838
    .local v8, "send":Ljava/lang/String;
    const-string v9, "SSRMv2:CustomFrequencyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestCPUUpdate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v5, 0x0

    .line 841
    .local v5, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v7, 0x0

    .line 843
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_37
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_3c
    .catch Ljava/net/UnknownHostException; {:try_start_37 .. :try_end_3c} :catch_64
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_7b
    .catchall {:try_start_37 .. :try_end_3c} :catchall_8f

    .line 844
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .local v6, "hotplugSocket":Landroid/net/LocalSocket;
    :try_start_3c
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 846
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 847
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 848
    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 849
    .local v1, "byteString":[B
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_55
    .catch Ljava/net/UnknownHostException; {:try_start_3c .. :try_end_55} :catch_b2
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_55} :catch_af
    .catchall {:try_start_3c .. :try_end_55} :catchall_ac

    .line 857
    if-eqz v7, :cond_5a

    .line 858
    :try_start_57
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 860
    :cond_5a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 861
    if-eqz v6, :cond_62

    .line 862
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_62} :catch_a3

    :cond_62
    :goto_62
    move-object v5, v6

    .line 869
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :cond_63
    :goto_63
    return-void

    .line 850
    :catch_64
    move-exception v3

    .line 851
    .local v3, "e1":Ljava/net/UnknownHostException;
    :goto_65
    :try_start_65
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_8f

    .line 857
    if-eqz v7, :cond_6d

    .line 858
    :try_start_6a
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 860
    :cond_6d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 861
    if-eqz v5, :cond_63

    .line 862
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_75} :catch_76

    goto :goto_63

    .line 864
    :catch_76
    move-exception v4

    .line 865
    .end local v3    # "e1":Ljava/net/UnknownHostException;
    .local v4, "ex":Ljava/io/IOException;
    :goto_77
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 852
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_7b
    move-exception v2

    .line 854
    .local v2, "e":Ljava/io/IOException;
    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_8f

    .line 857
    if-eqz v7, :cond_84

    .line 858
    :try_start_81
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_a8

    .line 860
    :cond_84
    :try_start_84
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_aa

    .line 861
    if-eqz v5, :cond_63

    .line 862
    :try_start_89
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_63

    .line 864
    :catch_8d
    move-exception v4

    goto :goto_77

    .line 856
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_8f
    move-exception v9

    .line 857
    :goto_90
    if-eqz v7, :cond_95

    .line 858
    :try_start_92
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 860
    :cond_95
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 861
    if-eqz v5, :cond_9d

    .line 862
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9d} :catch_9e

    .line 856
    :cond_9d
    :goto_9d
    throw v9

    .line 864
    :catch_9e
    move-exception v4

    .line 865
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    .line 864
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "byteString":[B
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_a3
    move-exception v4

    .line 865
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 864
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_a8
    move-exception v4

    goto :goto_77

    :catch_aa
    move-exception v4

    goto :goto_77

    .line 856
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catchall_ac
    move-exception v9

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_90

    .line 852
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_af
    move-exception v2

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_7c

    .line 850
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_b2
    move-exception v3

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_65
.end method

.method public requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 361
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 363
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 364
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_42
    const/4 v1, 0x1

    if-ne p1, v1, :cond_59

    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    if-nez v1, :cond_58

    const-string v1, "minlock_disable"

    const-string/jumbo v2, "sys.siop.longlife"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 444
    :cond_58
    :goto_58
    return-void

    .line 374
    :cond_59
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 375
    :try_start_5c
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_d4

    move-result v1

    if-eqz v1, :cond_16a

    .line 377
    :try_start_62
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 380
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_84

    .line 381
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_84
    if-gez v9, :cond_d7

    .line 384
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 386
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a0

    .line 387
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "GPU before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 390
    :cond_a0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 391
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_b5

    .line 392
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "GPU after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 395
    :cond_b5
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c0

    .line 396
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_c0
    :goto_c0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_13e

    .line 406
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_108

    .line 407
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 409
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_d2
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_d2} :catch_eb
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_d2} :catch_121
    .catchall {:try_start_62 .. :try_end_d2} :catchall_d4

    .line 443
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_d2
    :goto_d2
    :try_start_d2
    monitor-exit v10

    goto :goto_58

    :catchall_d4
    move-exception v1

    monitor-exit v10
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_d4

    throw v1

    .line 399
    .restart local v9    # "index":I
    :cond_d7
    :try_start_d7
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 400
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c0

    .line 401
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/io/FileNotFoundException; {:try_start_d7 .. :try_end_ea} :catch_eb
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_ea} :catch_121
    .catchall {:try_start_d7 .. :try_end_ea} :catchall_d4

    goto :goto_c0

    .line 429
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_eb
    move-exception v8

    .line 430
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_ec
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: FileNotFoundException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_107
    .catchall {:try_start_ec .. :try_end_107} :catchall_d4

    goto :goto_d2

    .line 410
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_108
    :try_start_108
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_d2

    .line 411
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 412
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 414
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_120
    .catch Ljava/io/FileNotFoundException; {:try_start_108 .. :try_end_120} :catch_eb
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_120} :catch_121
    .catchall {:try_start_108 .. :try_end_120} :catchall_d4

    goto :goto_d2

    .line 432
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_121
    move-exception v8

    .line 433
    .local v8, "e":Ljava/io/IOException;
    :try_start_122
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13d
    .catchall {:try_start_122 .. :try_end_13d} :catchall_d4

    goto :goto_d2

    .line 416
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_13e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d2

    .line 417
    :try_start_141
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_150

    .line 418
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 420
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    goto :goto_d2

    .line 421
    :cond_150
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_d2

    .line 422
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 423
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 425
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_168
    .catch Ljava/io/FileNotFoundException; {:try_start_141 .. :try_end_168} :catch_eb
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_168} :catch_121
    .catchall {:try_start_141 .. :try_end_168} :catchall_d4

    goto/16 :goto_d2

    .line 437
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_16a
    :try_start_16a
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: GPU Frequency value is not in the permitted range. frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catchall {:try_start_16a .. :try_end_182} :catchall_d4

    goto/16 :goto_d2
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 14
    .param p1, "fpsLevel"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 718
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 720
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 721
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate:: fpsLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_42
    const/4 v2, 0x3

    .line 727
    .local v2, "type":I
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v9

    .line 728
    :try_start_46
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v8

    .line 729
    .local v8, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_68

    .line 730
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_68
    const/4 v0, 0x0

    .line 734
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-gez v8, :cond_c4

    .line 735
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 736
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_84

    .line 737
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS before adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 740
    :cond_84
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 741
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_99

    .line 742
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS after adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 745
    :cond_99
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a4

    .line 746
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, index not found, new req added in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_a4
    :goto_a4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_b0

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v3, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v3, :cond_c2

    .line 757
    :cond_b0
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_bb

    .line 758
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, Going to change max FPS."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_bb
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v1}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 761
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 763
    :cond_c2
    monitor-exit v9

    .line 764
    return-void

    .line 749
    :cond_c4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 750
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a4

    .line 751
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, request already in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 763
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v8    # "index":I
    :catchall_d8
    move-exception v1

    monitor-exit v9
    :try_end_da
    .catchall {:try_start_46 .. :try_end_da} :catchall_d8

    throw v1
.end method

.method public requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "burstRate"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1132
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "128"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return-void
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .registers 11
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 913
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_1c

    .line 914
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update the Nw paramter in the MPDecision command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_1c
    if-nez p1, :cond_1f

    .line 950
    :cond_1e
    :goto_1e
    return-void

    .line 921
    :cond_1f
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_40

    .line 922
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 925
    :cond_40
    move-object v5, p1

    .line 927
    .local v5, "send":Ljava/lang/String;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 928
    .local v2, "localSocket":Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 930
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_47
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "/dev/socket/mpdecision"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 932
    .local v3, "localSocketAddress":Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 933
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 934
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_62} :catch_72
    .catchall {:try_start_47 .. :try_end_62} :catchall_9b

    .line 940
    if-eqz v4, :cond_67

    .line 941
    :try_start_64
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_ac

    .line 943
    :cond_67
    if-eqz v2, :cond_1e

    .line 944
    :try_start_69
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_1e

    .line 946
    :catch_6d
    move-exception v1

    .line 947
    .end local v3    # "localSocketAddress":Landroid/net/LocalSocketAddress;
    .local v1, "ex":Ljava/io/IOException;
    :goto_6e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 935
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_72
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    :try_start_73
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_9b

    .line 940
    if-eqz v4, :cond_93

    .line 941
    :try_start_90
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 943
    :cond_93
    if-eqz v2, :cond_1e

    .line 944
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_98} :catch_99

    goto :goto_1e

    .line 946
    :catch_99
    move-exception v1

    goto :goto_6e

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_9b
    move-exception v6

    .line 940
    if-eqz v4, :cond_a1

    .line 941
    :try_start_9e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 943
    :cond_a1
    if-eqz v2, :cond_a6

    .line 944
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a6} :catch_a7

    .line 939
    :cond_a6
    :goto_a6
    throw v6

    .line 946
    :catch_a7
    move-exception v1

    .line 947
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 946
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "localSocketAddress":Landroid/net/LocalSocketAddress;
    :catch_ac
    move-exception v1

    goto :goto_6e
.end method

.method public requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 542
    const/16 v1, 0xa

    if-ne p1, v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    if-nez v1, :cond_17

    const-string v1, "minlock_disable"

    const-string/jumbo v2, "sys.siop.longlife"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 620
    :cond_17
    :goto_17
    return-void

    .line 548
    :cond_18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 549
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 551
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_64

    .line 552
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Frequency # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_64
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 556
    :try_start_67
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_f3

    move-result v1

    if-eqz v1, :cond_166

    .line 558
    :try_start_6d
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 560
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8f

    .line 561
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_8f
    if-gez v9, :cond_f6

    .line 564
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 566
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_ab

    .line 567
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "System Bus before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 570
    :cond_ab
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 571
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c0

    .line 572
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "System Bus after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 575
    :cond_c0
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_cb

    .line 576
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_cb
    :goto_cb
    const/16 v1, 0xa

    if-ne p1, v1, :cond_127

    .line 586
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_db

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_f0

    .line 588
    :cond_db
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_e6

    .line 589
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Min value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_e6
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 595
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_f0
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_f0} :catch_10a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_f0} :catch_149
    .catchall {:try_start_6d .. :try_end_f0} :catchall_f3

    .line 619
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_f0
    :goto_f0
    :try_start_f0
    monitor-exit v10

    goto/16 :goto_17

    :catchall_f3
    move-exception v1

    monitor-exit v10
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_f3

    throw v1

    .line 579
    .restart local v9    # "index":I
    :cond_f6
    :try_start_f6
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 580
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_cb

    .line 581
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catch Ljava/io/FileNotFoundException; {:try_start_f6 .. :try_end_109} :catch_10a
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_109} :catch_149
    .catchall {:try_start_f6 .. :try_end_109} :catchall_f3

    goto :goto_cb

    .line 608
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_10a
    move-exception v8

    .line 609
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_10b
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_126
    .catchall {:try_start_10b .. :try_end_126} :catchall_f3

    goto :goto_f0

    .line 598
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_127
    :try_start_127
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_133

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_f0

    .line 600
    :cond_133
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_13e

    .line 601
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Max value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_13e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x6

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 605
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_148
    .catch Ljava/io/FileNotFoundException; {:try_start_127 .. :try_end_148} :catch_10a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_148} :catch_149
    .catchall {:try_start_127 .. :try_end_148} :catchall_f3

    goto :goto_f0

    .line 611
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_149
    move-exception v8

    .line 612
    .local v8, "e":Ljava/io/IOException;
    :try_start_14a
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f0

    .line 616
    .end local v8    # "e":Ljava/io/IOException;
    :cond_166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "requestSysBus value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_16e
    .catchall {:try_start_14a .. :try_end_16e} :catchall_f3
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 13
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 769
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 771
    .local v2, "pid":I
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_38

    .line 772
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreLCDFrameRate:: package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_38
    const/4 v4, 0x3

    .line 778
    .local v4, "type":I
    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v7

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_3d
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_4d

    .line 782
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS before removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 785
    :cond_4d
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6, p1, v4, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v0

    .line 786
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_63

    .line 787
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS after removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 790
    :cond_63
    if-nez v0, :cond_72

    .line 791
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_70

    .line 792
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, request not found, returning null"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_70
    monitor-exit v7

    .line 832
    :goto_71
    return-void

    .line 797
    :cond_72
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v0, v6, :cond_ae

    .line 798
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_81

    .line 799
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, Current Sys Bus request has asked for release"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_81
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxFpsRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 804
    .local v1, "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v1, :cond_bd

    .line 805
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_a7

    .line 806
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreLCDFrameRate, there is a pending request in list, modifying with value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_a7
    iget v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 811
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 823
    .end local v1    # "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_ae
    :goto_ae
    if-eqz v0, :cond_b8

    .line 824
    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 825
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_b8

    .line 826
    const/4 v6, 0x0

    invoke-interface {v3, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 831
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_b8
    monitor-exit v7

    goto :goto_71

    :catchall_ba
    move-exception v6

    monitor-exit v7
    :try_end_bc
    .catchall {:try_start_3d .. :try_end_bc} :catchall_ba

    throw v6

    .line 813
    .restart local v1    # "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_bd
    const/16 v6, 0x63

    :try_start_bf
    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 814
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_cd

    .line 815
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, No Pending requests, reverting System Bus Max to default"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_cd
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_d0
    .catchall {:try_start_bf .. :try_end_d0} :catchall_ba

    goto :goto_ae
.end method

.method public restoreMMCBurstRate(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1137
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2257
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-eqz v1, :cond_29

    .line 2258
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2259
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2261
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    .line 2263
    .end local v0    # "msg":Landroid/os/Message;
    :cond_29
    return-void
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2139
    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p2, :cond_12

    .line 2140
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 2149
    :goto_11
    return-void

    .line 2144
    :cond_12
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2145
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2148
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_11
.end method
