.class public final Lcom/android/server/power/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$TimeMeasurement;,
        Lcom/android/server/power/PowerManagerService$InputDeviceLightState;,
        Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;,
        Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_POWER_OFF:Ljava/lang/String; = "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

.field private static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field private static final AUTO_POWER_OFF_REQUEST:I = 0x0

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field public static final COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final COVER_SYSFS:Ljava/lang/String; = "/sys/class/sec/sec_key/hall_detect"

.field private static final DEBUG:Z = false

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_AUTO_POWER_OFF:I = 0x8000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_BUTTON_EVENT:I = 0x4000

.field private static final DIRTY_DOCK_STATE:I = 0x800

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_ON_BLOCKER_RELEASED:I = 0x400

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_TOUCHKEY_EVENT:I = 0x1000

.field private static final DIRTY_TOUCHSCREEN_EVENT:I = 0x2000

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DREAM_BATTERY_LEVEL_DRAIN_CUTOFF:I = 0x5

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final LOW_BATTERY_LEVEL:I = 0x5

.field private static final MAXIMUM_SCREEN_DIM_RATIO:F = 0.2f

.field private static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0xbb8

.field private static final MONITOR_WAKELOCK_CONTROLFILE_DIR:Ljava/lang/String; = "/data/monitor"

.field private static final MONITOR_WAKELOCK_CONTROLFILE_NAME1:Ljava/lang/String; = "wakelock.1"

.field private static final MONITOR_WAKELOCK_CONTROLFILE_NAME2:Ljava/lang/String; = "monitor.1"

.field public static final MONITOR_WAKELOCK_FLAG_SAVED:Ljava/lang/String; = "com.android.server.Monitor.Wakelocks"

.field private static final MONITOR_WAKELOCK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.AUTHORISED_FOR_NETWORK_WAKELOCK_MONITORING"

.field private static final MSG_CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x4

.field private static final MSG_PRE_SMART_STAY:I = 0x2

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_ON_BLOCKER_RELEASED:I = 0x3

.field private static final MSG_SMART_STAY:I = 0x1

.field private static final MSG_UPDATE_AUTO_POWER_OFF_TIME:I = 0x5

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SCREEN_DIM_DURATION:I = 0x1b58

.field private static final SYSTEM_SHUTDOWN:Ljava/lang/String; = "system_shutdown"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field private static final TAG_AUTO_POWER_OFF:Ljava/lang/String; = "[auto power off] "

.field private static final TAG_ETC:Ljava/lang/String; = ""

.field private static final TAG_INPUT_DEVICE_LIGHT:Ljava/lang/String; = "[input device light] "

.field public static final TAG_POWER_STATE:Ljava/lang/String; = "[ps] "

.field public static final TAG_POWER_STATE_V:Ljava/lang/String; = "[s] "

.field private static final TAG_PRINT_WAKE_LOCK:Ljava/lang/String; = "[PWL] "

.field private static final TAG_SMART_STAY:Ljava/lang/String; = "[smart stay] "

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final WAKEFULNESS_ASLEEP:I = 0x0

.field private static final WAKEFULNESS_AWAKE:I = 0x1

.field private static final WAKEFULNESS_DREAMING:I = 0x3

.field private static final WAKEFULNESS_NAPPING:I = 0x2

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static final mIsNorthAmericaSalesCode:Z

.field private static final mSalesCode:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private final mAutoPowerOffDelay:I

.field private mAutoPowerOffEventTime:J

.field private final mAutoPowerOffLock:Ljava/lang/Object;

.field private mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

.field private final mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mAutoPowerOffTimeMillis:J

.field private mAutoPowerOffTimeoutSetting:I

.field private mBatteryLevel:I

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private final mCountLimit:I

.field private final mCountToShowLogForFrequentEvent:I

.field private mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDelayTimePrintWakeLock:J

.field private mDirty:I

.field private final mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

.field private final mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDreamManager:Lcom/android/server/dreams/DreamManagerService;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mDynamicAutoBrightnessRatioValueSetting:I

.field private mFaceDetected:Z

.field private mFaceDetectedFailIntent:Landroid/content/Intent;

.field private final mFakeShutdownSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mForceDisableWakeLock:Z

.field private final mGlobalConfig_smartStay:Z

.field private mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private mHandlerBlankUnblankDisplay:Landroid/os/Handler;

.field private mHandlerSmartStay:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHandlerThreadBlankUnblankDisplay:Landroid/os/HandlerThread;

.field private mHandlerThreadSmartStay:Landroid/os/HandlerThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private final mIsBadCurrentConsumptionDevice:Z

.field private final mIsBlankUnblankInSeperateThread:Z

.field public mIsCoverClosed:Z

.field private mIsDeviceLockTime:Z

.field private mIsFolderType:Z

.field private mIsKeyboardVisible:Z

.field public mIsLidClosed:Z

.field private mIsPowered:Z

.field private mIsReadyCoverFromPWM:Z

.field public mIsSipVisible:Z

.field private mIsTablet:Z

.field private mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private final mKeyboardOffTimeoutSetting:I

.field private mLastBrightnessOverrideState:Z

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastScreenTimeout:I

.field private mLastSleepTime:J

.field private mLastUserActivitySummary:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private final mLockBlankUnblankDisplay:Ljava/lang/Object;

.field private final mMapPreventAutoPowerOff:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMonitorEnabled:Z

.field private mNativeUserActivityCount:I

.field private mNextTimeoutForPreSmartStay:J

.field private mNextTimeoutForSmartStay:J

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mPendingMessagePreSmartStay:Z

.field private mPendingMessageSmartStay:Z

.field private mPendingUpdateBlankUnblankDisplay:Z

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerIsChanged:Z

.field private final mPreSmartStayDelay:I

.field private mPrevReleasedWakeLock:Ljava/lang/String;

.field private final mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

.field private final mProductName:Ljava/lang/String;

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenDimDurationOverrideFromWindowManager:J

.field private mScreenOffReason:Ljava/lang/String;

.field private mScreenOffTimeoutSetting:I

.field private final mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

.field private mScreenOnReason:Ljava/lang/String;

.field private mSecuredLockEnableSetting:I

.field private mSecuredLockTimeoutSetting:I

.field private mSendGoToSleepFinishedNotificationWhenReady:Z

.field private mSendWakeUpFinishedNotificationWhenReady:Z

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mShutdownByAutoPowerOff:Z

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

.field private final mSmartStayDelay:I

.field private mSmartStayEnabledSetting:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

.field private mTouchKeyOffTimeoutOverrideFromWindowManager:J

.field private mTouchKeyOffTimeoutSetting:I

.field private mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field mWakeUpEvenThoughProximityPositive:Z

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakefulness:I

.field private mWakelockMonitorReceiver:Landroid/content/BroadcastReceiver;

.field private final mWhenCheckSmartStay:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 477
    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    .line 478
    const-string v0, "VZW"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "ATT"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "TMB"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "SPR"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "VMU"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "MTR"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "USC"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "BST"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "XAS"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "LRA"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "SPT"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "CSP"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "AIO"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "TFN"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "CRI"

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    :cond_a8
    const/4 v0, 0x1

    :goto_a9
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    return-void

    :cond_ac
    const/4 v0, 0x0

    goto :goto_a9
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 530
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 133
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mMonitorEnabled:Z

    .line 271
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 272
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 274
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 276
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    .line 280
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 281
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceLockTime:Z

    .line 282
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    .line 283
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 332
    new-instance v0, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v0}, Lcom/android/server/power/DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 384
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 415
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 442
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 451
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 456
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 461
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 467
    const/high16 v0, 0x7fc00000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 470
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    .line 485
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    .line 491
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    .line 492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeMillis:J

    .line 493
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerIsChanged:Z

    .line 494
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffDelay:I

    .line 497
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    .line 501
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    .line 506
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    .line 518
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    .line 2947
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z

    .line 2981
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 3077
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    .line 3349
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 4060
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/Hashtable;

    .line 4289
    new-instance v0, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakelockMonitorReceiver:Landroid/content/BroadcastReceiver;

    .line 4908
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    .line 4909
    new-instance v0, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4925
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 4926
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsReadyCoverFromPWM:Z

    .line 4928
    new-instance v0, Lcom/android/server/power/PowerManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5004
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsBlankUnblankInSeperateThread:Z

    .line 5008
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z

    .line 5009
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;

    .line 5015
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 5024
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mGlobalConfig_smartStay:Z

    .line 5025
    const-string v0, "2000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    .line 5026
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPreSmartStayDelay:I

    .line 5027
    const-string v0, "ro.product.device"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProductName:Ljava/lang/String;

    .line 5031
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsBadCurrentConsumptionDevice:Z

    .line 5033
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWhenCheckSmartStay:I

    .line 5037
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    .line 5038
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    .line 5039
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    .line 5040
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 5041
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    .line 5042
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    .line 5045
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsTablet:Z

    .line 5192
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 5193
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 5194
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    .line 5197
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    .line 5198
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    .line 5200
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mCountToShowLogForFrequentEvent:I

    .line 5201
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mCountLimit:I

    .line 5202
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    .line 5266
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    .line 5267
    new-instance v0, Lcom/android/server/power/PowerManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$9;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    .line 532
    const-string v0, "PowerManagerService"

    const-string v1, "[api] PowerManagerService()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_109
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 536
    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 537
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 540
    new-instance v0, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    .line 541
    new-instance v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .line 542
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 544
    const-string v0, "PowerManagerService"

    const-string v2, "[s] PowerManagerService() : WAKEFULNESS_AWAKE"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v0, "PowerManagerService.AutoPowerOff"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 552
    const-string v0, "PowerManagerService.FakeShutdown"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFakeShutdownSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 554
    monitor-exit v1
    :try_end_14c
    .catchall {:try_start_109 .. :try_end_14c} :catchall_165

    .line 557
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceLockTime:Z

    .line 561
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 562
    invoke-static {v3, v3}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 572
    return-void

    .line 554
    :catchall_165
    move-exception v0

    :try_start_166
    monitor-exit v1
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    throw v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1576(Lcom/android/server/power/PowerManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1884(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;JI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2084(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;J)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDebugLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mMonitorEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startWatchingForBootAnimationFinished()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenOnBlockerReleased()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkIfBootAnimationFinished()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleAutoPowerOffTime()V

    return-void
.end method

.method static synthetic access$3900(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Landroid/os/WorkSource;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$4100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    return-object v0
.end method

.method static synthetic access$5000(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method static synthetic access$5102(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/server/power/PowerManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide p1
.end method

.method static synthetic access$5214(Lcom/android/server/power/PowerManagerService;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsReadyCoverFromPWM:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsReadyCoverFromPWM:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->printWakeLockLocked()V

    return-void
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    .registers 19
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .prologue
    .line 1102
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1104
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move/from16 v0, p5

    if-eq v0, v2, :cond_1c

    .line 1111
    monitor-exit v11

    .line 1161
    :goto_1b
    return-void

    .line 1121
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v10

    .line 1122
    .local v10, "index":I
    if-ltz v10, :cond_6a

    .line 1123
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1124
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_50

    .line 1127
    const-string v2, "PowerManagerService"

    const-string v3, "acquireWakeLockInternal : Update existing wake lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1130
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Landroid/os/WorkSource;II)V

    .line 1131
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1144
    :cond_50
    :goto_50
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_e4

    .line 1157
    :goto_59
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1158
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1159
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1160
    monitor-exit v11

    goto :goto_1b

    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v10    # "index":I
    :catchall_67
    move-exception v2

    monitor-exit v11
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v2

    .line 1134
    .restart local v10    # "index":I
    :cond_6a
    :try_start_6a
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_67

    .line 1136
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    :try_start_7a
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7d} :catch_86
    .catchall {:try_start_7a .. :try_end_7d} :catchall_67

    .line 1140
    :try_start_7d
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1141
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 1137
    :catch_86
    move-exception v9

    .line 1138
    .local v9, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wake lock is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1146
    .end local v9    # "ex":Landroid/os/RemoteException;
    :sswitch_8f
    const/16 v2, 0xaa9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_59

    .line 1152
    :sswitch_a3
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] acquire WakeLock flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_7d .. :try_end_e1} :catchall_67

    goto/16 :goto_59

    .line 1144
    nop

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_8f
        0x6 -> :sswitch_a3
        0xa -> :sswitch_a3
        0x1a -> :sswitch_a3
        0x20 -> :sswitch_a3
    .end sparse-switch
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1175
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1176
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    if-eqz v0, :cond_10

    .line 1177
    const-string v0, "PowerManagerService"

    const-string v2, "[auto power off] applyWakeLockFlagsOnAcquireLocked is canceled."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    monitor-exit v1

    .line 1198
    :cond_f
    :goto_f
    return-void

    .line 1180
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_43

    .line 1183
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUserActivityNoUpdateLocked(J)Z

    goto :goto_f

    .line 1180
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1311
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    .line 1313
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] applyWakeLockFlagsOnReleaseLocked : userActivityNoUpdateLocked is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1320
    :cond_2b
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5252
    const-string v1, ""

    .line 5253
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5254
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 5256
    .local v0, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5258
    return-object v1
.end method

.method private static callerInfoWithProcessName()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 5222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5223
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 5226
    .local v4, "pid":I
    const/4 v5, 0x0

    .line 5227
    .local v5, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5229
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/%d/cmdline"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_26} :catch_61
    .catchall {:try_start_c .. :try_end_26} :catchall_78

    .line 5231
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 5232
    const-string v8, "\u0000"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5233
    .local v6, "t":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_38

    .line 5234
    const/4 v8, 0x0

    aget-object v5, v6, v8
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_38} :catch_8b
    .catchall {:try_start_26 .. :try_end_38} :catchall_88

    .line 5240
    .end local v6    # "t":[Ljava/lang/String;
    :cond_38
    if-eqz v2, :cond_8e

    .line 5242
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_57

    move-object v1, v2

    .line 5248
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_3e
    :goto_3e
    const-string v8, " (uid: %d pid: %d)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 5243
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_57
    move-exception v0

    .line 5244
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PowerManagerService"

    const-string v9, "error on in.close"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 5245
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 5237
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_61
    move-exception v0

    .line 5238
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_62
    :try_start_62
    const-string v8, "PowerManagerService"

    const-string v9, "error on read process name"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_78

    .line 5240
    if-eqz v1, :cond_3e

    .line 5242
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_3e

    .line 5243
    :catch_6f
    move-exception v0

    .line 5244
    const-string v8, "PowerManagerService"

    const-string v9, "error on in.close"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 5240
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_78
    move-exception v8

    :goto_79
    if-eqz v1, :cond_7e

    .line 5242
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 5245
    :cond_7e
    :goto_7e
    throw v8

    .line 5243
    :catch_7f
    move-exception v0

    .line 5244
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PowerManagerService"

    const-string v10, "error on in.close"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 5240
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_88
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_79

    .line 5237
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_8b
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_62

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_8e
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e
.end method

