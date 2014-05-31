.class public Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "ScreenMirroringBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field public static final STATUS_SCREEN_MIRRORING:Ljava/lang/String; = "ScreenMirroring_enable"

.field public static final STATUS_SECURE_PLAYBACK:Ljava/lang/String; = "SecurePlayback_play"

.field private static TAG:Ljava/lang/String;

.field private static mExceptionEnabled:Z

.field private static mScreenMirroring:Z

.field private static mSecurePlayBack:Z


# instance fields
.field private mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

.field private mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

.field private mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

.field mIsSetDefault:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "SSRMv2:ScreenMirroringBooster"

    sput-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    .line 33
    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    .line 35
    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    .line 37
    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    .line 59
    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    .line 61
    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    .line 63
    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    .line 31
    return-void
.end method

.method private sendSIOPExceptionIntent(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 40
    sget-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    if-ne v1, p1, :cond_5

    .line 55
    :cond_4
    :goto_4
    return-void

    .line 43
    :cond_5
    sput-boolean p1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    .line 44
    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSIOPExceptionIntent:: mExceptionEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "ScreenMirroringBooster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "PackageName"

    sget-object v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 53
    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4
.end method

.method private updateStatus()V
    .registers 11

    .prologue
    const/16 v3, 0xc

    const/4 v9, 0x1

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mUpdateDisable:Z

    if-eqz v0, :cond_2f

    .line 67
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    if-nez v0, :cond_2e

    .line 68
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_29

    .line 70
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 71
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 72
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 74
    :cond_29
    invoke-direct {p0, v8}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    .line 75
    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    .line 120
    :cond_2e
    :goto_2e
    return-void

    .line 79
    :cond_2f
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    .line 81
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_51

    .line 82
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_1_0G"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    .line 84
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    const v6, 0xf4240

    invoke-virtual {v2, v6}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 88
    :cond_51
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_71

    .line 89
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_1_2G"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    .line 91
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 95
    :cond_71
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_8f

    .line 96
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    .line 98
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_e4

    .line 99
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 105
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 106
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 107
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 108
    invoke-direct {p0, v8}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    .line 110
    sget-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStatus:: mSecurePlayBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenMirroring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_d0

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_d8

    :cond_d0
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-nez v0, :cond_ee

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_ee

    .line 113
    :cond_d8
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 114
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto/16 :goto_2e

    .line 101
    :cond_e4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_8f

    .line 115
    :cond_ee
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_2e

    .line 116
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 117
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 118
    invoke-direct {p0, v9}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    goto/16 :goto_2e
.end method


# virtual methods
.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "jf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "hf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 139
    :cond_14
    :goto_14
    return-void

    .line 132
    :cond_15
    const-string v0, "SecurePlayback_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 133
    sput-boolean p2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    .line 134
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->updateStatus()V

    goto :goto_14

    .line 135
    :cond_23
    const-string v0, "ScreenMirroring_enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 136
    sput-boolean p2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    .line 137
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->updateStatus()V

    goto :goto_14
.end method
