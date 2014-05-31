.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorAdonisPrime.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

.field DEFAULT_HISPEED_FREQ:Ljava/lang/String;

.field DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

.field DEFAULT_TARGET_LOADS:Ljava/lang/String;

.field DEFAULT_TIMER_RATE:Ljava/lang/String;

.field final PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field final PATH_GO_HISPEED_LOAD:Ljava/lang/String;

.field final PATH_HISPEED_FREQ:Ljava/lang/String;

.field final PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

.field final PATH_TARGET_LOADS:Ljava/lang/String;

.field final PATH_TIMER_RATE:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsCameraRecording:Z

.field mIsChatOnV:Z

.field mIsHeavyAppInForeground:Z

.field mIsTargetAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 28
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->TAG:Ljava/lang/String;

    .line 30
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->PATH_TARGET_LOADS:Ljava/lang/String;

    .line 32
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 34
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->PATH_HISPEED_FREQ:Ljava/lang/String;

    .line 36
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 38
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 40
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->PATH_TIMER_RATE:Ljava/lang/String;

    .line 54
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    .line 219
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    .line 64
    :try_start_2a
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 65
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 66
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 67
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 68
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 69
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TIMER_RATE:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_66} :catch_108
    .catchall {:try_start_2a .. :try_end_66} :catchall_1bc

    .line 78
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_ff
    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "dm"

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 86
    return-void

    .line 70
    :catch_108
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :try_start_109
    const-string v1, "70 600000:70 800000:75 1500000:80 1700000:90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 72
    const-string v1, "20000 1000000:80000 1200000:100000 1700000:20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 73
    const-string v1, "600000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 74
    const-string v1, "99"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 75
    const-string v1, "40000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 76
    const-string v1, "20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TIMER_RATE:Ljava/lang/String;
    :try_end_121
    .catchall {:try_start_109 .. :try_end_121} :catchall_1bc

    .line 78
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "SSRMv2:GovernorAdonisPrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_ff

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1bc
    move-exception v1

    const-string v2, "SSRMv2:GovernorAdonisPrime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "SSRMv2:GovernorAdonisPrime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "SSRMv2:GovernorAdonisPrime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "SSRMv2:GovernorAdonisPrime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "SSRMv2:GovernorAdonisPrime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "SSRMv2:GovernorAdonisPrime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v1
.end method


# virtual methods
.method protected onBrowserDashMode(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->updateParameters()V

    .line 225
    return-void
.end method

.method public onFgAppChanged()V
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 109
    :goto_6
    return-void

    .line 95
    :cond_7
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 96
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

    .line 101
    :cond_4c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 106
    :goto_4f
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->updateParameters()V

    goto :goto_6

    .line 103
    :cond_59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    goto :goto_4f
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 113
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 201
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 202
    if-eqz p2, :cond_21

    .line 203
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    .line 207
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->updateParameters()V

    .line 209
    :cond_11
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 210
    if-eqz p2, :cond_24

    .line 211
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    .line 215
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->updateParameters()V

    .line 217
    :cond_20
    return-void

    .line 205
    :cond_21
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    goto :goto_e

    .line 213
    :cond_24
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    goto :goto_1d
.end method

.method revertGovernorParametersAsDefault()V
    .registers 3

    .prologue
    .line 153
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setBrowserPageLoading(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_a

    .line 193
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "600000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_9
    return-void

    .line 195
    :cond_a
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected updateParameters()V
    .registers 10

    .prologue
    .line 162
    const-string v0, "SSRMv2:GovernorAdonisPrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParameters:: mIsTargetAppInForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsCameraRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v8

    .line 166
    .local v8, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v7

    .line 168
    .local v7, "isBrowserForeground":Z
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_4e

    .line 169
    :cond_3d
    const-string v1, "60 800000:65 1400000:70"

    const-string v2, "19000"

    const-string v3, "650000"

    const-string v4, "90"

    const-string v5, "79000"

    const-string v6, "20000"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_4d
    return-void

    .line 171
    :cond_4e
    if-eqz v7, :cond_64

    .line 172
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    if-eqz v0, :cond_5c

    .line 173
    const-string v0, "80 1000000:99"

    const-string v1, "20000 650000:100000 1200000:400000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 175
    :cond_5c
    const-string v0, "70 600000:99 1700000:80"

    const-string v1, "20000 650000:100000 1200000:400000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 178
    :cond_64
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_70

    .line 179
    const-string v0, "70 650000:95 800000:99"

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 181
    :cond_70
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    if-eqz v0, :cond_7c

    .line 182
    const-string v0, "70 650000:95 800000:99"

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 184
    :cond_7c
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    if-eqz v0, :cond_86

    .line 185
    const-string v0, "80 900000:99"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;)V

    goto :goto_4d

    .line 187
    :cond_86
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->revertGovernorParametersAsDefault()V

    goto :goto_4d
.end method

.method writeGovernorParameters(Ljava/lang/String;)V
    .registers 9
    .param p1, "targetLoads"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "targetLoads"    # Ljava/lang/String;
    .param p2, "aboveHispeedDelay"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method writeGovernorParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "targetLoads"    # Ljava/lang/String;
    .param p2, "aboveHispeedDelay"    # Ljava/lang/String;
    .param p3, "hispeedFreq"    # Ljava/lang/String;
    .param p4, "goHispeedLoad"    # Ljava/lang/String;
    .param p5, "minSampleTime"    # Ljava/lang/String;
    .param p6, "timerRate"    # Ljava/lang/String;

    .prologue
    .line 125
    if-nez p1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 128
    :cond_4
    if-nez p2, :cond_8

    .line 129
    iget-object p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 131
    :cond_8
    if-nez p3, :cond_c

    .line 132
    iget-object p3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 134
    :cond_c
    if-nez p4, :cond_10

    .line 135
    iget-object p4, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 137
    :cond_10
    if-nez p5, :cond_14

    .line 138
    iget-object p5, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 140
    :cond_14
    if-nez p6, :cond_18

    .line 141
    iget-object p6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 144
    :cond_18
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    invoke-static {v0, p2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    invoke-static {v0, p3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    invoke-static {v0, p4}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    invoke-static {v0, p5}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    invoke-static {v0, p6}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
