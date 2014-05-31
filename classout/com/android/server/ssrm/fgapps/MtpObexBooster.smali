.class public final Lcom/android/server/ssrm/fgapps/MtpObexBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "MtpObexBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:MtpObexBooster"


# instance fields
.field mBusFreqLockHelper:Landroid/os/DVFSHelper;

.field mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

.field mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field mLockAcquired:Z

.field mMtpTransferOn:Z

.field mObexTransferOn:Z

.field mUsb30Enabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    .line 37
    return-void
.end method


# virtual methods
.method enableDBurstMode(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 129
    const-string v3, "SSRMv2:MtpObexBooster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDBurstMode:: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "/sys/block/mmcblk0/bkops_en"

    .line 132
    .local v0, "MMC_BURST_PATH":Ljava/lang/String;
    const/16 v1, 0x40

    .line 133
    .local v1, "MMC_DBURST_MODE_VALUE":I
    const/4 v2, 0x0

    .line 135
    .local v2, "MMC_NORMAL_MODE_VALUE":I
    if-eqz p1, :cond_29

    .line 136
    const-string v3, "SSRMv2:MtpObexBooster"

    const-string v4, "/sys/block/mmcblk0/bkops_en"

    const-string v5, "64"

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_28
    return-void

    .line 138
    :cond_29
    const-string v3, "SSRMv2:MtpObexBooster"

    const-string v4, "/sys/block/mmcblk0/bkops_en"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public onBootComplete()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    .line 53
    const v6, 0x13d620

    .line 55
    .local v6, "MTP_ARM_MIN_FREQ":I
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string v2, "MTP_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    .line 56
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x13d620

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 59
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string v2, "MTP_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 61
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v8

    .line 62
    .local v8, "coreNumTable":[I
    if-eqz v8, :cond_49

    array-length v0, v8

    if-lez v0, :cond_49

    .line 63
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_6c

    .line 64
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 70
    :cond_49
    :goto_49
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string v2, "MTP_BUS_BOOSTER"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    .line 71
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v7

    .line 72
    .local v7, "busFreqTable":[I
    if-eqz v7, :cond_6b

    array-length v0, v7

    if-lez v0, :cond_6b

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    aget v2, v7, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 75
    :cond_6b
    return-void

    .line 66
    .end local v7    # "busFreqTable":[I
    :cond_6c
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_49
.end method

.method public onFgAppChanged()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 79
    return-void
.end method

.method onMTPStatusChanged()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    const-string v2, "SSRMv2:MtpObexBooster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMTPStatusChanged:: mMtpTransferOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mObexTransferOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    if-nez v2, :cond_30

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    if-eqz v2, :cond_51

    .line 101
    :cond_30
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-nez v2, :cond_45

    .line 102
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 103
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 104
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 105
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    .line 114
    :cond_45
    :goto_45
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-eqz v2, :cond_67

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    if-eqz v2, :cond_67

    :goto_4d
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->enableDBurstMode(Z)V

    .line 115
    return-void

    .line 107
    :cond_51
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-eqz v2, :cond_45

    .line 108
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 109
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 110
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 111
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    goto :goto_45

    :cond_67
    move v0, v1

    .line 114
    goto :goto_4d
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "connected"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 158
    .local v2, "connected":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "configured"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 159
    .local v1, "configured":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "mtp"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 160
    .local v4, "mtp":Z
    const-string v5, "SSRMv2:MtpObexBooster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB_STATE:: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v5, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "usb"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 162
    .local v3, "mUsbManager":Landroid/hardware/usb/UsbManager;
    if-eqz v2, :cond_73

    if-eqz v1, :cond_73

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 163
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onUsb30StatusChanged(Z)V

    .line 168
    .end local v1    # "configured":Z
    .end local v2    # "connected":Z
    .end local v3    # "mUsbManager":Landroid/hardware/usb/UsbManager;
    .end local v4    # "mtp":Z
    :cond_72
    :goto_72
    return-void

    .line 165
    .restart local v1    # "configured":Z
    .restart local v2    # "connected":Z
    .restart local v3    # "mUsbManager":Landroid/hardware/usb/UsbManager;
    .restart local v4    # "mtp":Z
    :cond_73
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onUsb30StatusChanged(Z)V

    goto :goto_72
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "MTP_fileTransfer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 84
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    if-eq v0, p2, :cond_11

    .line 85
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    .line 94
    :cond_11
    :goto_11
    return-void

    .line 88
    :cond_12
    const-string v0, "OBEX_dataTransfer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 89
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    if-eq v0, p2, :cond_11

    .line 90
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    goto :goto_11
.end method

.method onUsb30StatusChanged(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    if-eq v0, p1, :cond_9

    .line 146
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    .line 149
    :cond_9
    return-void
.end method

.method public onUsbConnectionStatusChanged(Z)V
    .registers 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string v0, "SSRMv2:MtpObexBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbConnectionStatusChanged:: connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-nez p1, :cond_22

    .line 122
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    .line 126
    :cond_22
    return-void
.end method
