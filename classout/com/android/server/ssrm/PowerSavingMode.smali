.class Lcom/android/server/ssrm/PowerSavingMode;
.super Ljava/lang/Object;
.source "PowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mCpuFreqTable:[I

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

.field mPowerSavingMode:Z

.field mPowerSavingModeCpu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "SSRMv2:PowerSavingMode"

    sput-object v0, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v4, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingMode:Z

    .line 41
    iput-boolean v4, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingModeCpu:Z

    .line 68
    new-instance v0, Lcom/android/server/ssrm/PowerSavingMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/PowerSavingMode$1;-><init>(Lcom/android/server/ssrm/PowerSavingMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object p1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;-><init>(Lcom/android/server/ssrm/PowerSavingMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    .line 50
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_cpu_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_POWER_SAVING_MODE"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    .line 56
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    if-eqz v0, :cond_58

    .line 57
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-wide v4, 0x3fe6666666666666L

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 61
    :cond_58
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/ssrm/PowerSavingMode;->onSettingChanged()V

    .line 66
    return-void
.end method


# virtual methods
.method adjustChargingCurrentForUsPorivder()V
    .registers 6

    .prologue
    .line 117
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 118
    const-string v0, "/sys/class/power_supply/battery/test_charge_current"

    .line 119
    .local v0, "CHARGING_CURRENT_PATH":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/test_charge_current"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 121
    iget-boolean v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingMode:Z

    if-eqz v2, :cond_2d

    .line 122
    sget-object v2, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const-string v4, "530"

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v0    # "CHARGING_CURRENT_PATH":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_2c
    :goto_2c
    return-void

    .line 124
    .restart local v0    # "CHARGING_CURRENT_PATH":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    :cond_2d
    sget-object v2, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const-string v4, "460"

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method onSettingChanged()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "powerSavingMode":I
    if-ne v1, v5, :cond_5c

    .line 90
    iput-boolean v5, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingMode:Z

    .line 91
    invoke-static {v5}, Lcom/android/server/ssrm/DeviceStatus;->setPowerSavingMode(Z)V

    .line 97
    :goto_15
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_cpu_clock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "cpuPowerSaving":I
    if-ne v0, v5, :cond_62

    .line 100
    iput-boolean v5, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingModeCpu:Z

    .line 105
    :goto_25
    sget-object v2, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PSM_CPU = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingModeCpu:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-boolean v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingMode:Z

    if-eqz v2, :cond_65

    iget-boolean v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingModeCpu:Z

    if-eqz v2, :cond_65

    .line 108
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 113
    :goto_58
    invoke-virtual {p0}, Lcom/android/server/ssrm/PowerSavingMode;->adjustChargingCurrentForUsPorivder()V

    .line 114
    return-void

    .line 93
    .end local v0    # "cpuPowerSaving":I
    :cond_5c
    iput-boolean v4, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingMode:Z

    .line 94
    invoke-static {v4}, Lcom/android/server/ssrm/DeviceStatus;->setPowerSavingMode(Z)V

    goto :goto_15

    .line 102
    .restart local v0    # "cpuPowerSaving":I
    :cond_62
    iput-boolean v4, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPowerSavingModeCpu:Z

    goto :goto_25

    .line 110
    :cond_65
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    goto :goto_58
.end method