.method private canDreamLocked()Z
    .registers 2

    .prologue
    .line 2659
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private checkIfBootAnimationFinished()V
    .registers 5

    .prologue
    .line 3485
    const-string v0, "PowerManagerService"

    const-string v1, "[api] Check if boot animation finished..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3489
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3500
    :goto_17
    return-void

    .line 3494
    :cond_18
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3495
    :try_start_1b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_29

    .line 3496
    const-string v0, "PowerManagerService"

    const-string v2, "Boot animation finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBootCompletedLocked()V

    .line 3499
    :cond_29
    monitor-exit v1

    goto :goto_17

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private checkPreventAutoPowerOff()Z
    .registers 8

    .prologue
    .line 4062
    const/4 v2, 0x0

    .line 4063
    .local v2, "retVal":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v3

    .line 4065
    .local v3, "size":I
    const/4 v1, 0x0

    .line 4066
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_46

    .line 4067
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4068
    .local v0, "eachCount":Ljava/lang/Integer;
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[auto power off] checkPreventAutoPowerOff : eachCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    if-nez v0, :cond_3e

    .line 4066
    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4072
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3b

    .line 4073
    const/4 v2, 0x1

    goto :goto_3b

    .line 4077
    .end local v0    # "eachCount":Ljava/lang/Integer;
    :cond_46
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[auto power off] checkPreventAutoPowerOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    return v2
.end method

.method private checkWakelockMonitorControlFile()Z
    .registers 6

    .prologue
    .line 1000
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/monitor"

    const-string v3, "wakelock.1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1002
    .local v0, "exist":Z
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxzp) PWS>> checkWakelockMonitorControlFile: file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    if-nez v0, :cond_68

    .line 1004
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    const-string v2, "/data/monitor"

    const-string v3, "monitor.1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1006
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxzp) PWS>> checkWakelockMonitorControlFile: file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_68
    return v0
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 1415
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    :try_start_2
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 1416
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_17

    move-result v3

    if-ne p1, v3, :cond_14

    .line 1418
    const/4 v2, 0x1

    .line 1426
    :cond_13
    :goto_13
    return v2

    .line 1415
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1422
    :catch_17
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 4285
    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private crashInternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3687
    new-instance v1, Lcom/android/server/power/PowerManagerService$4;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    .local v1, "t":Ljava/lang/Thread;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3695
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    .line 3699
    :goto_d
    return-void

    .line 3696
    :catch_e
    move-exception v0

    .line 3697
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private createFolderForMonitorEx()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 577
    .local v0, "monitorDir":Ljava/io/File;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 578
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 587
    :cond_1b
    :goto_1b
    return-void

    .line 584
    :cond_1c
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 585
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 586
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_1b
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4264
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 4265
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4266
    return-object v0
.end method

.method private faceDetect()Z
    .registers 5

    .prologue
    .line 5133
    const/4 v0, 0x0

    .line 5138
    .local v0, "bFaceDetected":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v1, :cond_b

    .line 5139
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 5141
    :cond_b
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_2d

    .line 5142
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1}, Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartStay()Z

    move-result v0

    .line 5143
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[smart stay] faceDetect : bFaceDetected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    :cond_2d
    return v0
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1430
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1431
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1432
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    .line 1436
    .end local v1    # "i":I
    :goto_15
    return v1

    .line 1431
    .restart local v1    # "i":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1436
    :cond_19
    const/4 v1, -0x1

    goto :goto_15
.end method

.method private getDebugLevel()I
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 975
    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 978
    .local v0, "debugLevel":I
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDebugLevel  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 996
    :cond_2b
    :goto_2b
    return v3

    .line 983
    :cond_2c
    const/4 v5, 0x2

    :try_start_2d
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_36} :catch_41

    move-result v0

    .line 988
    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_2b

    .line 990
    const/16 v5, 0x494d

    if-ne v0, v5, :cond_43

    .line 991
    const/4 v3, 0x1

    goto :goto_2b

    .line 984
    :catch_41
    move-exception v1

    .line 985
    .local v1, "ne":Ljava/lang/NumberFormatException;
    goto :goto_2b

    .line 992
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_43
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_2b

    move v3, v4

    .line 993
    goto :goto_2b
.end method

.method private getDesiredScreenPowerStateLocked()I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3329
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v1, :cond_7

    .line 3330
    const/4 v0, 0x0

    .line 3346
    :cond_6
    :goto_6
    return v0

    .line 3333
    :cond_7
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_17

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_6

    .line 3337
    :cond_17
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_2f

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->stopLowPowerDim()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3341
    :cond_2f
    const/4 v0, 0x2

    goto :goto_6
.end method

.method private getScreenDimDurationLocked(I)I
    .registers 7
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 2445
    const/16 v0, 0x1b58

    .line 2446
    .local v0, "screenDimDuration":I
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_13

    .line 2447
    int-to-long v1, p1

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    .line 2452
    :goto_12
    return v0

    .line 2450
    :cond_13
    const/16 v1, 0x1b58

    int-to-float v2, p1

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_12
.end method

.method private getScreenOffTimeoutLocked()I
    .registers 8

    .prologue
    const/16 v6, 0xbb8

    .line 2413
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 2414
    .local v1, "timeout":I
    const/4 v0, 0x0

    .line 2415
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2416
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2418
    :cond_11
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1c

    .line 2419
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v1, v2

    .line 2422
    :cond_1c
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2425
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v2, :cond_39

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    if-lez v2, :cond_39

    .line 2426
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    if-le v0, v2, :cond_39

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    if-le v2, v6, :cond_39

    .line 2427
    const-string v2, "PowerManagerService"

    const-string v3, "getScreenOffTimeoutLocked return mSecuredLockTimeoutSetting"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    .line 2434
    :cond_39
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    if-eq v0, v2, :cond_63

    .line 2435
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[s] getScreenOffTimeoutLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    .line 2440
    :cond_63
    return v0
.end method

.method private getUSBWakePlug()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4078
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usbplugwake"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private goToSleepFromNative(JI)V
    .registers 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I

    .prologue
    .line 1834
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [s] goToSleepFromNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " goToSleepFromNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 1839
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JI)V

    .line 1840
    return-void
.end method

.method private goToSleepInternal(JI)V
    .registers 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1844
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1845
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1847
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/DisplayPowerController;->requestButtonLedState(Z)V

    .line 1850
    :cond_12
    monitor-exit v1

    .line 1851
    return-void

    .line 1850
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JI)Z
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1858
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v6, p1, v6

    if-ltz v6, :cond_14

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v6, :cond_16

    :cond_14
    move v4, v5

    .line 1917
    :goto_15
    return v4

    .line 1864
    :cond_16
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ps] Screen__Off("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const-string v6, ""

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1866
    const-string v6, ""

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 1869
    packed-switch p3, :pswitch_data_ac

    .line 1882
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep by user request..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const/4 p3, 0x0

    .line 1887
    :goto_4d
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 1888
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v6, p3}, Lcom/android/server/power/Notifier;->onGoToSleepStarted(I)V

    .line 1889
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    .line 1891
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 1892
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1893
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1896
    const-string v5, "PowerManagerService"

    const-string v6, "[s] WAKEFULNESS_ASLEEP"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p3, v5, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    .line 1904
    const/4 v2, 0x0

    .line 1905
    .local v2, "numWakeLocksCleared":I
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1906
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_74
    if-ge v0, v1, :cond_a5

    .line 1907
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1908
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    sparse-switch v5, :sswitch_data_b6

    .line 1906
    :goto_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 1871
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_8a
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to device administration policy..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1874
    :pswitch_92
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to screen timeout..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1878
    :pswitch_9a
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to proximity..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1912
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 1916
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_a5
    const/16 v5, 0xaa4

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    goto/16 :goto_15

    .line 1869
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_92
        :pswitch_9a
    .end packed-switch

    .line 1908
    :sswitch_data_b6
    .sparse-switch
        0x6 -> :sswitch_a2
        0xa -> :sswitch_a2
        0x1a -> :sswitch_a2
    .end sparse-switch
.end method

.method private handleAutoPowerOffTime()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 4025
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_9

    .line 4058
    :goto_8
    return-void

    .line 4030
    :cond_9
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4031
    :try_start_c
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-gez v2, :cond_1c

    .line 4032
    const-string v2, "PowerManagerService"

    const-string v4, "[auto power off] updateAutoPowerOffTime :: mAutoPowerOffTimeoutSetting is not initialized."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    monitor-exit v3

    goto :goto_8

    .line 4047
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v2

    .line 4037
    :cond_1c
    :try_start_1c
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeMillis:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_32

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-eqz v2, :cond_32

    :cond_2a
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z

    if-eqz v2, :cond_9c

    .line 4039
    :cond_32
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeMillis:J

    .line 4040
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[auto power off] updateAutoPowerOffTime :: mIsPowered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAutoPowerOffTimeoutSetting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mForceDisableWakeLock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    :cond_68
    :goto_68
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeMillis:J

    .line 4047
    .local v0, "offTime":J
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_1c .. :try_end_6b} :catchall_19

    .line 4049
    cmp-long v2, v0, v6

    if-lez v2, :cond_b0

    .line 4050
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4052
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[auto power off] updateAutoPowerOffTime :: set the Power Off Time after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 4043
    .end local v0    # "offTime":J
    :cond_9c
    :try_start_9c
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_68

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v2, :cond_68

    .line 4044
    const v2, 0x36ee80

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, -0x3e8

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeMillis:J
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_19

    goto :goto_68

    .line 4055
    .restart local v0    # "offTime":J
    :cond_b0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4056
    const-string v2, "PowerManagerService"

    const-string v3, "[auto power off] updateAutoPowerOffTime :: mAlarmManager is canceled."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method private handleBatteryStateChangedLocked()V
    .registers 2

    .prologue
    .line 3475
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3476
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3477
    return-void
.end method

.method private handleBootCompletedLocked()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 3503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3504
    .local v1, "now":J
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 3505
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3506
    const/16 v5, 0x3e8

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3508
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3509
    return-void
.end method

.method private handleDreamFinishedLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 2673
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 2675
    :cond_a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dream finished from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 2679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    .line 2681
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2690
    :cond_3b
    :goto_3b
    return-void

    .line 2684
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dream finished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 2686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 2687
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_3b
.end method

.method private handleSandman()V
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 2562
    const/4 v5, 0x0

    .line 2563
    .local v5, "startDreaming":Z
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2564
    const/4 v6, 0x0

    :try_start_7
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2565
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v0

    .line 2571
    .local v0, "canDream":Z
    if-eqz v0, :cond_14

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v6, v8, :cond_14

    .line 2572
    const/4 v5, 0x1

    .line 2574
    :cond_14
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_73

    .line 2579
    const/4 v4, 0x0

    .line 2580
    .local v4, "isDreaming":Z
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v6, :cond_2e

    .line 2581
    if-eqz v5, :cond_28

    .line 2582
    const-string v6, "PowerManagerService"

    const-string v7, "handleSandman : startDream()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6}, Lcom/android/server/dreams/DreamManagerService;->startDream()V

    .line 2585
    :cond_28
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6}, Lcom/android/server/dreams/DreamManagerService;->isDreaming()Z

    move-result v4

    .line 2589
    :cond_2e
    if-eqz v5, :cond_39

    if-nez v4, :cond_39

    .line 2590
    const-string v6, "PowerManagerService"

    const-string v7, "handleSandman : startDreaming, but isDreaming false"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_39
    const/4 v1, 0x0

    .line 2597
    .local v1, "continueDreaming":Z
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2598
    if-eqz v4, :cond_61

    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 2599
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v6, v8, :cond_76

    .line 2600
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2602
    const-string v6, "PowerManagerService"

    const-string v8, "[s] WAKEFULNESS_DREAMING"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2605
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 2606
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2607
    const/4 v1, 0x1

    .line 2628
    :cond_61
    :goto_61
    if-nez v1, :cond_66

    .line 2629
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleDreamFinishedLocked()V

    .line 2631
    :cond_66
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_3f .. :try_end_67} :catchall_bf

    .line 2637
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v6, :cond_72

    .line 2638
    if-nez v1, :cond_72

    .line 2639
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6}, Lcom/android/server/dreams/DreamManagerService;->stopDream()V

    .line 2642
    :cond_72
    return-void

    .line 2574
    .end local v0    # "canDream":Z
    .end local v1    # "continueDreaming":Z
    .end local v4    # "isDreaming":Z
    :catchall_73
    move-exception v6

    :try_start_74
    monitor-exit v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v6

    .line 2608
    .restart local v0    # "canDream":Z
    .restart local v1    # "continueDreaming":Z
    .restart local v4    # "isDreaming":Z
    :cond_76
    :try_start_76
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v6, v9, :cond_61

    .line 2610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2612
    .local v2, "currentTime":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v6

    if-nez v6, :cond_c2

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    add-int/lit8 v8, v8, -0x5

    if-ge v6, v8, :cond_c2

    .line 2618
    const-string v6, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%.  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Battery level now: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 2631
    .end local v2    # "currentTime":J
    :catchall_bf
    move-exception v6

    monitor-exit v7
    :try_end_c1
    .catchall {:try_start_76 .. :try_end_c1} :catchall_bf

    throw v6

    .line 2624
    .restart local v2    # "currentTime":J
    :cond_c2
    const/4 v1, 0x1

    goto :goto_61
