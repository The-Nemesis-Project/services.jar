.class public Lcom/android/server/ssrm/Limiter;
.super Ljava/lang/Object;
.source "Limiter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mArmFreqTable:[I

.field public static mCurLimitCPUFreq:I

.field public static mCurLimitGPUFreq:I

.field private static mCurrentDynamicFpsLevel:I

.field public static mGpuFreqTable:[I


# instance fields
.field private final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String;

.field private final SYSFS_CHARGING_CURRENT:Ljava/lang/String;

.field private final mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

.field private final mArmCoreNumTable:[I

.field private final mArmFreqMaxHelper:Landroid/os/DVFSHelper;

.field mContext:Landroid/content/Context;

.field private mCurrentChargingPercent:I

.field mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

.field mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

.field final mIntentSendSIOPLevel:Landroid/content/Intent;

.field private mLastCameraFlash:Z

.field private mLastCameraRecording:Z

.field private mLastSmartBonding:Z

.field private mLimitCameraFlash:Z

.field private mLimitCameraRecording:Z

.field private mLimitSmartBonding:Z

.field mPreviousSiopLevel:I

.field private final mSiopLevelChangedIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 35
    const-string v0, "SSRMv2:Limiter"

    sput-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    .line 59
    const/16 v0, 0x63

    sput v0, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    .line 82
    sput v1, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    .line 218
    sput v1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x11

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 49
    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    .line 53
    const-string v0, "/sys/class/power_supply/battery/siop_level"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->SYSFS_CHARGING_CURRENT:Ljava/lang/String;

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    .line 57
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    .line 180
    const-string v0, "android.intent.action.SIOP_LEVEL_CHANGED"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String;

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mPreviousSiopLevel:I

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    .line 66
    iput-object p1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_ARM_MAX"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    .line 71
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_CORE_NUM_MAX"

    const/16 v3, 0xf

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    .line 75
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GPU_FREQ_MAX"

    move v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 77
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GPU_FREQ_MAX"

    move v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    .line 79
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    .line 80
    return-void
.end method

.method public static setDynamicFpsLevel(I)V
    .registers 7
    .param p0, "level"    # I

    .prologue
    .line 130
    sget v3, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    if-ne v3, p0, :cond_5

    .line 153
    :cond_4
    :goto_4
    return-void

    .line 135
    :cond_5
    :try_start_5
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 136
    .local v2, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v2, :cond_4

    .line 137
    sget-object v3, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDynamicFpsLevel:: level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v3, -0x1

    if-eq p0, v3, :cond_2c

    const/16 v3, 0x63

    if-le p0, v3, :cond_50

    .line 139
    :cond_2c
    const/16 p0, 0x63

    .line 143
    :cond_2e
    :goto_2e
    sput p0, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 145
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v3, 0x3fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_46} :catch_47

    goto :goto_4

    .line 150
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :catch_47
    move-exception v1

    .line 151
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v4, "setDynamicFpsLevel:: failed: SurfaceFlinger is dead!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 140
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_50
    if-gez p0, :cond_2e

    .line 141
    const/4 p0, 0x0

    goto :goto_2e
.end method


# virtual methods
.method public broadcastSiopChangedIntent()V
    .registers 7

    .prologue
    .line 185
    const-string v1, "flash_led_disable"

    .line 186
    .local v1, "EXTRA_FLASH_LED_DISABLE":Ljava/lang/String;
    const-string v0, "camera_recording_disable"

    .line 187
    .local v0, "EXTRA_CAMERA_RECORDING_DISABLE":Ljava/lang/String;
    const-string/jumbo v2, "smart_bonding_disable"

    .line 189
    .local v2, "EXTRA_SMARTBONDING_DISABLE":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    iget-boolean v4, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    if-ne v3, v4, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    iget-boolean v4, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    if-ne v3, v4, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    iget-boolean v4, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    if-ne v3, v4, :cond_1a

    .line 205
    :goto_19
    return-void

    .line 193
    :cond_1a
    iget-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    .line 194
    iget-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    .line 195
    iget-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    .line 197
    sget-object v3, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastSiopChangedIntent:: FLASH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RECORDING = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EXTRA_SMARTBONDING_DISABLE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v4, "flash_led_disable"

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    iget-object v3, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v4, "camera_recording_disable"

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    iget-object v3, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string/jumbo v4, "smart_bonding_disable"

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    iget-object v3, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method public broadcastSiopLevelIntent(I)V
    .registers 5
    .param p1, "currentSiopLevel"    # I

    .prologue
    .line 212
    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mPreviousSiopLevel:I

    if-eq v0, p1, :cond_15

    .line 213
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    const-string/jumbo v1, "siop_level_broadcast"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 216
    :cond_15
    return-void
.end method

.method public isAvailableGpuFreq(I)Z
    .registers 8
    .param p1, "freq"    # I

    .prologue
    const/4 v4, 0x1

    .line 237
    const/4 v5, -0x1

    if-ne p1, v5, :cond_5

    .line 246
    :cond_4
    :goto_4
    return v4

    .line 241
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_12

    aget v1, v0, v2

    .line 242
    .local v1, "f":I
    if-eq v1, p1, :cond_4

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 246
    .end local v1    # "f":I
    :cond_12
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public final limitArmCoreNum(I)V
    .registers 6
    .param p1, "coreNum"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    .line 113
    :cond_a
    :goto_a
    return-void

    .line 107
    :cond_b
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_15

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1b

    .line 108
    :cond_15
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_a

    .line 110
    :cond_1b
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 111
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_a
.end method

.method public limitArmMaxFreq(I)V
    .registers 6
    .param p1, "freq"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-nez v0, :cond_5

    .line 100
    :goto_4
    return-void

    .line 89
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, -0x1

    if-ne p1, v0, :cond_28

    .line 92
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 99
    :goto_25
    sput p1, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    goto :goto_4

    .line 94
    :cond_28
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 95
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2, p1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 97
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_25
.end method

.method limitChargingCurrent(I)V
    .registers 6
    .param p1, "percent"    # I

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitChargingCurrent:: percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-ltz p1, :cond_1e

    const/16 v0, 0x64

    if-le p1, v0, :cond_20

    .line 119
    :cond_1e
    const/16 p1, 0x64

    .line 121
    :cond_20
    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    if-ne p1, v0, :cond_25

    .line 127
    :goto_24
    return-void

    .line 125
    :cond_25
    iput p1, p0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    .line 126
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/siop_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public limitFlashLed(Z)V
    .registers 5
    .param p1, "bLimit"    # Z

    .prologue
    .line 160
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitFlashLed:: bLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    .line 162
    return-void
.end method

.method public limitGPUFreq(I)V
    .registers 6
    .param p1, "freq"    # I

    .prologue
    .line 221
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Limiter;->isAvailableGpuFreq(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 234
    :cond_22
    :goto_22
    return-void

    .line 227
    :cond_23
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2d

    const/4 v0, -0x1

    if-ne p1, v0, :cond_35

    .line 228
    :cond_2d
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 233
    :goto_32
    sput p1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    goto :goto_22

    .line 230
    :cond_35
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 231
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_32
.end method

.method public limitGPUFreqForGame(I)V
    .registers 6
    .param p1, "freq"    # I

    .prologue
    .line 250
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Limiter;->isAvailableGpuFreq(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 262
    :cond_22
    :goto_22
    return-void

    .line 256
    :cond_23
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2d

    const/4 v0, -0x1

    if-ne p1, v0, :cond_33

    .line 257
    :cond_2d
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_22

    .line 259
    :cond_33
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 260
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_22
.end method

.method public limitRecording(Z)V
    .registers 5
    .param p1, "recordingStop"    # Z

    .prologue
    .line 165
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitRecording:: recordingStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    .line 167
    return-void
.end method

.method public limitSmartBonding(Z)V
    .registers 5
    .param p1, "bLimit"    # Z

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitSmartBonding:: bLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    .line 172
    return-void
.end method

.method public rewriteChargingCurrent()V
    .registers 5

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/siop_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setResetBatteryCharging(Z)V
    .registers 8
    .param p1, "setDisableCharging"    # Z

    .prologue
    .line 265
    const-string v0, "/sys/class/power_supply/battery/batt_slate_mode"

    .line 267
    .local v0, "FILE_CHANGE_CHARGING_STATUS":Ljava/lang/String;
    const/4 v2, 0x0

    .line 269
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/power_supply/battery/batt_slate_mode"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_67
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_40
    .catchall {:try_start_3 .. :try_end_a} :catchall_50

    .line 270
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_1f

    .line 271
    :try_start_c
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Going to disable battery charging"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_18} :catch_2c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_64
    .catchall {:try_start_c .. :try_end_18} :catchall_61

    .line 283
    :goto_18
    if-eqz v3, :cond_1d

    .line 284
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_5c

    :cond_1d
    :goto_1d
    move-object v2, v3

    .line 290
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1e
    :goto_1e
    return-void

    .line 274
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1f
    :try_start_1f
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Going to enable battery charging"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2b} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2b} :catch_64
    .catchall {:try_start_1f .. :try_end_2b} :catchall_61

    goto :goto_18

    .line 277
    :catch_2c
    move-exception v1

    move-object v2, v3

    .line 278
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_2e
    :try_start_2e
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Exception in opening the file /sys/class/power_supply/battery/batt_slate_mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_50

    .line 283
    if-eqz v2, :cond_1e

    .line 284
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_1e

    .line 286
    :catch_3b
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    :goto_3c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    :catch_40
    move-exception v1

    .line 280
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_41
    :try_start_41
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Exception in creating the FileOutputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_50

    .line 283
    if-eqz v2, :cond_1e

    .line 284
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_1e

    .line 286
    :catch_4e
    move-exception v1

    goto :goto_3c

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_50
    move-exception v4

    .line 283
    :goto_51
    if-eqz v2, :cond_56

    .line 284
    :try_start_53
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    .line 282
    :cond_56
    :goto_56
    throw v4

    .line 286
    :catch_57
    move-exception v1

    .line 287
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_5c
    move-exception v1

    .line 287
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_61
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_51

    .line 279
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_64
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_41

    .line 277
    :catch_67
    move-exception v1

    goto :goto_2e
.end method
