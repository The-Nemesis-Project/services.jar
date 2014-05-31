.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8x26;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8x26.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsCameraRecordingForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 26
    const-string v0, "SSRMv2:GovernorSD8x26"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->TAG:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserDashMode:Z

    .line 29
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .registers 4

    .prologue
    .line 43
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 44
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 45
    .local v0, "isBrowserForeground":Z
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    if-eq v2, v0, :cond_17

    .line 46
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    .line 47
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandGovernorParameter()V

    .line 49
    :cond_17
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 39
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "Camera_recordingDual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    .line 58
    :goto_13
    return-void

    .line 56
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    goto :goto_13
.end method

.method public updateOndemandGovernorParameter()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 61
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    if-eqz v0, :cond_1c

    .line 62
    :cond_a
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 63
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 64
    const-string v0, "sampling_interim_factor"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 70
    :goto_1b
    return-void

    .line 66
    :cond_1c
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 67
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 68
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_1b
.end method

.method public updateOndemandParameter(Ljava/lang/String;I)V
    .registers 6
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 73
    const-string v0, "SSRMv2:GovernorSD8x26"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method