.end method

.method private handleScreenOnBlockerReleased()V
    .registers 3

    .prologue
    .line 2693
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2694
    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2695
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2696
    monitor-exit v1

    .line 2697
    return-void

    .line 2696
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .registers 1

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 969
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 970
    return-void
.end method

.method private handleSmartStay(Z)V
    .registers 12
    .param p1, "bPreTest"    # Z

    .prologue
    .line 5076
    const-string v8, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_2d

    const-string v7, "(preTest)"

    :goto_11
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 5079
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_30

    .line 5080
    const-string v7, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because of screen bright wake lock"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    :cond_2c
    :goto_2c
    return-void

    .line 5076
    :cond_2d
    const-string v7, ""

    goto :goto_11

    .line 5084
    :cond_30
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v7, :cond_40

    .line 5085
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v7, :cond_40

    .line 5086
    const-string v7, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because folder is closed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 5091
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 5092
    .local v5, "startTimeFaceDetect":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->faceDetect()Z

    move-result v0

    .line 5093
    .local v0, "bFaceDetected":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 5095
    .local v3, "finishTimeFaceDetect":J
    sub-long v1, v3, v5

    .line 5097
    .local v1, "elapsedTime":J
    if-eqz p1, :cond_8c

    .line 5098
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_6d

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_6d

    .line 5100
    if-nez v0, :cond_2c

    .line 5101
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5102
    const-string v7, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay(preTest) : sendBroadcast done."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 5106
    :cond_6d
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay(preTest) : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 5110
    :cond_8c
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_b0

    .line 5111
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 5112
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : mFaceDetected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 5116
    :cond_b0
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method

.method private handleUserActivityTimeout()V
    .registers 3

    .prologue
    .line 2402
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2407
    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2408
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2409
    monitor-exit v1

    .line 2410
    return-void

    .line 2409
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1278
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] handleWakeLockDeath : release WakeLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1287
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1288
    .local v0, "index":I
    if-gez v0, :cond_25

    .line 1289
    monitor-exit v2

    .line 1308
    :goto_24
    return-void

    .line 1292
    :cond_25
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1293
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1295
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1296
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1297
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1300
    const-string v1, "wakelock.trace"

    const-string v3, "unknown"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1301
    const-string v1, "WAKELOCK_RELEASE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMESTAMP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", TAG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", TYPE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockLevelString()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$800(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", COUNT=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_9d
    monitor-exit v2

    goto :goto_24

    .end local v0    # "index":I
    :catchall_9f
    move-exception v1

    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_1b .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method private initSmartStay()V
    .registers 4

    .prologue
    .line 5050
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[smart stay] "

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    .line 5051
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5053
    new-instance v0, Lcom/android/server/power/PowerManagerService$8;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$8;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    .line 5071
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    .line 5072
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsTablet:Z

    .line 5073
    return-void
.end method

.method private isBeingKeptAwakeLocked()Z
    .registers 2

    .prologue
    .line 2518
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isCoverOpen()Z
    .registers 6

    .prologue
    .line 4946
    const/4 v1, 0x1

    .line 4948
    .local v1, "ret":Z
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsReadyCoverFromPWM:Z

    if-nez v2, :cond_3d

    .line 4949
    :cond_9
    const-string v2, "/sys/class/sec/sec_key/hall_detect"

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4952
    .local v0, "coverState":Ljava/lang/String;
    const-string v2, "CLOSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4953
    const/4 v1, 0x0

    .line 4967
    .end local v0    # "coverState":Ljava/lang/String;
    :goto_18
    return v1

    .line 4955
    .restart local v0    # "coverState":Ljava/lang/String;
    :cond_19
    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4956
    const/4 v1, 0x1

    goto :goto_18

    .line 4959
    :cond_23
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCoverOpen : UNKNOWN STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    const/4 v1, 0x1

    goto :goto_18

    .line 4964
    .end local v0    # "coverState":Ljava/lang/String;
    :cond_3d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isCoverOpen()Z

    move-result v1

    goto :goto_18
.end method

.method private isItBedTimeYetLocked()Z
    .registers 2

    .prologue
    .line 2510
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 3

    .prologue
    .line 3762
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isPreSmartStayNeeded(J)Z
    .registers 8
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 5122
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsTablet:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-ne v1, v0, :cond_18

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_18

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 3
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1164
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_e

    .line 1170
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 1168
    :sswitch_b
    const/4 v0, 0x1

    goto :goto_a

    .line 1164
    nop

    :sswitch_data_e
    .sparse-switch
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
    .end sparse-switch
.end method

.method private isScreenOnInternal()Z
    .registers 3

    .prologue
    .line 3468
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3469
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 3471
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private isSmartStayNeeded(J)Z
    .registers 5
    .param p1, "now"    # J

    .prologue
    .line 5129
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isTablet()Z
    .registers 3

    .prologue
    .line 5175
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5177
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 3325
    const/high16 v0, -0x40800000

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_e

    const/high16 v0, 0x3f800000

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isValidBrightness(I)Z
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 3320
    if-ltz p0, :cond_8

    const/16 v0, 0xff

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .registers 6
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1479
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1480
    sparse-switch p1, :sswitch_data_20

    .line 1491
    :try_start_8
    monitor-exit v2

    move v0, v1

    :goto_a
    return v0

    .line 1485
    :sswitch_b
    monitor-exit v2

    goto :goto_a

    .line 1493
    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    .line 1488
    :sswitch_10
    :try_start_10
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v3}, Lcom/android/server/power/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    goto :goto_a

    :cond_1e
    move v0, v1

    goto :goto_1c

    .line 1480
    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_b
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
        0x20 -> :sswitch_10
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 4
    .param p0, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4018
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] lowLevelReboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReboot(Ljava/lang/String;)V

    .line 4021
    return-void
.end method

.method public static lowLevelShutdown()V
    .registers 3

    .prologue
    .line 4004
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] lowLevelShutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeShutdown()V

    .line 4007
    return-void
.end method

.method private napInternal(J)V
    .registers 5
    .param p1, "eventTime"    # J

    .prologue
    .line 1940
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1941
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1942
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1944
    :cond_c
    monitor-exit v1

    .line 1945
    return-void

    .line 1944
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private napNoUpdateLocked(J)Z
    .registers 6
    .param p1, "eventTime"    # J

    .prologue
    const/4 v0, 0x1

    .line 1952
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_13

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v1, v0, :cond_13

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_15

    .line 1954
    :cond_13
    const/4 v0, 0x0

    .line 1964
    :goto_14
    return v0

    .line 1957
    :cond_15
    const-string v1, "PowerManagerService"

    const-string v2, "Nap time..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1960
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1962
    const-string v1, "PowerManagerService"

    const-string v2, "[s] WAKEFULNESS_NAPPING"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeFakeShutdown()V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeShutdown()V
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 10
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_15

    .line 1445
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Z)V

    .line 1451
    :cond_15
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 10
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1454
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_15

    .line 1459
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Z)V

    .line 1466
    :cond_15
    return-void
.end method

.method private preventAutoPowerOffInternal(IZ)V
    .registers 9
    .param p1, "who"    # I
    .param p2, "bPrevent"    # Z

    .prologue
    .line 2900
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2902
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2903
    .local v1, "rawCurrentCount":Ljava/lang/Integer;
    const/4 v0, -0x1

    .line 2905
    .local v0, "currentCount":I
    if-nez v1, :cond_56

    .line 2906
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[auto power off] first preventAutoPowerOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  bPrevent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2909
    const/4 v0, 0x0

    .line 2914
    :goto_43
    if-eqz p2, :cond_5b

    .line 2915
    add-int/lit8 v0, v0, 0x1

    .line 2923
    :cond_47
    :goto_47
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2924
    monitor-exit v3

    .line 2925
    return-void

    .line 2911
    :cond_56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_43

    .line 2917
    :cond_5b
    add-int/lit8 v0, v0, -0x1

    .line 2918
    if-gez v0, :cond_47

    .line 2919
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[auto power off] currentCount < 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    const/4 v0, 0x0

    goto :goto_47

    .line 2924
    .end local v0    # "currentCount":I
    .end local v1    # "rawCurrentCount":Ljava/lang/Integer;
    :catchall_79
    move-exception v2

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw v2
.end method

.method private printCallerInfo()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 5205
    const-string v1, ""

    .line 5206
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    .line 5208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 5209
    .local v2, "ste":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    if-le v3, v5, :cond_a4

    .line 5210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5218
    :cond_8b
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    return-void

    .line 5213
    :cond_a4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a5
    array-length v3, v2

    if-ge v0, v3, :cond_8b

    .line 5214
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5
.end method

.method private static printCurrentClassAndMethod()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    .line 5262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 5263
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[flow] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()  in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    return-void
.end method

.method private printWakeLockLocked()V
    .registers 11

    .prologue
    .line 5283
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenOnInternal()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 5285
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL] On : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]  mStayOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v6, v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mUserActivitySummary: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5292
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_205

    .line 5293
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_205

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5294
    .local v3, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 5295
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 5302
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_97
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL] Off : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->timeSinceScreenWasLastOn()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s ago"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_c2
    :goto_c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/SuspendBlocker;

    .local v1, "sb":Lcom/android/server/power/SuspendBlocker;
    move-object v2, v1

    .line 5305
    check-cast v2, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 5306
    .local v2, "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 5307
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 5311
    .end local v1    # "sb":Lcom/android/server/power/SuspendBlocker;
    .end local v2    # "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    :cond_f0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v4, :cond_205

    .line 5314
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v4, :cond_112

    .line 5315
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]     mBootCompleted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    :cond_112
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, -0x11

    if-eqz v4, :cond_1a3

    .line 5320
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]     mWakeLockSummary : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5322
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_16c

    .line 5323
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_142
    :goto_142
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5324
    .restart local v3    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_142

    .line 5325
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_142

    .line 5329
    .end local v3    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_16c
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v4, :cond_1a3

    .line 5330
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_178
    :goto_178
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5331
    .restart local v3    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_178

    .line 5332
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    .line 5338
    .end local v3    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1a3
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v4, :cond_1c5

    .line 5339
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]     mUserActivitySummary : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    :cond_1c5
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v4, :cond_1e7

    .line 5343
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]     mDisplayPowerRequest.screenState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    :cond_1e7
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v4, :cond_205

    .line 5347
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL]     mDisplayReady : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_205
    return-void
.end method

.method private readConfigurationLocked()V
    .registers 3

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 847
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x111001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 849
    const v1, 0x1110047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 851
    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 853
    const v1, 0x111004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 855
    const v1, 0x1110049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 857
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 4971
    const-string v3, ""

    .line 4972
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4975
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_2c
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    .line 4977
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_1b

    .line 4978
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 4979
    if-eqz v3, :cond_1b

    .line 4980
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_4a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_47

    move-result-object v3

    .line 4986
    :cond_1b
    if-eqz v1, :cond_4d

    .line 4988
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_26

    move-object v0, v1

    .line 4995
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_21
    :goto_21
    if-nez v3, :cond_25

    .line 4996
    const-string v3, ""

    .line 4998
    .end local v3    # "result":Ljava/lang/String;
    :cond_25
    return-object v3

    .line 4989
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "result":Ljava/lang/String;
    :catch_26
    move-exception v2

    .line 4990
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 4991
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_21

    .line 4983
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2c
    move-exception v2

    .line 4984
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3b

    .line 4986
    if-eqz v0, :cond_21

    .line 4988
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_21

    .line 4989
    :catch_36
    move-exception v2

    .line 4990
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 4986
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3b
    move-exception v4

    :goto_3c
    if-eqz v0, :cond_41

    .line 4988
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 4991
    :cond_41
    :goto_41
    throw v4

    .line 4989
    :catch_42
    move-exception v2

    .line 4990
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 4986
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_47
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3c

    .line 4983
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4a
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2d

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4d
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_21
.end method

