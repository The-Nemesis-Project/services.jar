.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Pro.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field DEFAULT_BOOST_MS:Ljava/lang/String;

.field DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

.field DEFAULT_HISPEED_FREQ:Ljava/lang/String;

.field DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

.field DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

.field DEFAULT_TARGET_LOADS:Ljava/lang/String;

.field DEFAULT_TIMER_RATE:Ljava/lang/String;

.field final PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field final PATH_BOOST_MS:Ljava/lang/String;

.field final PATH_GO_HISPEED_LOAD:Ljava/lang/String;

.field final PATH_HISPEED_FREQ:Ljava/lang/String;

.field final PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

.field final PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field final PATH_SYNC_THRESHOLD:Ljava/lang/String;

.field final PATH_TARGET_LOADS:Ljava/lang/String;

.field final PATH_TIMER_RATE:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsFullScreenMode:Z

.field mIsGameForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 29
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->TAG:Ljava/lang/String;

    .line 31
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_TARGET_LOADS:Ljava/lang/String;

    .line 33
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 35
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_HISPEED_FREQ:Ljava/lang/String;

    .line 37
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 39
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 41
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_TIMER_RATE:Ljava/lang/String;

    .line 43
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 45
    const-string v1, "/sys/module/cpu_boost/parameters/sync_threshold"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    .line 47
    const-string v1, "/sys/module/cpu_boost/parameters/boost_ms"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->PATH_BOOST_MS:Ljava/lang/String;

    .line 67
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsGameForeground:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    .line 75
    :try_start_34
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 76
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 77
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 78
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 79
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 80
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 81
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 83
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/module/cpu_boost/parameters/sync_threshold"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 84
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    const-string v2, "/sys/module/cpu_boost/parameters/boost_ms"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_BOOST_MS:Ljava/lang/String;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_8e} :catch_17e
    .catchall {:try_start_34 .. :try_end_8e} :catchall_28c

    .line 97
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_175
    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "dm"

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 109
    return-void

    .line 85
    :catch_17e
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17f
    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 87
    const-string v1, "99"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 88
    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 89
    const-string v1, "40000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 90
    const-string v1, "85 1400000:90 1700000:95"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 91
    const-string v1, "20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 92
    const-string v1, "100000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 94
    const-string v1, "1497600"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 95
    const-string v1, "20"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_BOOST_MS:Ljava/lang/String;
    :try_end_1a3
    .catchall {:try_start_17f .. :try_end_1a3} :catchall_28c

    .line 97
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "SSRMv2:GovernorSD8974Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_175

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_28c
    move-exception v1

    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "SSRMv2:GovernorSD8974Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_BOOST_MS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    throw v1
.end method


# virtual methods
.method public onBrowserDashMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->updateParameters()V

    .line 143
    return-void
.end method

.method public onFgAppChanged()V
    .registers 6

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 138
    :cond_6
    :goto_6
    return-void

    .line 122
    :cond_7
    sget-object v4, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v3

    .line 123
    .local v3, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v3, v2}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 124
    .local v0, "isBrowserForeground":Z
    const/4 v1, 0x0

    .line 125
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

    .line 130
    :cond_3a
    const/4 v1, 0x1

    .line 133
    :cond_3b
    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    if-ne v4, v0, :cond_43

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsGameForeground:Z

    if-eq v4, v1, :cond_6

    .line 134
    :cond_43
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsGameForeground:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->updateParameters()V

    goto :goto_6
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
    .line 149
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 150
    const-string v0, "SSRMv2:GovernorSD8974Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->updateParameters()V

    .line 154
    :cond_25
    return-void
.end method

.method public updateParameters()V
    .registers 3

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_4c

    .line 158
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1574400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "60 1000000:65 1600000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "/sys/module/cpu_boost/parameters/sync_threshold"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_4b
    return-void

    .line 170
    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    if-eqz v0, :cond_98

    .line 171
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "/sys/module/cpu_boost/parameters/sync_threshold"

    const-string v1, "960000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 184
    :cond_98
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "/sys/module/cpu_boost/parameters/sync_threshold"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b
.end method
