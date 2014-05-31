.class public Lcom/android/server/ssrm/fgapps/TurboModeOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TurboModeOnOff.java"


# static fields
.field private static final FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsForeground:Z

.field private mLastTurboMode:Z

.field private mListScrollBoost:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "SSRMv2:TurboModeOnOff"

    sput-object v0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    .line 29
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->addPackage(Ljava/lang/String;)V

    .line 30
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->addPackage(Ljava/lang/String;)V

    .line 31
    const-string v0, "com.samsung.everglades.video"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->addPackage(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private calculateCurrentMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    if-eqz v1, :cond_6

    .line 61
    :cond_5
    :goto_5
    return v0

    .line 58
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    if-nez v1, :cond_5

    .line 61
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private updateTurboMode()V
    .registers 5

    .prologue
    .line 38
    const-string v1, "jf"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 51
    :cond_a
    :goto_a
    return-void

    .line 42
    :cond_b
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->calculateCurrentMode()Z

    move-result v0

    .line 43
    .local v0, "newTurboMode":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    if-eq v1, v0, :cond_a

    .line 44
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    .line 45
    if-eqz v0, :cond_20

    .line 46
    sget-object v1, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    .line 48
    :cond_20
    sget-object v1, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a
.end method


# virtual methods
.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    .line 70
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->updateTurboMode()V

    .line 71
    return-void
.end method

.method public declared-synchronized onListScrollBoost(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    .line 77
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->updateTurboMode()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