.method private registerReceiverInSystemReady()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 804
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 805
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 808
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 809
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 812
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 813
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 817
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 818
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 821
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 822
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 826
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 827
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 830
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 832
    .local v0, "autoPowerOffIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    .line 836
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "ResponseAxT9Info"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.cover.OPEN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 842
    return-void
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1217
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1218
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 1219
    .local v0, "index":I
    if-gez v0, :cond_b

    .line 1224
    monitor-exit v3

    .line 1274
    :goto_a
    return-void

    .line 1227
    :cond_b
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1235
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_11a

    .line 1250
    :goto_1c
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1251
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1252
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1254
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_31

    .line 1255
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1258
    :cond_31
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1260
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    .line 1262
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1263
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1266
    const-string v2, "wakelock.trace"

    const-string v4, "unknown"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1267
    const-string v2, "WAKELOCK_RELEASE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMESTAMP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TAG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TYPE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockLevelString()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$800(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", COUNT=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_a5
    monitor-exit v3

    goto/16 :goto_a

    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_a8
    move-exception v2

    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_3 .. :try_end_aa} :catchall_a8

    throw v2

    .line 1237
    .restart local v0    # "index":I
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_ab
    const/16 v2, 0xaa9

    const/4 v4, 0x2

    :try_start_ae
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_1c

    .line 1243
    :sswitch_c2
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] release WakeLock flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catchall {:try_start_ae .. :try_end_118} :catchall_a8

    goto/16 :goto_1c

    .line 1235
    :sswitch_data_11a
    .sparse-switch
        0x1 -> :sswitch_ab
        0x6 -> :sswitch_c2
        0xa -> :sswitch_c2
        0x1a -> :sswitch_c2
        0x20 -> :sswitch_c2
    .end sparse-switch
.end method

.method private resetAutoPowerOffTimerFromNative(JII)V
    .registers 5
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2846
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimerInternal(J)V

    .line 2847
    return-void
.end method

.method private resetAutoPowerOffTimerInternal(J)V
    .registers 6
    .param p1, "resetTime"    # J

    .prologue
    .line 2850
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2851
    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-gtz v0, :cond_10

    .line 2852
    const-string v0, "PowerManagerService"

    const-string v2, "[auto power off] resetAutoPowerOffTimerInternal is return."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    monitor-exit v1

    .line 2863
    :goto_f
    return-void

    .line 2855
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_42

    .line 2857
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[auto power off] resetAutoPowerOffTimerInternal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2859
    :try_start_34
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimerNoUpdateLocked(J)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2860
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2862
    :cond_3d
    monitor-exit v1

    goto :goto_f

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw v0

    .line 2855
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private resetAutoPowerOffTimerNoUpdateLocked(J)Z
    .registers 8
    .param p1, "resetTime"    # J

    .prologue
    .line 2866
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2867
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffEventTime:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_16

    .line 2868
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffEventTime:J

    .line 2869
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2870
    const/4 v0, 0x1

    monitor-exit v1

    .line 2874
    :goto_15
    return v0

    .line 2872
    :cond_16
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[auto power off] resetTime is smaller than mAutoPowerOffEventTime. resetTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAutoPowerOffEventTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffEventTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_15

    .line 2876
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private scheduleSandmanLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2545
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_16

    .line 2546
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2547
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2548
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2549
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2551
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private sendPendingNotificationsLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2025
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    if-eqz v0, :cond_c

    .line 2026
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    .line 2027
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakeUpFinished()V

    .line 2029
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    if-eqz v0, :cond_17

    .line 2030
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    .line 2031
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onGoToSleepFinished()V

    .line 2033
    :cond_17
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 3786
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3787
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_9

    .line 3788
    monitor-exit v2

    .line 3797
    :goto_8
    return-void

    .line 3790
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 3791
    .local v0, "light":Lcom/android/server/LightsService$Light;
    monitor-exit v2

    goto :goto_8

    .end local v0    # "light":Lcom/android/server/LightsService$Light;
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private setButtonTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 7
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3911
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3912
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 3913
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setButtonTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 3916
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3917
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3919
    :cond_2c
    monitor-exit v1

    .line 3920
    return-void

    .line 3919
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .registers 4
    .param p1, "timeMs"    # I

    .prologue
    .line 3754
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3755
    :try_start_3
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 3756
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3757
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3758
    monitor-exit v1

    .line 3759
    return-void

    .line 3758
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .registers 6
    .param p1, "brightness"    # I

    .prologue
    .line 3831
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3832
    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_2a

    .line 3834
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenBrightnessOverrideFromWindowManagerInternal: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3837
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3838
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3840
    :cond_2a
    monitor-exit v1

    .line 3841
    return-void

    .line 3840
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    .registers 7
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3005
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3006
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 3007
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenDimDurationOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 3010
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3011
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3013
    :cond_2c
    monitor-exit v1

    .line 3014
    return-void

    .line 3013
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setStayOnSettingInternal(I)V
    .registers 4
    .param p1, "val"    # I

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3733
    return-void
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .registers 4
    .param p1, "adj"    # F

    .prologue
    .line 3987
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3990
    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_14

    .line 3991
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3992
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3993
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3995
    :cond_14
    monitor-exit v1

    .line 3996
    return-void

    .line 3995
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .registers 4
    .param p1, "brightness"    # I

    .prologue
    .line 3950
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3951
    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_12

    .line 3952
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 3953
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3954
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3956
    :cond_12
    monitor-exit v1

    .line 3957
    return-void

    .line 3956
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 7
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3878
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3879
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 3881
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setUserActivityTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 3884
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3885
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3887
    :cond_2c
    monitor-exit v1

    .line 3888
    return-void

    .line 3887
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .registers 2

    .prologue
    .line 2499
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private shouldUseProximitySensorLocked()Z
    .registers 2

    .prologue
    .line 3406
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 7
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 2114
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getUSBWakePlug()Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_d

    .line 2140
    :cond_c
    :goto_c
    return v0

    .line 2120
    :cond_d
    if-eqz p1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_15

    if-eq p2, v2, :cond_c

    .line 2127
    :cond_15
    if-nez p1, :cond_21

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v2, :cond_21

    if-eqz p3, :cond_c

    .line 2134
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_2f

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 2140
    :cond_2f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .registers 11
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3579
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_11

    .line 3580
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3584
    :cond_11
    const-string v2, "AutoPowerOff"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 3585
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_27

    .line 3586
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call AutoPowerOff.ActivityManagerNative is not ready."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3590
    :cond_27
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3591
    :try_start_2a
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_36

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-eqz v2, :cond_36

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z

    if-eqz v2, :cond_6f

    .line 3592
    :cond_36
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[auto power off] shutdown : ignored : mIsPowered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mAutoPowerOffTimeoutSetting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mForceDisableWakeLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v2}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3596
    monitor-exit v3

    .line 3665
    :cond_6e
    :goto_6e
    return-void

    .line 3598
    :cond_6f
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkPreventAutoPowerOff()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 3599
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3600
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3601
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3602
    const-string v2, "PowerManagerService"

    const-string v4, "[auto power off] shutdownOrRebootInternal : timer reset"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v2}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3604
    monitor-exit v3

    goto :goto_6e

    .line 3607
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_93
    move-exception v2

    monitor-exit v3
    :try_end_95
    .catchall {:try_start_2a .. :try_end_95} :catchall_93

    throw v2

    .line 3606
    :cond_96
    const/4 v2, 0x1

    :try_start_97
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    .line 3607
    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_93

    .line 3609
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v3, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v3, p0, p3, p2}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6e

    .line 3629
    :cond_a5
    new-instance v1, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;ZLjava/lang/String;Z)V

    .line 3650
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3651
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3652
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3655
    if-eqz p4, :cond_6e

    .line 3656
    monitor-enter v1

    .line 3659
    :goto_bb
    :try_start_bb
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_bb .. :try_end_be} :catch_bf
    .catchall {:try_start_bb .. :try_end_be} :catchall_c1

    goto :goto_bb

    .line 3660
    :catch_bf
    move-exception v2

    goto :goto_bb

    .line 3663
    :catchall_c1
    move-exception v2

    :try_start_c2
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v2
.end method

.method private startWatchingForBootAnimationFinished()V
    .registers 3

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 3481
    return-void
.end method

.method private stopLowPowerDim()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4076
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "staylitscreen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private updateAutoPowerOffTimeLocked(JI)V
    .registers 14
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x5

    .line 2376
    const v3, 0x8000

    and-int/2addr v3, p3

    if-eqz v3, :cond_2d

    .line 2377
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2379
    move-wide v1, p1

    .line 2380
    .local v1, "when":J
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2381
    :try_start_12
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffEventTime:J

    add-long/2addr v5, v8

    cmp-long v3, p1, v5

    if-gez v3, :cond_1d

    .line 2382
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffEventTime:J

    add-long v1, v5, v8

    .line 2384
    :cond_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_2e

    .line 2386
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2387
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2388
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2390
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "when":J
    :cond_2d
    return-void

    .line 2384
    .restart local v1    # "when":J
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v3
.end method

.method private updateDisplayPowerStateLocked(I)V
    .registers 13
    .param p1, "dirty"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3202
    and-int/lit16 v6, p1, 0x53f

    if-eqz v6, :cond_104

    .line 3207
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPowerStateLocked()I

    move-result v2

    .line 3208
    .local v2, "newScreenState":I
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eq v2, v6, :cond_2c

    .line 3209
    if-nez v2, :cond_1e

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v6, :cond_1e

    .line 3212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    .line 3215
    :cond_1e
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v2, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    .line 3216
    if-eqz v2, :cond_105

    move v9, v7

    :goto_25
    const/4 v6, 0x2

    if-ne v2, v6, :cond_108

    move v6, v7

    :goto_29
    invoke-static {v9, v6}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 3221
    :cond_2c
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3222
    .local v5, "screenBrightness":I
    const/4 v4, 0x0

    .line 3223
    .local v4, "screenAutoBrightnessAdjustment":F
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v6, v7, :cond_10b

    move v0, v7

    .line 3226
    .local v0, "autoBrightness":Z
    :goto_34
    const/4 v1, 0x0

    .line 3228
    .local v1, "isBrightnessOverriden":Z
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 3229
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3230
    const/4 v0, 0x0

    .line 3232
    const/4 v1, 0x1

    .line 3241
    :cond_41
    :goto_41
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    if-eq v1, v6, :cond_6a

    .line 3242
    if-eqz v1, :cond_126

    .line 3243
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/app/StatusBarManager;->disable(I)V

    .line 3248
    :goto_50
    const-string v6, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDisplayPowerStateLocked: Hide QuickPanel Brightness Bar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    .line 3254
    :cond_6a
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 3255
    .local v3, "prevCoverClosed":Z
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isCoverOpen()Z

    move-result v6

    if-nez v6, :cond_12f

    :goto_72
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 3257
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eq v3, v6, :cond_92

    .line 3258
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDisplayPowerStateLocked: mIsCoverClosed = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    :cond_92
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v6, :cond_a3

    if-eqz v0, :cond_a3

    .line 3262
    const/4 v0, 0x0

    .line 3263
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerController;->getScreenBrightnessOnCover()I

    move-result v5

    .line 3264
    if-gez v5, :cond_a3

    .line 3265
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3271
    :cond_a3
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v6, :cond_ae

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v6, :cond_ae

    if-eqz v0, :cond_ae

    .line 3272
    const/4 v0, 0x0

    .line 3275
    :cond_ae
    if-eqz v0, :cond_bc

    .line 3276
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3277
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 3279
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3286
    :cond_bc
    :goto_bc
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3288
    const/high16 v6, 0x3f800000

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, -0x40800000

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3290
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v5, v6, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 3291
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v4, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3293
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v0, v6, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 3295
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    .line 3297
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;->isHeld()Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    .line 3299
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    invoke-virtual {v6, v7, v9, v10}, Lcom/android/server/power/DisplayPowerController;->requestPowerState(Lcom/android/server/power/DisplayPowerRequest;ZZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3303
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 3305
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    .line 3317
    .end local v0    # "autoBrightness":Z
    .end local v1    # "isBrightnessOverriden":Z
    .end local v2    # "newScreenState":I
    .end local v3    # "prevCoverClosed":Z
    .end local v4    # "screenAutoBrightnessAdjustment":F
    .end local v5    # "screenBrightness":I
    :cond_104
    return-void

    .restart local v2    # "newScreenState":I
    :cond_105
    move v9, v8

    .line 3216
    goto/16 :goto_25

    :cond_108
    move v6, v8

    goto/16 :goto_29

    .restart local v4    # "screenAutoBrightnessAdjustment":F
    .restart local v5    # "screenBrightness":I
    :cond_10b
    move v0, v8

    .line 3223
    goto/16 :goto_34

    .line 3234
    .restart local v0    # "autoBrightness":Z
    .restart local v1    # "isBrightnessOverriden":Z
    :cond_10e
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 3235
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_41

    .line 3236
    :cond_11a
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 3237
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_41

    .line 3245
    :cond_126
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v6, v8}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_50

    .restart local v3    # "prevCoverClosed":Z
    :cond_12f
    move v7, v8

    .line 3255
    goto/16 :goto_72

    .line 3281
    :cond_132
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 3283
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto :goto_bc
.end method

.method private updateDreamLocked(I)V
    .registers 3
    .param p1, "dirty"    # I

    .prologue
    .line 2530
    and-int/lit16 v0, p1, 0xbf7

    if-eqz v0, :cond_7

    .line 2540
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 2542
    :cond_7
    return-void
.end method

