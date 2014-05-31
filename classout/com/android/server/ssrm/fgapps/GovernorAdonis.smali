.class public Lcom/android/server/ssrm/fgapps/GovernorAdonis;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorAdonis.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# instance fields
.field DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field DEFAULT_SAMPLING_RATE:Ljava/lang/String;

.field DEFAULT_UP_STEP_LEVEL_B:Ljava/lang/String;

.field DEFAULT_UP_STEP_LEVEL_L:Ljava/lang/String;

.field DEFAULT_UP_THRESHOLD:Ljava/lang/String;

.field DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;

.field DEFAULT_UP_THRESHOLD_L:Ljava/lang/String;

.field final PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field final PATH_SAMPLING_RATE:Ljava/lang/String;

.field final PATH_UP_STEP_LEVEL_B:Ljava/lang/String;

.field final PATH_UP_STEP_LEVEL_L:Ljava/lang/String;

.field final PATH_UP_THRESHOLD:Ljava/lang/String;

.field final PATH_UP_THRESHOLD_H:Ljava/lang/String;

.field final PATH_UP_THRESHOLD_L:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mIsHeavyAppInForeground:Z

.field mIsLcdOff:Z

.field mIsTargetAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 28
    const-string v1, "SSRMv2:GovernorAdonis"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->TAG:Ljava/lang/String;

    .line 30
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 32
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->PATH_SAMPLING_RATE:Ljava/lang/String;

    .line 34
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_b"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->PATH_UP_STEP_LEVEL_B:Ljava/lang/String;

    .line 36
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_l"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->PATH_UP_STEP_LEVEL_L:Ljava/lang/String;

    .line 38
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->PATH_UP_THRESHOLD:Ljava/lang/String;

    .line 40
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_l"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->PATH_UP_THRESHOLD_L:Ljava/lang/String;

    .line 42
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->PATH_UP_THRESHOLD_H:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    .line 66
    :try_start_2a
    const-string v1, "SSRMv2:GovernorAdonis"

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 67
    const-string v1, "SSRMv2:GovernorAdonis"

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_RATE:Ljava/lang/String;

    .line 68
    const-string v1, "SSRMv2:GovernorAdonis"

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_b"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_B:Ljava/lang/String;

    .line 69
    const-string v1, "SSRMv2:GovernorAdonis"

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_l"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_L:Ljava/lang/String;

    .line 70
    const-string v1, "SSRMv2:GovernorAdonis"

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD:Ljava/lang/String;

    .line 71
    const-string v1, "SSRMv2:GovernorAdonis"

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_L:Ljava/lang/String;

    .line 72
    const-string v1, "SSRMv2:GovernorAdonis"

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_70} :catch_12c
    .catchall {:try_start_2a .. :try_end_70} :catchall_1fe

    .line 82
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_STEP_LEVEL_B = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_STEP_LEVEL_L = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_THRESHOLD_L = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_THRESHOLD_H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_123
    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "dm"

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 91
    return-void

    .line 73
    :catch_12c
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12d
    const-string v1, "1"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 75
    const-string v1, "100000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_RATE:Ljava/lang/String;

    .line 76
    const-string v1, "1200000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_B:Ljava/lang/String;

    .line 77
    const-string v1, "600000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_L:Ljava/lang/String;

    .line 78
    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD:Ljava/lang/String;

    .line 79
    const-string v1, "60"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_L:Ljava/lang/String;

    .line 80
    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;
    :try_end_149
    .catchall {:try_start_12d .. :try_end_149} :catchall_1fe

    .line 82
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_STEP_LEVEL_B = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_STEP_LEVEL_L = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_THRESHOLD_L = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "SSRMv2:GovernorAdonis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_UP_THRESHOLD_H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_123

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1fe
    move-exception v1

    const-string v2, "SSRMv2:GovernorAdonis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "SSRMv2:GovernorAdonis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SAMPLING_RATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_RATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "SSRMv2:GovernorAdonis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_UP_STEP_LEVEL_B = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "SSRMv2:GovernorAdonis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_UP_STEP_LEVEL_L = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "SSRMv2:GovernorAdonis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_UP_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "SSRMv2:GovernorAdonis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_UP_THRESHOLD_L = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "SSRMv2:GovernorAdonis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_UP_THRESHOLD_H = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    throw v1
.end method


# virtual methods
.method public onFgAppChanged()V
    .registers 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 126
    :goto_6
    return-void

    .line 112
    :cond_7
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 113
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "com.google.android.talk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "com.facebook.katana"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string/jumbo v2, "templerun"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "castlemaster"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "com.ea.games.r3_row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "EpicCitadel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "angrybirds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 118
    :cond_4c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    .line 123
    :goto_4f
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->updateParameters()V

    goto :goto_6

    .line 120
    :cond_59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    goto :goto_4f
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 130
    return-void
.end method

.method public onLockScreenRelease()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->updateParameters()V

    .line 103
    return-void
.end method

.method public onScreenOff()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->updateParameters()V

    .line 97
    return-void
.end method

.method protected updateParameters()V
    .registers 4

    .prologue
    .line 133
    const-string v0, "SSRMv2:GovernorAdonis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParameters:: mIsTargetAppInForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_51

    .line 136
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

    const-string v1, "80000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_b"

    const-string v1, "1400000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_l"

    const-string v1, "1200000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold"

    const-string v1, "70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    const-string v1, "80"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_l"

    const-string v1, "60"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_50
    return-void

    .line 143
    :cond_51
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_5d

    .line 144
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 145
    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    if-eqz v0, :cond_69

    .line 146
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_l"

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 148
    :cond_69
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_SAMPLING_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_b"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_step_level_l"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_STEP_LEVEL_L:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_H:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_l"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->DEFAULT_UP_THRESHOLD_L:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method
