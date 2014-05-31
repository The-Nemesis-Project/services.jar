.class public Lcom/android/server/ssrm/fgapps/GameBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GameBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

.field mArmFreqMinHelper:Landroid/os/DVFSHelper;

.field private mIsBoosterTriggered:Z

.field private mIsGameAppFg:Z

.field private mIsLockScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "SSRMv2:GameBooster"

    sput-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    .line 35
    const-string v0, "com.devsisters.CookieRunForKakao"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->addPackage(Ljava/lang/String;)V

    .line 36
    const-string v0, "com.linktomorrow.windrunner"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->addPackage(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GameBooster;->mContext:Landroid/content/Context;

    const-string v2, "GAME_CPU_MIN"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    .line 40
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const v3, 0xb2200

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 43
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GameBooster;->mContext:Landroid/content/Context;

    const-string v2, "GAME_CORE_MIN"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    .line 45
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 46
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    .line 84
    return-void
.end method

.method public onLockScreenRelease()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    .line 64
    return-void
.end method

.method public onScreenOff()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    .line 58
    return-void
.end method

.method protected declared-synchronized updateBooster()V
    .registers 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    if-nez v0, :cond_23

    .line 68
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    .line 71
    sget-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    const-string v1, "acquire lock"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GameBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_3c

    .line 78
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 72
    :cond_23
    :try_start_23
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    if-eqz v0, :cond_21

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    .line 74
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 75
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 76
    sget-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    const-string v1, "release lock"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GameBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_3c

    goto :goto_21

    .line 67
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