.method private updateInputDeviceLightStateLocked(I)V
    .registers 14
    .param p1, "dirty"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3090
    and-int/lit16 v5, p1, 0x743b

    if-eqz v5, :cond_fb

    .line 3094
    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_16

    .line 3095
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v5, :cond_16

    .line 3096
    const-string v5, "PowerManagerService"

    const-string v6, "[input device light] updateInputDeviceLightStateLocked: BootCompleted!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    :cond_16
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_28

    .line 3102
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v5, :cond_bb

    .line 3103
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v10}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3104
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v10}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3116
    :cond_28
    :goto_28
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_67

    .line 3117
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_d7

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    if-eqz v5, :cond_d7

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    long-to-int v3, v5

    .line 3120
    .local v3, "timeout":I
    :goto_3b
    if-lez v3, :cond_43

    .line 3121
    const/16 v5, 0x5dc

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3123
    :cond_43
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$900(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-eq v5, v3, :cond_67

    .line 3124
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v5, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 3125
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v5, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 3126
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$900(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-nez v5, :cond_db

    .line 3127
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v10}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3128
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v10}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3140
    .end local v3    # "timeout":I
    :cond_67
    :goto_67
    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_70

    .line 3141
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3145
    :cond_70
    and-int/lit16 v5, p1, 0x4000

    if-eqz v5, :cond_7d

    .line 3146
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    if-eqz v5, :cond_7d

    .line 3147
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3152
    :cond_7d
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    if-eqz v5, :cond_97

    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_97

    .line 3153
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    if-nez v5, :cond_97

    .line 3154
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3155
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    if-eqz v5, :cond_97

    .line 3156
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3163
    :cond_97
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_fb

    .line 3164
    const/4 v1, 0x0

    .line 3165
    .local v1, "isFullWakeLock":Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3166
    .local v2, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a3
    if-ge v0, v2, :cond_eb

    .line 3167
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3168
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_b8

    .line 3169
    const/4 v1, 0x1

    .line 3166
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 3105
    .end local v0    # "i":I
    .end local v1    # "isFullWakeLock":Z
    .end local v2    # "numWakeLocks":I
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_bb
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v5, v9, :cond_28

    .line 3106
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    if-eqz v5, :cond_c8

    .line 3107
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3109
    :cond_c8
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$900(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-ne v5, v11, :cond_28

    .line 3110
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_28

    .line 3117
    :cond_d7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    goto/16 :goto_3b

    .line 3130
    .restart local v3    # "timeout":I
    :cond_db
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3131
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    if-eqz v5, :cond_67

    .line 3132
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_67

    .line 3172
    .end local v3    # "timeout":I
    .restart local v0    # "i":I
    .restart local v1    # "isFullWakeLock":Z
    .restart local v2    # "numWakeLocks":I
    :cond_eb
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v5, :cond_fb

    .line 3173
    if-eqz v1, :cond_fc

    .line 3174
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3175
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v9}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3190
    .end local v0    # "i":I
    .end local v1    # "isFullWakeLock":Z
    .end local v2    # "numWakeLocks":I
    :cond_fb
    :goto_fb
    return-void

    .line 3178
    .restart local v0    # "i":I
    .restart local v1    # "isFullWakeLock":Z
    .restart local v2    # "numWakeLocks":I
    :cond_fc
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v5

    if-eqz v5, :cond_fb

    .line 3179
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v5, v10}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3180
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightState()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-ne v5, v9, :cond_fb

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v5

    if-nez v5, :cond_fb

    .line 3182
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$900(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-eq v5, v11, :cond_fb

    .line 3183
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v5, v10}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto :goto_fb
.end method

