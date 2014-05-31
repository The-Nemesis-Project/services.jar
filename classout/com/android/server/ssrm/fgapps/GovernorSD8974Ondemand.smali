.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Ondemand.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsGameForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 24
    const-string v0, "SSRMv2:GovernorSD8974"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsGameForeground:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    .line 27
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .registers 6

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 62
    :cond_6
    :goto_6
    return-void

    .line 46
    :cond_7
    sget-object v4, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v3

    .line 47
    .local v3, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v3, v2}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 48
    .local v0, "isBrowserForeground":Z
    const/4 v1, 0x0

    .line 49
    .local v1, "isGameForeground":Z
    const-string v4, "com.imangi.templerun"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "com.alphacloud.castlemaster"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "com.epicgames.EpicCitadel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "com.ea.games.r3_row"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "com.rovio.angrybirds"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 54
    :cond_3a
    const/4 v1, 0x1

    .line 57
    :cond_3b
    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    if-ne v4, v0, :cond_43

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsGameForeground:Z

    if-eq v4, v1, :cond_6

    .line 58
    :cond_43
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsGameForeground:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandGovernorParameter()V

    goto :goto_6
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 37
    return-void
.end method

.method public setBrowserDashMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandGovernorParameter()V

    .line 67
    return-void
.end method

.method public updateOndemandGovernorParameter()V
    .registers 8

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0xe

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 70
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_3d

    .line 71
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x180600

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 73
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 74
    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1de200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 75
    const-string v0, "freq_step"

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v0, "up_threshold"

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 77
    const-string v0, "sampling_down_factor"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 98
    :goto_3c
    return-void

    .line 78
    :cond_3d
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    if-eqz v0, :cond_6e

    .line 79
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 80
    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x122a00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 81
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 82
    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1a5e00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 83
    const-string v0, "freq_step"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 84
    const-string/jumbo v0, "up_threshold"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 85
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_3c

    .line 86
    :cond_6e
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsGameForeground:Z

    if-eqz v0, :cond_7f

    .line 87
    const-string v0, "sampling_early_factor"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 88
    const-string v0, "sampling_interim_factor"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_3c

    .line 90
    :cond_7f
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x122a00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 92
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 93
    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1a5e00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 94
    const-string v0, "freq_step"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 95
    const-string/jumbo v0, "up_threshold"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 96
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_3c
.end method

.method public updateOndemandParameter(Ljava/lang/String;I)V
    .registers 6
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 101
    const-string v0, "SSRMv2:GovernorSD8974"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    return-void
.end method