.method private updateIsPoweredLocked(I)V
    .registers 14
    .param p1, "dirty"    # I

    .prologue
    const/4 v3, 0x0

    .line 2040
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_c7

    .line 2041
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2042
    .local v10, "wasPowered":Z
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2043
    .local v9, "oldPlugType":I
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2044
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getPlugType()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2045
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2055
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v10, v0, :cond_2a

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v9, v0, :cond_c7

    .line 2057
    :cond_2a
    const-string v0, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] updateIsPoweredLocked : mIsPowered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2062
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v6

    .line 2074
    .local v6, "dockedOnWirelessCharger":Z
    if-nez v10, :cond_8b

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getUSBWakePlug()Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v0, :cond_8b

    .line 2075
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 2076
    .local v8, "mPowerManager":Landroid/os/PowerManager;
    const v0, 0x1000000a

    const-string v4, "charger plug"

    invoke-virtual {v8, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 2078
    .local v7, "mChargeScreen":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2081
    const-wide/16 v4, 0x2710

    invoke-virtual {v7, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2084
    .end local v7    # "mChargeScreen":Landroid/os/PowerManager$WakeLock;
    .end local v8    # "mPowerManager":Landroid/os/PowerManager;
    :cond_8b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2086
    .local v1, "now":J
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v0, :cond_99

    .line 2087
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimerNoUpdateLocked(J)Z

    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerIsChanged:Z

    .line 2092
    :cond_99
    invoke-direct {p0, v10, v9, v6}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " powered change"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 2097
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 2099
    :cond_b9
    const/16 v5, 0x3e8

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2104
    if-eqz v6, :cond_c7

    .line 2105
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    .line 2109
    .end local v1    # "now":J
    .end local v6    # "dockedOnWirelessCharger":Z
    .end local v9    # "oldPlugType":I
    .end local v10    # "wasPowered":Z
    :cond_c7
    return-void
.end method

.method private updatePowerStateLocked()V
    .registers 6

    .prologue
    .line 1976
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v4, :cond_9

    .line 2022
    :cond_8
    :goto_8
    return-void

    .line 1981
    :cond_9
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 1982
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 1987
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1988
    .local v2, "now":J
    const/4 v1, 0x0

    .line 1990
    .local v1, "dirtyPhase2":I
    :cond_18
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1991
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    .line 1992
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1994
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 1995
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 1997
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/power/PowerManagerService;->updateAutoPowerOffTimeLocked(JI)V

    .line 1999
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2005
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(I)V

    .line 2008
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateInputDeviceLightStateLocked(I)V

    .line 2011
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)V

    .line 2014
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_3d

    .line 2015
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 2021
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V

    goto :goto_8
.end method

.method private updateSettingsLocked()V
    .registers 12

    .prologue
    const/16 v10, 0x64

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 860
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 862
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v7, "screensaver_enabled"

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    if-eqz v4, :cond_18c

    move v4, v5

    :goto_13
    invoke-static {v3, v7, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_18f

    move v4, v5

    :goto_1a
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 866
    const-string v7, "screensaver_activate_on_sleep"

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v4, :cond_192

    move v4, v5

    :goto_23
    invoke-static {v3, v7, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_195

    move v4, v5

    :goto_2a
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 870
    const-string v7, "screensaver_activate_on_dock"

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v4, :cond_198

    move v4, v5

    :goto_33
    invoke-static {v3, v7, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_19b

    move v4, v5

    :goto_3a
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 874
    const-string v4, "screen_off_timeout"

    const/16 v7, 0x3a98

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 877
    const-string v4, "stay_on_while_plugged_in"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 880
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 881
    .local v0, "oldScreenBrightnessSetting":I
    const-string v4, "screen_brightness"

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 884
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-eq v0, v4, :cond_60

    .line 885
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 898
    :cond_60
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 899
    .local v2, "prevDynamicAutoBrightnessRatioValueSetting":I
    const-string v4, "auto_brightness_detail"

    invoke-static {v3, v4, v10, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 901
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    if-eq v2, v4, :cond_80

    .line 902
    const/high16 v4, 0x7fc00000

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 903
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    if-eq v4, v10, :cond_19e

    .line 904
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    add-int/lit8 v4, v4, -0x64

    int-to-float v4, v4

    const/high16 v7, 0x42c80000

    div-float/2addr v4, v7

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 911
    :cond_80
    :goto_80
    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 916
    const-string v4, "button_key_light"

    const/16 v7, 0x5dc

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    .line 922
    const-string v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1a3

    :goto_9a
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    .line 928
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v4, :cond_b0

    .line 929
    const-string v4, "is_secured_lock"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    .line 931
    const-string v4, "lock_screen_lock_after_timeout"

    invoke-static {v3, v4, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    .line 937
    :cond_b0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v5

    .line 938
    :try_start_b3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    .line 939
    .local v1, "prevAutoPowerOffTimeoutSetting":I
    const-string v4, "auto_power_off"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    .line 941
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v4, :cond_ce

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-eq v1, v4, :cond_ce

    .line 942
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimerNoUpdateLocked(J)Z

    .line 944
    :cond_ce
    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_b3 .. :try_end_cf} :catchall_1a6

    .line 948
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[api] updateSettingsLocked : mDreamsEnabledSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDreamsActivateOnSleepSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDreamsActivateOnDockSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mScreenOffTimeoutSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mStayOnWhilePluggedInSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mScreenBrightnessSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDynamicAutoBrightnessRatioValueSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mScreenAutoBrightnessAdjustmentSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mScreenBrightnessModeSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSmartStayEnabledSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTouchKeyOffTimeoutSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAutoPowerOffTimeoutSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSecuredLockEnableSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSecuredLockTimeoutSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 965
    return-void

    .end local v0    # "oldScreenBrightnessSetting":I
    .end local v1    # "prevAutoPowerOffTimeoutSetting":I
    .end local v2    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_18c
    move v4, v6

    .line 862
    goto/16 :goto_13

    :cond_18f
    move v4, v6

    goto/16 :goto_1a

    :cond_192
    move v4, v6

    .line 866
    goto/16 :goto_23

    :cond_195
    move v4, v6

    goto/16 :goto_2a

    :cond_198
    move v4, v6

    .line 870
    goto/16 :goto_33

    :cond_19b
    move v4, v6

    goto/16 :goto_3a

    .line 906
    .restart local v0    # "oldScreenBrightnessSetting":I
    .restart local v2    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_19e
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_80

    :cond_1a3
    move v5, v6

    .line 922
    goto/16 :goto_9a

    .line 944
    :catchall_1a6
    move-exception v4

    :try_start_1a7
    monitor-exit v5
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a6

    throw v4
.end method

.method private updateStayOnLocked(I)V
    .registers 5
    .param p1, "dirty"    # I

    .prologue
    .line 2148
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_24

    .line 2149
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2150
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_25

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2152
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2157
    :goto_1a
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_24

    .line 2158
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2161
    .end local v0    # "wasStayOn":Z
    :cond_24
    return-void

    .line 2154
    .restart local v0    # "wasStayOn":Z
    :cond_25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_1a
.end method

.method private updateSuspendBlockerLocked()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3422
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, -0x11

    if-eqz v4, :cond_57

    move v1, v2

    .line 3425
    .local v1, "needWakeLockSuspendBlocker":Z
    :goto_9
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v4, :cond_1b

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v4, :cond_59

    :cond_1b
    move v0, v2

    .line 3430
    .local v0, "needDisplaySuspendBlocker":Z
    :goto_1c
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z

    if-eqz v4, :cond_22

    .line 3431
    const/4 v1, 0x0

    .line 3432
    const/4 v0, 0x0

    .line 3437
    :cond_22
    if-eqz v1, :cond_2f

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v4, :cond_2f

    .line 3438
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3439
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3441
    :cond_2f
    if-eqz v0, :cond_3c

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v4, :cond_3c

    .line 3442
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3443
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3447
    :cond_3c
    if-nez v1, :cond_49

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v2, :cond_49

    .line 3448
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v2}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3449
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3451
    :cond_49
    if-nez v0, :cond_56

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v2, :cond_56

    .line 3452
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v2}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3453
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3455
    :cond_56
    return-void

    .end local v0    # "needDisplaySuspendBlocker":Z
    .end local v1    # "needWakeLockSuspendBlocker":Z
    :cond_57
    move v1, v3

    .line 3422
    goto :goto_9

    .restart local v1    # "needWakeLockSuspendBlocker":Z
    :cond_59
    move v0, v3

    .line 3425
    goto :goto_1c
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .registers 16
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 2235
    and-int/lit8 v0, p3, 0x26

    if-eqz v0, :cond_171

    .line 2236
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2240
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    if-eqz v0, :cond_17

    .line 2241
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    .line 2245
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    if-eqz v0, :cond_24

    .line 2246
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    .line 2252
    :cond_24
    const-wide/16 v8, 0x0

    .line 2253
    .local v8, "nextTimeout":J
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_18e

    .line 2254
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v11

    .line 2255
    .local v11, "screenOffTimeout":I
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v10

    .line 2257
    .local v10, "screenDimDuration":I
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2258
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4e

    .line 2259
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v2, v11

    add-long/2addr v0, v2

    int-to-long v2, v10

    sub-long v8, v0, v2

    .line 2261
    cmp-long v0, p1, v8

    if-gez v0, :cond_172

    .line 2262
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2270
    :cond_4e
    :goto_4e
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v0, :cond_73

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_73

    .line 2272
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v2, v11

    add-long v8, v0, v2

    .line 2273
    cmp-long v0, p1, v8

    if-gez v0, :cond_73

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_73

    .line 2276
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_183

    const/4 v0, 0x1

    :goto_71
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2284
    :cond_73
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v0, :cond_cf

    .line 2285
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v0, v1, :cond_cf

    .line 2287
    const/4 v6, 0x0

    .line 2289
    .local v6, "bIsItTimeToCheckSmartStay":Z
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_85

    .line 2290
    const/4 v6, 0x1

    .line 2293
    :cond_85
    if-eqz v6, :cond_cf

    .line 2294
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    if-eqz v0, :cond_cf

    .line 2295
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[smart stay] UserActivityState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (face detected)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2300
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v2, v11

    add-long/2addr v0, v2

    int-to-long v2, v10

    sub-long v8, v0, v2

    .line 2301
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 2311
    .end local v6    # "bIsItTimeToCheckSmartStay":Z
    :cond_cf
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v0, :cond_130

    .line 2312
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2313
    .local v7, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2314
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2318
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v0, :cond_130

    .line 2319
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_130

    .line 2320
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    int-to-long v0, v0

    sub-long v0, v8, v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    .line 2321
    const-wide/16 v0, 0x1770

    sub-long v0, v8, v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    .line 2323
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->isPreSmartStayNeeded(J)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 2324
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2325
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2326
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    .line 2330
    :cond_115
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->isSmartStayNeeded(J)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 2331
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2332
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2333
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    .line 2350
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "screenDimDuration":I
    .end local v11    # "screenOffTimeout":I
    :cond_130
    :goto_130
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v0, v1, :cond_171

    .line 2351
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[s] UserActivityState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v0, :cond_192

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 2354
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2360
    :goto_16d
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    .line 2371
    .end local v8    # "nextTimeout":J
    :cond_171
    return-void

    .line 2264
    .restart local v8    # "nextTimeout":J
    .restart local v10    # "screenDimDuration":I
    .restart local v11    # "screenOffTimeout":I
    :cond_172
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v2, v11

    add-long v8, v0, v2

    .line 2265
    cmp-long v0, p1, v8

    if-gez v0, :cond_4e

    .line 2266
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_4e

    .line 2276
    :cond_183
    const/4 v0, 0x2

    goto/16 :goto_71

    .line 2337
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_186
    const-string v0, "PowerManagerService"

    const-string v1, "[smart stay] updateUserActivitySummaryLocked : don\'t have time to smart stay"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 2346
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "screenDimDuration":I
    .end local v11    # "screenOffTimeout":I
    :cond_18e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_130

    .line 2357
    :cond_192
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_16d
.end method

.method private updateWakeLockSummaryLocked(I)V
    .registers 8
    .param p1, "dirty"    # I

    .prologue
    const/4 v5, 0x1

    .line 2170
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_72

    .line 2171
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2173
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2174
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_72

    .line 2175
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2176
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_74

    .line 2174
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2178
    :sswitch_25
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_22

    .line 2181
    :sswitch_2c
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_22

    .line 2182
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xb

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2184
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_22

    .line 2185
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_22

    .line 2190
    :sswitch_41
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_22

    .line 2191
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2192
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_22

    .line 2193
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_22

    .line 2198
    :sswitch_56
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_22

    .line 2199
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2200
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_22

    .line 2201
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_22

    .line 2212
    :sswitch_6b
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_22

    .line 2224
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_72
    return-void

    .line 2176
    nop

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_25
        0x6 -> :sswitch_56
        0xa -> :sswitch_41
        0x1a -> :sswitch_2c
        0x20 -> :sswitch_6b
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    const/4 v1, 0x0

    .line 1345
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1346
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 1348
    .local v0, "index":I
    const-string v4, "persist.cne.feature"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1349
    .local v2, "value":I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_18

    const/4 v4, 0x5

    if-eq v2, v4, :cond_18

    const/4 v4, 0x6

    if-ne v2, v4, :cond_19

    :cond_18
    const/4 v1, 0x1

    .line 1351
    .local v1, "isNsrmEnabled":Z
    :cond_19
    if-gez v0, :cond_31

    .line 1361
    if-nez v1, :cond_28

    .line 1363
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Wake lock not active"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1383
    .end local v0    # "index":I
    .end local v1    # "isNsrmEnabled":Z
    .end local v2    # "value":I
    :catchall_25
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v4

    .line 1366
    .restart local v0    # "index":I
    .restart local v1    # "isNsrmEnabled":Z
    .restart local v2    # "value":I
    :cond_28
    :try_start_28
    const-string v4, "PowerManagerService"

    const-string v6, "Wake lock not active"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    monitor-exit v5

    .line 1384
    :goto_30
    return-void

    .line 1372
    :cond_31
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1378
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v3, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 1379
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1380
    invoke-virtual {v3, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1381
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1383
    :cond_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_25

    goto :goto_30
.end method

.method private updateWakefulnessLocked(I)Z
    .registers 8
    .param p1, "dirty"    # I

    .prologue
    .line 2466
    const/4 v0, 0x0

    .line 2467
    .local v0, "changed":Z
    and-int/lit16 v4, p1, 0xa97

    if-eqz v4, :cond_1e

    .line 2470
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2475
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2476
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(J)Z

    move-result v0

    .line 2491
    .end local v2    # "time":J
    :cond_1e
    :goto_1e
    return v0

    .line 2479
    .restart local v2    # "time":J
    :cond_1f
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_ba

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release wake lock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2480
    .local v1, "screenOffReason":Ljava/lang/String;
    :goto_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_be

    const-string v4, "release stay on "

    :goto_47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_c1

    const-string v4, "timeout "

    :goto_5e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v4, p1, 0x200

    if-eqz v4, :cond_c4

    const-string v4, "prox pos "

    :goto_75
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 2486
    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    goto/16 :goto_1e

    .line 2479
    .end local v1    # "screenOffReason":Ljava/lang/String;
    :cond_ba
    const-string v1, ""

    goto/16 :goto_38

    .line 2480
    .restart local v1    # "screenOffReason":Ljava/lang/String;
    :cond_be
    const-string v4, ""

    goto :goto_47

    .line 2481
    :cond_c1
    const-string v4, ""

    goto :goto_5e

    .line 2482
    :cond_c4
    const-string v4, ""

    goto :goto_75
.end method

.method private userActivityFromNative(JII)V
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1536
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    .line 1537
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_49

    .line 1538
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] userActivityFromNative : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_49

    .line 1541
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    .line 1546
    :cond_49
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1547
    return-void
.end method

.method private userActivityInternal(JIII)V
    .registers 9
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1551
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1553
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/DisplayPowerController;->requestButtonLedState(Z)V

    .line 1556
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v0, :cond_18

    if-eqz p3, :cond_18

    .line 1557
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimerNoUpdateLocked(J)Z

    .line 1560
    :cond_18
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1562
    :cond_1b
    monitor-exit v1

    .line 1563
    return-void

    .line 1562
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1572
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1b

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1b

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 1609
    :cond_1c
    :goto_1c
    return v0

    .line 1578
    :cond_1d
    if-ne p3, v4, :cond_24

    .line 1579
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, v0, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1583
    :cond_24
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3d

    .line 1584
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_67

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_67

    .line 1586
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1587
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1c

    .line 1591
    :cond_3d
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_67

    .line 1592
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1594
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1597
    if-ne p3, v4, :cond_54

    .line 1598
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1c

    .line 1599
    :cond_54
    const/4 v1, 0x2

    if-ne p3, v1, :cond_5e

    .line 1600
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1c

    .line 1601
    :cond_5e
    if-ne p3, v0, :cond_1c

    .line 1602
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1c

    :cond_67
    move v0, v1

    .line 1609
    goto :goto_1c
.end method

.method private wakeUpFromNative(J)V
    .registers 7
    .param p1, "eventTime"    # J

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1651
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1652
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    if-eqz v0, :cond_2a

    .line 1653
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[auto power off] [s] wakeUpFromNative is canceled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    monitor-exit v1

    .line 1673
    :goto_29
    return-void

    .line 1656
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_6b

    .line 1660
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [s] wakeUpFromNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wakeUpFromNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1668
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JZ)V

    goto :goto_29

    .line 1656
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0
.end method

.method private wakeUpInternal(J)V
    .registers 6
    .param p1, "eventTime"    # J

    .prologue
    .line 1676
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1677
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1678
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1680
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/DisplayPowerController;->requestButtonLedState(Z)V

    .line 1683
    :cond_12
    monitor-exit v1

    .line 1684
    return-void

    .line 1683
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private wakeUpInternal(JZ)V
    .registers 8
    .param p1, "eventTime"    # J
    .param p3, "fromNative"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1688
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1689
    :try_start_4
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-ne v1, v0, :cond_27

    .line 1692
    .local v0, "proxEnabled":Z
    :goto_e
    if-eqz p3, :cond_1c

    if-eqz v0, :cond_1c

    .line 1693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    .line 1694
    const-string v1, "PowerManagerService"

    const-string v3, "Screen__On : even though Proximity Positive"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1697
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1699
    :cond_25
    monitor-exit v2

    .line 1700
    return-void

    .line 1689
    .end local v0    # "proxEnabled":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_e

    .line 1699
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private wakeUpNoUpdateLocked(J)Z
    .registers 11
    .param p1, "eventTime"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 1708
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v7, :cond_14

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_15

    .line 1750
    :cond_14
    :goto_14
    return v3

    .line 1713
    :cond_15
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-ne v0, v7, :cond_2e

    move v6, v7

    .line 1716
    .local v6, "proxEnabled":Z
    :goto_20
    if-eqz v6, :cond_30

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    if-nez v0, :cond_30

    .line 1717
    const-string v0, "PowerManagerService"

    const-string v1, "Screen__On : Cancel(proxEnabled = true)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .end local v6    # "proxEnabled":Z
    :cond_2e
    move v6, v3

    .line 1713
    goto :goto_20

    .line 1723
    .restart local v6    # "proxEnabled":Z
    :cond_30
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ps] Screen__On : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1725
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 1728
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v0, :pswitch_data_94

    .line 1743
    :goto_57
    :pswitch_57
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1744
    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1745
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1746
    const-string v0, "PowerManagerService"

    const-string v1, "[s] WAKEFULNESS_AWAKE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move v3, v7

    .line 1750
    goto :goto_14

    .line 1730
    :pswitch_72
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from sleep..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 1732
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakeUpStarted()V

    .line 1733
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    goto :goto_57

    .line 1736
    :pswitch_84
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from dream..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1739
    :pswitch_8c
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from nap..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1728
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_72
        :pswitch_57
        :pswitch_8c
        :pswitch_84
    .end packed-switch
.end method

.method private wakeUpNoUserActivityNoUpdateLocked(J)Z
    .registers 8
    .param p1, "eventTime"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1761
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_14

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v3, v2, :cond_14

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v3, :cond_15

    .line 1805
    :cond_14
    :goto_14
    return v1

    .line 1767
    :cond_15
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-ne v3, v2, :cond_2a

    move v0, v2

    .line 1770
    .local v0, "proxEnabled":Z
    :goto_20
    if-eqz v0, :cond_2c

    .line 1771
    const-string v2, "PowerManagerService"

    const-string v3, "Screen__On(wake lock) : Cancel(proxEnabled = true)"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .end local v0    # "proxEnabled":Z
    :cond_2a
    move v0, v1

    .line 1767
    goto :goto_20

    .line 1777
    .restart local v0    # "proxEnabled":Z
    :cond_2c
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ps] Screen__On(wake lock) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1779
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 1782
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v1, :pswitch_data_88

    .line 1797
    :goto_53
    :pswitch_53
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1798
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1799
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1800
    const-string v1, "PowerManagerService"

    const-string v3, "[s] WAKEFULNESS_AWAKE"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1805
    goto :goto_14

    .line 1784
    :pswitch_66
    const-string v1, "PowerManagerService"

    const-string v3, "Waking up from sleep..."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 1786
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWakeUpStarted()V

    .line 1787
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    goto :goto_53

    .line 1790
    :pswitch_78
    const-string v1, "PowerManagerService"

    const-string v3, "Waking up from dream..."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1793
    :pswitch_80
    const-string v1, "PowerManagerService"

    const-string v3, "Waking up from nap..."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1782
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_66
        :pswitch_53
        :pswitch_80
        :pswitch_78
    .end packed-switch
.end method

.method private static wakefulnessToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "wakefulness"    # I

    .prologue
    .line 4270
    packed-switch p0, :pswitch_data_14

    .line 4280
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 4272
    :pswitch_8
    const-string v0, "Asleep"

    goto :goto_7

    .line 4274
    :pswitch_b
    const-string v0, "Awake"

    goto :goto_7

    .line 4276
    :pswitch_e
    const-string v0, "Dreaming"

    goto :goto_7

    .line 4278
    :pswitch_11
    const-string v0, "Napping"

    goto :goto_7

    .line 4270
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)V
    .registers 14
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x0

    .line 1077
    if-nez p1, :cond_b

    .line 1078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_b
    invoke-static {p2, p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    if-eqz p4, :cond_3c

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 1084
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :goto_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1091
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1092
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, "ident":J
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1094
    :try_start_35
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3e

    .line 1096
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    return-void

    .line 1087
    .end local v5    # "uid":I
    .end local v6    # "pid":I
    .end local v7    # "ident":J
    :cond_3c
    const/4 p4, 0x0

    goto :goto_24

    .line 1096
    .restart local v5    # "uid":I
    .restart local v6    # "pid":I
    .restart local v7    # "ident":J
    :catchall_3e
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public crash(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3674
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] crash: message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3680
    .local v0, "ident":J
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    .line 3682
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3684
    return-void

    .line 3682
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4091
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_33

    .line 4093
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4261
    :cond_32
    :goto_32
    return-void

    .line 4099
    :cond_33
    const-string v7, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4103
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4104
    :try_start_3b
    const-string v7, "Power Manager State:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDirty=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakefulness="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsPowered="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPlugType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDockState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOn="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mProximityPositive="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBootCompleted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSystemReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakeLockSummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivitySummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSandmanScheduled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastWakeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastSleepTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSendWakeUpFinishedNotificationWhenReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSendGoToSleepFinishedNotificationWhenReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDisplayReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4134
    const-string v7, "Settings and Configuration:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsSupportedConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsEnabledSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenOffTimeoutSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (enforced="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDynamicAutoBrightnessRatioValueSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessModeSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivitySummary: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4169
    const-string v7, "  GlobalConfig.GLOBALCONFIG_CAMERA_ENABLE_FACE_SERVICE: true"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4171
    const-string v7, "  SecProductFeature_CAMERA.SEC_PRODUCT_FEATURE_CAMERA_USING_SMARTFACESERVICE: true"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4173
    const-string v7, "  SecProductFeature_CAMERA.SEC_PRODUCT_FEATURE_CAMERA_DELAY_TIME_FOR_SMART_STAY: 2000"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    const-string v7, "  mIsBlankUnblankInSeperateThread: true"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v4

    .line 4181
    .local v4, "screenOffTimeout":I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 4182
    .local v3, "screenDimDuration":I
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen off timeout: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen dim duration: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen dim duration override: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4189
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4190
    const-string v7, "Smart Stay:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4191
    const-string v7, "  GlobalConfig_smartStay: true"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSmartStayEnabledSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  SmartStayDelay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mNextTimeoutForSmartStay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPendingMessageSmartStay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPendingMessagePreSmartStay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsTablet: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsTablet:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mFaceDetected: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4199
    const-string v7, "  mIsBadCurrentConsumptionDevice: true"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4204
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4205
    const-string v7, "InputDeviceLightState:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTouchKeyOffTimeoutSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsSipVisible: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4211
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v7, :cond_62a

    .line 4212
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4213
    const-string v7, "ATT EAS Pin lock:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSecuredLockEnableSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSecuredLockTimeoutSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    :cond_62a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4221
    const-string v7, "Clear Cover:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsCoverClosed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4226
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4227
    const-string v7, "Auto Power Off:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mAutoPowerOffEventTime: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffEventTime:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mAutoPowerOffTimeMillis: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeMillis:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mAutoPowerOffTimeoutSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4232
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wake Locks: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4234
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6bf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4235
    .local v6, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6bf

    .line 4252
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "screenOffTimeout":I
    .end local v6    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_6e2
    move-exception v7

    monitor-exit v8
    :try_end_6e4
    .catchall {:try_start_3b .. :try_end_6e4} :catchall_6e2

    throw v7

    .line 4238
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "screenOffTimeout":I
    :cond_6e5
    :try_start_6e5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspend Blockers: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4240
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .line 4241
    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_70a

    .line 4244
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_72d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen On Blocker: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4247
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display Blanker: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4250
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    .line 4251
    .local v0, "dpc":Lcom/android/server/power/DisplayPowerController;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 4252
    .local v5, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v8
    :try_end_768
    .catchall {:try_start_6e5 .. :try_end_768} :catchall_6e2

    .line 4254
    if-eqz v0, :cond_76d

    .line 4255
    invoke-virtual {v0, p2}, Lcom/android/server/power/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 4258
    :cond_76d
    if-eqz v5, :cond_32

    .line 4259
    invoke-virtual {v5, p2}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_32
.end method

.method dumpDebugLog()V
    .registers 4

    .prologue
    .line 5354
    const-string v1, "PowerManagerService"

    const-string v2, "dumpDebugLog +"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5356
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/power/PowerManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$10;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5386
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5387
    return-void
.end method

.method enableMonitorWakelocks()Z
    .registers 2

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mMonitorEnabled:Z

    return v0
.end method

.method public forceDisableWakeLock(Z)V
    .registers 6
    .param p1, "disabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2949
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [auto power off] forceDisableWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2952
    :try_start_24
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z

    .line 2953
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_84

    .line 2955
    const-string v0, "PowerManagerService"

    const-string v1, "[auto power off] forceDisableWakeLock :: mAlarmManager is canceled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2958
    if-eqz p1, :cond_87

    .line 2959
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFakeShutdownSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2961
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceDisableWakeLock: Try to sleep!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/power/PowerManagerService;->goToSleep(JI)V

    .line 2964
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@forceDisableWakeLock: nativeFakeShutdown()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeFakeShutdown()V

    .line 2966
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFakeShutdownSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2974
    :goto_83
    return-void

    .line 2953
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0

    .line 2969
    :cond_87
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2970
    const/4 v0, 0x0

    :try_start_8b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    .line 2971
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_92

    .line 2972
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimer()V

    goto :goto_83

    .line 2971
    :catchall_92
    move-exception v0

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v0
.end method

.method public getCurrentBrightness(Z)F
    .registers 7
    .param p1, "ratio"    # Z

    .prologue
    .line 2806
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] getCurrentBrightness: ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const/high16 v1, -0x40800000

    .line 2809
    .local v1, "ret":F
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    int-to-float v0, v2

    .line 2811
    .local v0, "curBrightness":F
    if-eqz p1, :cond_2e

    .line 2812
    const/high16 v2, 0x437f0000

    div-float v1, v0, v2

    .line 2817
    :goto_2d
    return v1

    .line 2814
    :cond_2e
    move v1, v0

    goto :goto_2d
.end method

.method public getProcessName(I)Ljava/lang/String;
    .registers 15
    .param p1, "_pid"    # I

    .prologue
    .line 1027
    const-string v9, ""

    .line 1028
    .local v9, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->enableMonitorWakelocks()Z

    move-result v11

    if-nez v11, :cond_a

    move-object v10, v9

    .line 1071
    .end local v9    # "processName":Ljava/lang/String;
    .local v10, "processName":Ljava/lang/String;
    :goto_9
    return-object v10

    .line 1031
    .end local v10    # "processName":Ljava/lang/String;
    .restart local v9    # "processName":Ljava/lang/String;
    :cond_a
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 1033
    .local v0, "buffer":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/proc/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/cmdline"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1035
    .local v4, "file":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1037
    .local v6, "is":Ljava/io/FileInputStream;
    :try_start_28
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2d} :catch_60
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_71
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_82
    .catchall {:try_start_28 .. :try_end_2d} :catchall_93

    .line 1038
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_2d
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 1039
    .local v8, "len":I
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1040
    if-lez v8, :cond_4f

    .line 1041
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    if-ge v5, v8, :cond_49

    .line 1042
    aget-byte v11, v0, v5

    const/16 v12, 0x21

    if-lt v11, v12, :cond_45

    aget-byte v11, v0, v5

    const/16 v12, 0x7e

    if-le v11, v12, :cond_57

    .line 1043
    :cond_45
    const/4 v11, 0x0

    aput-byte v11, v0, v5

    .line 1044
    move v8, v5

    .line 1048
    :cond_49
    new-instance v9, Ljava/lang/String;

    .end local v9    # "processName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-direct {v9, v0, v11, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_4f} :catch_a8
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_4f} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4f} :catch_a2
    .catchall {:try_start_2d .. :try_end_4f} :catchall_9f

    .line 1061
    .end local v5    # "i":I
    .restart local v9    # "processName":Ljava/lang/String;
    :cond_4f
    if-eqz v7, :cond_54

    .line 1062
    :try_start_51
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a

    :cond_54
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "len":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_55
    :goto_55
    move-object v10, v9

    .line 1071
    .end local v9    # "processName":Ljava/lang/String;
    .restart local v10    # "processName":Ljava/lang/String;
    goto :goto_9

    .line 1041
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v10    # "processName":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "len":I
    .restart local v9    # "processName":Ljava/lang/String;
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 1064
    .end local v5    # "i":I
    :catch_5a
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 1067
    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_55

    .line 1050
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "len":I
    :catch_60
    move-exception v1

    .line 1051
    .end local v9    # "processName":Ljava/lang/String;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1052
    const-string v9, ""
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_93

    .line 1061
    .restart local v9    # "processName":Ljava/lang/String;
    if-eqz v6, :cond_55

    .line 1062
    :try_start_68
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_55

    .line 1064
    :catch_6c
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 1053
    .end local v1    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v2

    .line 1054
    .end local v9    # "processName":Ljava/lang/String;
    .local v2, "ex":Ljava/io/IOException;
    :goto_72
    :try_start_72
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1055
    const-string v9, ""
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_93

    .line 1061
    .restart local v9    # "processName":Ljava/lang/String;
    if-eqz v6, :cond_55

    .line 1062
    :try_start_79
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_55

    .line 1064
    :catch_7d
    move-exception v1

    .line 1065
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 1056
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_82
    move-exception v3

    .line 1057
    .end local v9    # "processName":Ljava/lang/String;
    .local v3, "exc":Ljava/lang/Exception;
    :goto_83
    :try_start_83
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1058
    const-string v9, ""
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_93

    .line 1061
    .restart local v9    # "processName":Ljava/lang/String;
    if-eqz v6, :cond_55

    .line 1062
    :try_start_8a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_55

    .line 1064
    :catch_8e
    move-exception v1

    .line 1065
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 1060
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "exc":Ljava/lang/Exception;
    .end local v9    # "processName":Ljava/lang/String;
    :catchall_93
    move-exception v11

    .line 1061
    :goto_94
    if-eqz v6, :cond_99

    .line 1062
    :try_start_96
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 1066
    :cond_99
    :goto_99
    throw v11

    .line 1064
    :catch_9a
    move-exception v1

    .line 1065
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 1060
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catchall_9f
    move-exception v11

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_94

    .line 1056
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_a2
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_83

    .line 1053
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_a5
    move-exception v2

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_72

    .line 1050
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_a8
    move-exception v1

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_61
.end method

.method public goToSleep(JI)V
    .registers 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I

    .prologue
    .line 1812
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] [s] goToSleep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_30

    .line 1815
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1818
    :cond_30
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goToSleep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 1824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1826
    .local v0, "ident":J
    :try_start_5b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JI)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_62

    .line 1828
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1830
    return-void

    .line 1828
    :catchall_62
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ls"    # Lcom/android/server/LightsService;
    .param p3, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p4, "bs"    # Lcom/android/server/BatteryService;
    .param p5, "bss"    # Lcom/android/internal/app/IBatteryStats;
    .param p6, "dm"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 598
    const-string v0, "PowerManagerService"

    const-string v1, "[api] init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 601
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 602
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 603
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 604
    iput-object p6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 605
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 606
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 607
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 609
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    .line 613
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BlankUnblankInSeperateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadBlankUnblankDisplay:Landroid/os/HandlerThread;

    .line 614
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadBlankUnblankDisplay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 615
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadBlankUnblankDisplay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;

    .line 621
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->initSmartStay()V

    .line 625
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    .line 627
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->unblankAllDisplays()V

    .line 636
    return-void
.end method

.method public isScreenOn()Z
    .registers 4

    .prologue
    .line 3459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3461
    .local v0, "ident":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenOnInternal()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v2

    .line 3463
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 1470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1472
    .local v0, "ident":J
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v2

    .line 1474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 4085
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4086
    :try_start_3
    monitor-exit v1

    .line 4087
    return-void

    .line 4086
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public nap(J)V
    .registers 8
    .param p1, "eventTime"    # J

    .prologue
    .line 1923
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] nap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_2c

    .line 1926
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1929
    :cond_2c
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1933
    .local v0, "ident":J
    :try_start_38
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->napInternal(J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3f

    .line 1935
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    return-void

    .line 1935
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preventAutoPowerOff(IZ)V
    .registers 10
    .param p1, "who"    # I
    .param p2, "bPrevent"    # Z

    .prologue
    .line 2884
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[api] [auto power off] preventAutoPowerOff: who: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bPrevent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2891
    .local v0, "ident":J
    :try_start_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2892
    .local v2, "now":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->preventAutoPowerOffInternal(IZ)V

    .line 2893
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimerInternal(J)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3c

    .line 2895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2897
    return-void

    .line 2895
    .end local v2    # "now":J
    :catchall_3c
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .registers 13
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3521
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "!@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "[api] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " confirm: %b"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wait: %b"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoWithProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3527
    .local v2, "rebootReason":Ljava/lang/StringBuilder;
    const-string v3, "PowerManagerService"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.REBOOT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3533
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_5f
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_66

    .line 3535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3537
    return-void

    .line 3535
    :catchall_66
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1202
    if-nez p1, :cond_a

    .line 1203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1206
    :cond_a
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1210
    .local v0, "ident":J
    :try_start_16
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 1212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1214
    return-void

    .line 1212
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resetAutoPowerOffTimer()V
    .registers 3

    .prologue
    .line 2840
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2841
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimerInternal(J)V

    .line 2842
    return-void
.end method

.method public setAttentionLight(ZI)V
    .registers 8
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 3772
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setAttentionLight: on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3778
    .local v0, "ident":J
    :try_start_36
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 3780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    return-void

    .line 3780
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAutoBrightnessForEbookOnly(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2823
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [DAB] setAutoBrightnessForEbookOnly : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2826
    :try_start_23
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean p1, v0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    .line 2828
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2829
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2830
    monitor-exit v1

    .line 2831
    return-void

    .line 2830
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public setAutoBrightnessLimit(II)V
    .registers 7
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I

    .prologue
    const/4 v3, -0x1

    .line 2724
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    if-lt p1, v3, :cond_11

    if-lt p2, v3, :cond_11

    if-ltz p2, :cond_3c

    if-le p1, p2, :cond_3c

    .line 2727
    :cond_11
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setAutoBrightnessLimit : invalid Limits : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    :cond_3b
    :goto_3b
    return-void

    .line 2731
    :cond_3c
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ne v0, p1, :cond_48

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-eq v0, p2, :cond_3b

    .line 2733
    :cond_48
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p1, v0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 2734
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p2, v0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 2735
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setAutoBrightnessLimit : lowerLimit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   upperLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2738
    :try_start_7d
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2739
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2740
    monitor-exit v1

    goto :goto_3b

    :catchall_88
    move-exception v0

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_88

    throw v0
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .registers 5
    .param p1, "brightness"    # I

    .prologue
    .line 3854
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    return-void
.end method

.method public setButtonTimeoutOverrideFromWindowManager(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3900
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3904
    .local v0, "ident":J
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setButtonTimeoutOverrideFromWindowManagerInternal(J)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 3906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3908
    return-void

    .line 3906
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setKeyboardVisibility(Z)V
    .registers 8
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3019
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3020
    :try_start_5
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeyboardVisibility: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    if-eqz v3, :cond_2f

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    if-eq v3, p1, :cond_2f

    .line 3022
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    .line 3023
    if-eqz p1, :cond_3a

    .line 3024
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3029
    :cond_2f
    :goto_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_41

    .line 3032
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_39

    .line 3033
    if-nez p1, :cond_44

    :goto_36
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateLidState(Z)V

    .line 3035
    :cond_39
    return-void

    .line 3026
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto :goto_2f

    .line 3029
    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    move v0, v1

    .line 3033
    goto :goto_36
.end method

.method public setMasterBrightnessAdjustmentFromSSRM(III)V
    .registers 7
    .param p1, "adjustment"    # I
    .param p2, "adjustmentValidRangeMin"    # I
    .param p3, "adjustmentValidRangeMax"    # I

    .prologue
    .line 2778
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setMasterBrightnessAdjustmentFromSSRM : adjustment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adjustmentValidRangeMin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adjustmentValidRangeMax : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_5d

    .line 2785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setMasterBrightnessAdjustmentFromSSRM : invalid adjustment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2788
    :cond_5d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2789
    :try_start_60
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p1, v0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    .line 2790
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p2, v0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    .line 2791
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p3, v0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    .line 2793
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2794
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2795
    monitor-exit v1

    .line 2796
    return-void

    .line 2795
    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_60 .. :try_end_79} :catchall_77

    throw v0
.end method

.method public setMasterBrightnessLimit(II)V
    .registers 8
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I

    .prologue
    const/16 v4, 0xff

    const/4 v3, -0x1

    .line 2751
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    if-eq p1, v3, :cond_2a

    if-ltz p1, :cond_11

    if-le p1, v4, :cond_2a

    .line 2754
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterBrightnessLimit : invalid lowerLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2757
    :cond_2a
    if-eq p2, v3, :cond_49

    if-ltz p2, :cond_30

    if-le p2, v4, :cond_49

    .line 2758
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterBrightnessLimit : invalid upperLimit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2761
    :cond_49
    if-eq p1, v3, :cond_72

    if-eq p2, v3, :cond_72

    if-le p1, p2, :cond_72

    .line 2762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterBrightnessLimit : lowerLimit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > upperLimit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2765
    :cond_72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p1, v0, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    .line 2766
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput p2, v0, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    .line 2768
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setMasterBrightnessLimit : minBrightnss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  maxBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2771
    :try_start_a7
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2772
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2773
    monitor-exit v1

    .line 2774
    return-void

    .line 2773
    :catchall_b2
    move-exception v0

    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_a7 .. :try_end_b4} :catchall_b2

    throw v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .registers 7
    .param p1, "timeMs"    # I

    .prologue
    .line 3743
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setMaximumScreenOffTimeoutFromDeviceAdmin: timeMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3747
    .local v0, "ident":J
    :try_start_24
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 3749
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3751
    return-void

    .line 3749
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    .line 658
    const-string v0, "PowerManagerService"

    const-string v1, "[api] setPolicy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_a
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 662
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setRatioOfAutoBrightness(I)V
    .registers 6
    .param p1, "ratioValue"    # I

    .prologue
    .line 2704
    const/4 v0, 0x0

    .line 2706
    .local v0, "adj":F
    const/16 v1, 0x64

    if-eq p1, v1, :cond_32

    .line 2707
    add-int/lit8 v1, p1, -0x64

    int-to-float v1, v1

    const/high16 v2, 0x42c80000

    div-float v0, v1, v2

    .line 2712
    :goto_c
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRatioOfAutoBrightness : ratioValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adj : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 2715
    return-void

    .line 2709
    :cond_32
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .registers 7
    .param p1, "brightness"    # I

    .prologue
    .line 3820
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3824
    .local v0, "ident":J
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 3826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3828
    return-void

    .line 3826
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setScreenDimDurationOverrideFromWindowManager(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 2994
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2998
    .local v0, "ident":J
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 3000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3002
    return-void

    .line 3000
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setStayOnSetting(I)V
    .registers 7
    .param p1, "val"    # I

    .prologue
    .line 3717
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setStayOnSetting: val: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3724
    .local v0, "ident":J
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    .line 3726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3728
    return-void

    .line 3726
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSystemPowerSaveMode(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 2935
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setSystemPowerSaveMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean p1, v0, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    .line 2938
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2939
    :try_start_27
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2940
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2941
    monitor-exit v1

    .line 2942
    return-void

    .line 2941
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .registers 7
    .param p1, "adj"    # F

    .prologue
    .line 3974
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setTemporaryScreenAutoBrightnessAdjustmentSettingOverride: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3980
    .local v0, "ident":J
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    .line 3982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3984
    return-void

    .line 3982
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .registers 7
    .param p1, "brightness"    # I

    .prologue
    .line 3937
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setTemporaryScreenBrightnessSettingOverride: brightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3943
    .local v0, "ident":J
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    .line 3945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3947
    return-void

    .line 3945
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setThermalBrightnessLimit(IZ)V
    .registers 5
    .param p1, "newBrightness"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_3
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 646
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 650
    if-eqz p2, :cond_f

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-ge p1, v0, :cond_f

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManager(I)V

    .line 653
    :cond_f
    return-void

    .line 646
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3867
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3871
    .local v0, "ident":J
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 3873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    return-void

    .line 3873
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shutdown(ZZ)V
    .registers 13
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3548
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "!@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "[api] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shutdown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " confirm: %b"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wait: %b"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoWithProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3554
    .local v2, "rebootReason":Ljava/lang/StringBuilder;
    const-string v3, "PowerManagerService"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.REBOOT"

    invoke-virtual {v3, v4, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3560
    .local v0, "ident":J
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_58
    invoke-direct {p0, v3, p1, v4, p2}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5f

    .line 3562
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3564
    return-void

    .line 3562
    :catchall_5f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public switchForceLcdBacklightOffState()V
    .registers 4

    .prologue
    .line 3063
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3064
    :try_start_3
    const-string v0, "PowerManagerService"

    const-string v2, "[api] switchForceLcdBacklightOffState()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz v0, :cond_20

    .line 3066
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 3071
    :goto_15
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3072
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3073
    monitor-exit v1

    .line 3074
    return-void

    .line 3069
    :cond_20
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    goto :goto_15

    .line 3073
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    .registers 20
    .param p1, "twilight"    # Lcom/android/server/TwilightService;
    .param p2, "dreamManager"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 667
    const-string v2, "PowerManagerService"

    const-string v3, "[api] systemReady()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 670
    const/4 v2, 0x1

    :try_start_f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 671
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 674
    .local v13, "pm":Landroid/os/PowerManager;
    invoke-virtual {v13}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 675
    invoke-virtual {v13}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 676
    invoke-virtual {v13}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 678
    new-instance v15, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v15, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 682
    .local v15, "sensorManager":Landroid/hardware/SensorManager;
    new-instance v2, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v6, "PowerManagerService.Broadcasts"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 688
    new-instance v2, Lcom/android/server/power/DisplayPowerController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v7, p1

    move-object v8, v15

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/DisplayPowerController;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    .line 693
    new-instance v2, Lcom/android/server/power/WirelessChargerDetector;

    const-string v3, "PowerManagerService.WirelessChargerDetector"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    invoke-direct {v2, v15, v3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 701
    new-instance v2, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/LightsService;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 702
    new-instance v2, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/LightsService;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 703
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 712
    new-instance v2, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/LightsService;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 713
    new-instance v2, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/LightsService;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 714
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    .line 717
    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 722
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string v2, "screensaver_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 725
    const-string v2, "screensaver_activate_on_sleep"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 728
    const-string v2, "screensaver_activate_on_dock"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 731
    const-string v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 734
    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 737
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 741
    const-string v2, "auto_brightness_detail"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 745
    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 750
    const-string v2, "button_key_light"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 757
    const-string v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 764
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v2, :cond_20c

    .line 765
    const-string v2, "is_secured_lock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 768
    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 775
    :cond_20c
    const-string v2, "auto_power_off"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 783
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 784
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 785
    monitor-exit v16
    :try_end_22f
    .catchall {:try_start_f .. :try_end_22f} :catchall_233

    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->registerReceiverInSystemReady()V

    .line 800
    return-void

    .line 785
    .end local v13    # "pm":Landroid/os/PowerManager;
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_233
    move-exception v2

    :try_start_234
    monitor-exit v16
    :try_end_235
    .catchall {:try_start_234 .. :try_end_235} :catchall_233

    throw v2
.end method

.method public systemShutdown()V
    .registers 7

    .prologue
    .line 3568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3570
    .local v0, "ident":J
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    const-string v4, "system_shutdown"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    .line 3572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3574
    return-void

    .line 3572
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public timeSinceScreenWasLastOn()J
    .registers 6

    .prologue
    .line 3803
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3804
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_d

    .line 3805
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 3807
    :goto_c
    return-wide v0

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_c

    .line 3808
    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public updateBlockedUids(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 1391
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1393
    if-eqz p2, :cond_36

    .line 1394
    :try_start_5
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 1396
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1397
    .local v1, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    if-eqz v1, :cond_33

    .line 1399
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v2, p1, :cond_2c

    invoke-direct {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1400
    :cond_2c
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-direct {p0, v2, v4}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    .line 1395
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1407
    .end local v0    # "index":I
    .end local v1    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_36
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1409
    :cond_40
    monitor-exit v3

    .line 1410
    return-void

    .line 1409
    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public updateCoverState(Z)V
    .registers 6
    .param p1, "closed"    # Z

    .prologue
    const/4 v0, 0x1

    .line 3039
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v1, v0, :cond_3f

    .line 3042
    .local v0, "autoBrightness":Z
    :goto_5
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3045
    :try_start_20
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3046
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3047
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_41

    .line 3050
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_3e

    if-nez p1, :cond_3e

    if-eqz v0, :cond_3e

    .line 3052
    :try_start_32
    const-string v1, "PowerManagerService"

    const-string v2, "getting light value..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_3e} :catch_44

    .line 3058
    :cond_3e
    :goto_3e
    return-void

    .line 3039
    .end local v0    # "autoBrightness":Z
    :cond_3f
    const/4 v0, 0x0

    goto :goto_5

    .line 3047
    .restart local v0    # "autoBrightness":Z
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1

    .line 3054
    :catch_44
    move-exception v1

    goto :goto_3e
.end method

.method public updateLidState(Z)V
    .registers 6
    .param p1, "closed"    # Z

    .prologue
    .line 3079
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3080
    :try_start_3
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLidState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eq v0, p1, :cond_2a

    .line 3082
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    .line 3083
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3084
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3086
    :cond_2a
    monitor-exit v1

    .line 3087
    return-void

    .line 3086
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    const/4 v4, 0x0

    .line 1324
    if-nez p1, :cond_b

    .line 1325
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1328
    :cond_b
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 1330
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1338
    .local v0, "ident":J
    :try_start_25
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2e

    .line 1340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1342
    return-void

    .line 1333
    .end local v0    # "ident":J
    :cond_2c
    const/4 p2, 0x0

    goto :goto_21

    .line 1340
    .restart local v0    # "ident":J
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public userActivity(JII)V
    .registers 18
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1499
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] [s] userActivity : event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1502
    .local v9, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7a

    .line 1507
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1508
    :try_start_3f
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    const-wide/32 v11, 0x493e0

    add-long/2addr v3, v11

    cmp-long v1, v9, v3

    if-ltz v1, :cond_75

    .line 1509
    iput-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 1510
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER permission.  Please fix your app!   pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_75
    monitor-exit v2

    .line 1531
    :goto_76
    return-void

    .line 1516
    :catchall_77
    move-exception v1

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_3f .. :try_end_79} :catchall_77

    throw v1

    .line 1520
    :cond_7a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_8a

    .line 1521
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event time must not be in the future"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1524
    :cond_8a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1525
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, "ident":J
    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1527
    :try_start_98
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9f

    .line 1529
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_76

    :catchall_9f
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public wakeUp(J)V
    .registers 9
    .param p1, "eventTime"    # J

    .prologue
    .line 1615
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 1618
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1619
    :try_start_8
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z

    if-eqz v2, :cond_2a

    .line 1620
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[auto power off] [s] wakeUp is canceled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    monitor-exit v3

    .line 1643
    :goto_29
    return-void

    .line 1623
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_57

    .line 1625
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] [s] wakeUp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_5a

    .line 1628
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1623
    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v2

    .line 1631
    :cond_5a
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wakeUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1639
    .local v0, "ident":J
    :try_start_85
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_8c

    .line 1641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    :catchall_8c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
