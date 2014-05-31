.class public final Lcom/android/server/ssrm/Monitor;
.super Ljava/lang/Thread;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$HangoutMode;,
        Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;,
        Lcom/android/server/ssrm/Monitor$SIPStatusInfo;,
        Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;,
        Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EXTRA_DOCK_STATE_HMT:I = 0xb

.field public static final MSG_BROADCAST_INTENT:I = 0xa

.field public static final MSG_CFMS_COMMAND:I = 0xb

.field public static final MSG_FOREGROUND_APP:I = 0x9

.field public static final MSG_REVIEW_APK:I = 0xc

.field private static TAG:Ljava/lang/String;

.field static TAG_SIOP:Ljava/lang/String;

.field static mForegroundPackageName:Ljava/lang/String;

.field static mMainsController:Lcom/android/server/ssrm/settings/MainController;

.field private static mMonitor:Lcom/android/server/ssrm/Monitor;

.field static mNotifiedMaxBrightness:I

.field static mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

.field public static mSsrmv2Enabled:Z

.field public static mSurfaceTemperature:I

.field public static sHandlerThread:Landroid/os/HandlerThread;

.field public static sIsGHeavyAppFg:Z

.field public static sIsHeavyAppFg:Z


# instance fields
.field final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

.field ACTION_POWER_STRETCH_CHANGED:Ljava/lang/String;

.field final AP_THERMAL_SYSFS_PATH:Ljava/lang/String;

.field final IS_VISIBLE_WINDOW:Ljava/lang/String;

.field final RESPONSE_AXT9INFO:Ljava/lang/String;

.field SIOP_TIMER_DELAY:I

.field SIOP_TIMER_PERIOD:I

.field final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String;

.field final SSRM_STATUS_NAME:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

.field final SSRM_STATUS_VALUE:Ljava/lang/String;

.field mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mAMSQuerySyncObject:Ljava/lang/Object;

.field mActivityManager:Landroid/app/ActivityManager;

.field mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

.field mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

.field mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

.field mBootComplete:Z

.field mBrowserDashCount:I

.field mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field public mCallStateOffHook:Z

.field mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mContext:Landroid/content/Context;

.field mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

.field mCpuMaxSIP:Landroid/os/DVFSHelper;

.field mCurrentApTemperature:I

.field mCurrentBatteryLevel:I

.field mCurrentBatteryTemperature:I

.field mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

.field mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mEmergencyMode:Lcom/android/server/ssrm/EmergencyMode;

.field mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

.field mHandler:Landroid/os/Handler;

.field mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

.field mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

.field mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

.field mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field final mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field mIntentPowerStretchChanged:Landroid/content/Intent;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mIsApThermistorNodeExists:Z

.field public mIsGHeavyUserScenarioExist:Z

.field mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mLimiter:Lcom/android/server/ssrm/Limiter;

.field mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

.field mMaxFpsHelper:Landroid/os/DVFSHelper;

.field mNavigationOn:Z

.field mOrientationIntent:Landroid/content/Intent;

.field mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

.field mPolarisArmLock:Landroid/os/DVFSHelper;

.field mPolarisPDFViewOn:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerSavingMode:Lcom/android/server/ssrm/PowerSavingMode;

.field mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

.field mPrevLucid:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

.field mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

.field mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

.field mSideTouch:Lcom/android/server/ssrm/fgapps/SideTouch;

.field mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTempShift:I

.field mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mThermistorObeserverRunnable:Ljava/lang/Runnable;

.field mWifiApOn:Z

.field mlevelCurrLucid:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    const-string v0, "SSRMv2:Monitor"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    .line 91
    const-string v0, "SSRMv2:SIOP"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    .line 93
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    .line 163
    const/16 v0, 0x12c

    sput v0, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    .line 567
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 805
    const/4 v0, -0x1

    sput v0, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    .line 985
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    .line 1039
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    .line 1277
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    .line 1279
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 341
    const-string v3, "Monitor"

    invoke-direct {p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v3, Lcom/android/server/ssrm/DevSysProperty;

    invoke-direct {v3}, Lcom/android/server/ssrm/DevSysProperty;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    .line 119
    iput-boolean v6, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    .line 121
    iput-boolean v6, p0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    .line 123
    iput v6, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 125
    iput v6, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    .line 127
    iput v6, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryLevel:I

    .line 129
    iput v6, p0, Lcom/android/server/ssrm/Monitor;->mTempShift:I

    .line 131
    const-string v3, "com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NOTIFY:Ljava/lang/String;

    .line 133
    const-string v3, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

    .line 135
    const-string v3, "SSRM_STATUS_NAME"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NAME:Ljava/lang/String;

    .line 137
    const-string v3, "SSRM_STATUS_VALUE"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_VALUE:Ljava/lang/String;

    .line 139
    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String;

    .line 151
    const-string v3, "ResponseAxT9Info"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->RESPONSE_AXT9INFO:Ljava/lang/String;

    .line 153
    const-string v3, "AxT9IME.isVisibleWindow"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    .line 167
    iput-boolean v6, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    .line 492
    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_PERIOD:I

    .line 494
    iput v6, p0, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_DELAY:I

    .line 584
    new-instance v3, Lcom/android/server/ssrm/Monitor$2;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/Monitor$2;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    .line 604
    new-instance v3, Lcom/android/server/ssrm/Monitor$3;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/Monitor$3;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

    .line 629
    new-instance v3, Lcom/android/server/ssrm/Monitor$4;

    const-string v4, "CPUFreqMax"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$4;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 637
    new-instance v3, Lcom/android/server/ssrm/Monitor$5;

    const-string v4, "CPUCoreMax"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$5;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 645
    new-instance v3, Lcom/android/server/ssrm/Monitor$6;

    const-string v4, "GPUFreqMax"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$6;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 653
    new-instance v3, Lcom/android/server/ssrm/Monitor$7;

    const-string v4, "HotControl"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$7;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 660
    new-instance v3, Lcom/android/server/ssrm/Monitor$8;

    const-string v4, "PST"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$8;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 673
    new-instance v3, Lcom/android/server/ssrm/Monitor$9;

    const-string v4, "TempShift"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$9;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 681
    new-instance v3, Lcom/android/server/ssrm/Monitor$10;

    const-string v4, "Flash"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$10;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 690
    new-instance v3, Lcom/android/server/ssrm/Monitor$11;

    const-string v4, "Recording"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$11;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 699
    new-instance v3, Lcom/android/server/ssrm/Monitor$12;

    const-string v4, "LCDBrightness"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$12;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 707
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    .line 739
    new-instance v3, Lcom/android/server/ssrm/Monitor$13;

    const-string v4, "Charging"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$13;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 748
    new-instance v3, Lcom/android/server/ssrm/Monitor$14;

    const-string v4, "ACL"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$14;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 757
    new-instance v3, Lcom/android/server/ssrm/Monitor$15;

    const-string v4, "PowerStretch"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$15;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 768
    new-instance v3, Lcom/android/server/ssrm/Monitor$16;

    const-string v4, "DynamicFpsLevel"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$16;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 787
    new-instance v3, Lcom/android/server/ssrm/Monitor$17;

    const-string v4, "SIOPLevel"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$17;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 796
    new-instance v3, Lcom/android/server/ssrm/Monitor$18;

    const-string v4, "SmartBonding"

    invoke-direct {v3, p0, v4}, Lcom/android/server/ssrm/Monitor$18;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 811
    const-string v3, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    .line 813
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    .line 839
    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    .line 841
    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mlevelCurrLucid:I

    .line 843
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->ACTION_POWER_STRETCH_CHANGED:Ljava/lang/String;

    .line 845
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->mIntentPowerStretchChanged:Landroid/content/Intent;

    .line 860
    const-string v3, "/sys/devices/platform/sec-thermistor/temperature"

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->AP_THERMAL_SYSFS_PATH:Ljava/lang/String;

    .line 862
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/platform/sec-thermistor/temperature"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ssrm/Monitor;->mIsApThermistorNodeExists:Z

    .line 959
    iput-boolean v6, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    .line 961
    iput-boolean v6, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    .line 963
    new-instance v3, Lcom/android/server/ssrm/Monitor$19;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/Monitor$19;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 987
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    .line 989
    new-instance v3, Lcom/android/server/ssrm/Monitor$20;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/Monitor$20;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 1110
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    .line 1142
    iput-boolean v6, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    .line 1144
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    .line 1181
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    .line 1183
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    .line 1221
    iput-object v5, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    .line 1611
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mOrientationIntent:Landroid/content/Intent;

    .line 1615
    iput v6, p0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    .line 343
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 344
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    .line 345
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 347
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    .line 349
    new-instance v3, Lcom/android/server/ssrm/Limiter;

    invoke-direct {v3, p1}, Lcom/android/server/ssrm/Limiter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    .line 350
    new-instance v3, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    .line 351
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerIntentFilters()V

    .line 354
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->start()V

    .line 357
    :try_start_16e
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_173
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_173} :catch_183

    .line 362
    :goto_173
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ssrm_v2.disable"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a1

    .line 363
    sput-boolean v6, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    .line 436
    :goto_182
    return-void

    .line 358
    :catch_183
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to registerProcessObserver, e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_173

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a1
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ssrm_v2.sts"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 368
    sput-boolean v7, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    .line 371
    :cond_1b0
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    if-nez v3, :cond_1b8

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v3, :cond_1bf

    .line 372
    :cond_1b8
    new-instance v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    invoke-direct {v3}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    .line 375
    :cond_1bf
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListeners()V

    .line 376
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v3}, Lcom/android/server/ssrm/DevSysProperty;->writeModeToSystemProperty()V

    .line 377
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v3, :cond_1d0

    .line 378
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v3}, Lcom/android/server/ssrm/DevSysProperty;->writeFgAppListenersToSystemProperty()V

    .line 382
    :cond_1d0
    :try_start_1d0
    invoke-static {}, Lcom/android/server/ssrm/settings/MainController;->getInstance()Lcom/android/server/ssrm/settings/MainController;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    .line 383
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXMLFromLocalOrResource()Ljava/io/InputStream;

    move-result-object v1

    .line 384
    .local v1, "modelIs":Ljava/io/InputStream;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v2, "writers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v4, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;

    invoke-direct {v4}, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 386
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v4, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;

    invoke-direct {v4}, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 389
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v4, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v4, v5}, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;-><init>(Landroid/os/PowerManager;)V

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 394
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v3, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    .line 396
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v4, Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;

    invoke-direct {v4}, Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 397
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/ssrm/settings/MainController;->initialize(Lcom/android/server/ssrm/settings/LevelsFactory;Ljava/io/InputStream;Ljava/util/List;)V

    .line 408
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "SSRMv2 Settings Engine initialized!"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v3, :cond_28e

    .line 411
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v4, "ScreenOff"

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 412
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    if-eqz v3, :cond_284

    .line 413
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v4, "ScreenOffInCall"

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 415
    :cond_284
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v4, "ScreenOnAppStarted"

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 418
    :cond_28e
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v4, "HangoutsVTCall"

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v3

    if-nez v3, :cond_29b

    .line 419
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    .line 422
    :cond_29b
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v4, "GHeavyUserUp"

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v3

    if-eqz v3, :cond_2b2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v4, "GHeavyUserDown"

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v3

    if-eqz v3, :cond_2b2

    .line 424
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    .line 427
    :cond_2b2
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->updateSimpleConditionsWithName()V

    .line 429
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/DevSysProperty;->setSsrmInitResult(Z)V
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_2bb} :catch_2bd

    goto/16 :goto_182

    .line 430
    .end local v1    # "modelIs":Ljava/io/InputStream;
    .end local v2    # "writers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    :catch_2bd
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "failed to init ssrm v2"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/DevSysProperty;->setSsrmInitResult(Z)V

    goto/16 :goto_182
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/Monitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ssrm/Monitor;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z

    move-result v0

    return v0
.end method

.method public static appendLog(Ljava/lang/String;)V
    .registers 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1716
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ssrm.log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1717
    .local v2, "logFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1719
    :try_start_d
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_25

    .line 1727
    :cond_10
    :goto_10
    :try_start_10
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1728
    .local v0, "buf":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1729
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1730
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_2a

    .line 1735
    .end local v0    # "buf":Ljava/io/BufferedWriter;
    :goto_24
    return-void

    .line 1720
    :catch_25
    move-exception v1

    .line 1722
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 1731
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2a
    move-exception v1

    .line 1733
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24
.end method

.method public static getMonitorInstance()Lcom/android/server/ssrm/Monitor;
    .registers 1

    .prologue
    .line 578
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static declared-synchronized getMonitorInstance(Landroid/content/Context;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 571
    const-class v1, Lcom/android/server/ssrm/Monitor;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-nez v0, :cond_e

    .line 572
    new-instance v0, Lcom/android/server/ssrm/Monitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/Monitor;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 574
    :cond_e
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 571
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPolicyXMLFromLocalOrResource()Ljava/io/InputStream;
    .registers 13

    .prologue
    .line 186
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.debug"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "fileSsrmDebug":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.original"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v5, "fileSsrmOriginal":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.new"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, "fileSsrmNew":Ljava/io/File;
    sget-boolean v10, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-nez v10, :cond_1e

    .line 191
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    .line 237
    :goto_1d
    return-object v9

    .line 194
    :cond_1e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_55

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 196
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 199
    :cond_2d
    const/4 v6, 0x0

    .line 200
    .local v6, "fin":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 202
    .local v7, "fos":Ljava/io/OutputStream;
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v6

    .line 203
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_97
    .catchall {:try_start_2f .. :try_end_3c} :catchall_7b

    .line 204
    .end local v7    # "fos":Ljava/io/OutputStream;
    .local v8, "fos":Ljava/io/OutputStream;
    if-eqz v6, :cond_4b

    if-eqz v8, :cond_4b

    .line 205
    const/16 v10, 0x400

    :try_start_42
    new-array v0, v10, [B

    .line 207
    .local v0, "buffer":[B
    :goto_44
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_6c
    .catchall {:try_start_42 .. :try_end_47} :catchall_94

    move-result v1

    .line 208
    .local v1, "count":I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_67

    .line 217
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :cond_4b
    if-eqz v6, :cond_50

    .line 218
    :try_start_4d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 220
    :cond_50
    if-eqz v8, :cond_55

    .line 221
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_79

    .line 228
    .end local v6    # "fin":Ljava/io/InputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :cond_55
    :goto_55
    const/4 v9, 0x0

    .line 229
    .local v9, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 231
    :try_start_5c
    new-instance v9, Ljava/io/BufferedInputStream;

    .end local v9    # "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_87

    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_1d

    .line 211
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v6    # "fin":Ljava/io/InputStream;
    .restart local v8    # "fos":Ljava/io/OutputStream;
    :cond_67
    const/4 v10, 0x0

    :try_start_68
    invoke-virtual {v8, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_94

    goto :goto_44

    .line 214
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_6c
    move-exception v10

    move-object v7, v8

    .line 217
    .end local v8    # "fos":Ljava/io/OutputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    :goto_6e
    if-eqz v6, :cond_73

    .line 218
    :try_start_70
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 220
    :cond_73
    if-eqz v7, :cond_55

    .line 221
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_78} :catch_79

    goto :goto_55

    .line 223
    .end local v7    # "fos":Ljava/io/OutputStream;
    :catch_79
    move-exception v10

    goto :goto_55

    .line 216
    .restart local v7    # "fos":Ljava/io/OutputStream;
    :catchall_7b
    move-exception v10

    .line 217
    :goto_7c
    if-eqz v6, :cond_81

    .line 218
    :try_start_7e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 220
    :cond_81
    if-eqz v7, :cond_86

    .line 221
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_86} :catch_92

    .line 216
    :cond_86
    :goto_86
    throw v10

    .line 232
    .end local v6    # "fin":Ljava/io/InputStream;
    .end local v7    # "fos":Ljava/io/OutputStream;
    :catch_87
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_1d

    .line 237
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_1d

    .line 223
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v6    # "fin":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    :catch_92
    move-exception v11

    goto :goto_86

    .line 216
    .end local v7    # "fos":Ljava/io/OutputStream;
    .restart local v8    # "fos":Ljava/io/OutputStream;
    :catchall_94
    move-exception v10

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/OutputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    goto :goto_7c

    .line 214
    :catch_97
    move-exception v10

    goto :goto_6e
.end method

.method private getPolicyXmlFromResource()Ljava/io/InputStream;
    .registers 7

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "modelIs":Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 174
    .local v2, "resources":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v4, "raw"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "resID":I
    if-eqz v1, :cond_15

    .line 176
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 178
    :cond_15
    return-object v0
.end method

.method private onBatteryChanged(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1488
    const-string v2, "level"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setBatteryRemaining(I)V

    .line 1490
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1491
    .local v0, "battPlugged":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_40

    .line 1492
    invoke-static {v5}, Lcom/android/server/ssrm/DeviceStatus;->setUsbConnected(Z)V

    .line 1493
    invoke-static {v5}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onUsbConnectionStatusChangedForAll(Z)V

    .line 1498
    :goto_1b
    const-string/jumbo v2, "temperature"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    .line 1499
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v2}, Lcom/android/server/ssrm/DevSysProperty;->getBatteryTemperature()I

    move-result v1

    .line 1500
    .local v1, "devTemp":I
    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_30

    .line 1501
    iput v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    .line 1503
    :cond_30
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

    if-eqz v2, :cond_3f

    .line 1504
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v3, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/BatteryCoolDownMode;->startBatteryCoolDownMode(I)V

    .line 1506
    :cond_3f
    return-void

    .line 1495
    .end local v1    # "devTemp":I
    :cond_40
    invoke-static {v3}, Lcom/android/server/ssrm/DeviceStatus;->setUsbConnected(Z)V

    .line 1496
    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onUsbConnectionStatusChangedForAll(Z)V

    goto :goto_1b
.end method

.method private onBootCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1509
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onReceive:: ACTION_BOOT_COMPLETED is received."

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iput-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    .line 1512
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 1513
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v0}, Lcom/android/server/ssrm/SortingMachine;->bootComplete()V

    .line 1515
    new-instance v1, Lcom/android/server/ssrm/PowerSavingMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/PowerSavingMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Lcom/android/server/ssrm/PowerSavingMode;

    .line 1516
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v1, :cond_29

    .line 1517
    new-instance v1, Lcom/android/server/ssrm/EmergencyMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/EmergencyMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mEmergencyMode:Lcom/android/server/ssrm/EmergencyMode;

    .line 1519
    :cond_29
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_34

    .line 1520
    new-instance v1, Lcom/android/server/ssrm/CoolDownMode;

    invoke-direct {v1}, Lcom/android/server/ssrm/CoolDownMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    .line 1522
    :cond_34
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_3f

    .line 1523
    new-instance v1, Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-direct {v1}, Lcom/android/server/ssrm/BatteryCoolDownMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

    .line 1525
    :cond_3f
    new-instance v1, Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/ssrm/Monitor$HangoutMode;-><init>(Lcom/android/server/ssrm/Monitor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    .line 1527
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardFinished()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1528
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    iput-boolean v4, v1, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 1531
    :cond_5a
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v1

    if-nez v1, :cond_64

    .line 1532
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/ssrm/Monitor;->notifyLimitBrightness(IZ)V

    .line 1535
    :cond_64
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SsrmUEventObserver;->systemReady(Landroid/content/Context;)V

    .line 1537
    const-string v1, "dev.knoxapp.running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$22;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$22;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1554
    return-void
.end method

.method private onClearCoverOn(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1439
    const-string v0, "com.samsung.ssrm.COVER_OPEN"

    .line 1440
    .local v0, "ACTION_SSRM_COVER_OPEN":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ssrm.COVER_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v1, "intent_":Landroid/content/Intent;
    const-string v2, "coverOpen"

    const-string v3, "coverOpen"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1442
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1443
    return-void
.end method

.method private onPowerConnected()V
    .registers 4

    .prologue
    .line 1470
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/ssrm/DeviceStatus;->setPowerConnected(Z)V

    .line 1472
    const-string v1, "ro.product.name"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "PRODUCT_NAME":Ljava/lang/String;
    const-string v1, "ms013gzm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "ms013gzn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1474
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Limiter;->rewriteChargingCurrent()V

    .line 1476
    :cond_21
    return-void
.end method

.method private onPowerDisconnected()V
    .registers 2

    .prologue
    .line 1466
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->setPowerConnected(Z)V

    .line 1467
    return-void
.end method

.method private onScreenOff()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1427
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v0, :cond_16

    .line 1428
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v0, :cond_16

    .line 1429
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v0, :cond_17

    .line 1430
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1436
    :cond_16
    :goto_16
    return-void

    .line 1432
    :cond_17
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_16
.end method

.method private onScreenOn()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1446
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v1, :cond_33

    .line 1447
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v1, :cond_1a

    .line 1448
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/Monitor;->isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1450
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1455
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget v1, v1, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNow:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1456
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/settings/MainController;->setTemperature(I)V

    .line 1457
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->limitBrightness()V

    .line 1461
    :cond_33
    const-string v0, "com.samsung.ssrm.SCREEN_ON"

    .line 1462
    .local v0, "ACTION_SSRM_SCREEN_ON":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.ssrm.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1463
    return-void

    .line 1452
    .end local v0    # "ACTION_SSRM_SCREEN_ON":Ljava/lang/String;
    :cond_44
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_1a
.end method

.method private onSecurePlaybackStarted()V
    .registers 4

    .prologue
    .line 1394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1395
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "SecurePlayback_play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1398
    const-string v1, "PackageName"

    const-string v2, "android.av.media.libstagefright"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    const-string v1, "PID"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1400
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1401
    return-void
.end method

.method private onSecurePlaybackStopped()V
    .registers 4

    .prologue
    .line 1384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1385
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1386
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "SecurePlayback_play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1388
    const-string v1, "PackageName"

    const-string v2, "android.av.media.libstagefright"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string v1, "PID"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1390
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1391
    return-void
.end method

.method private onSsrmIntentReceived(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1404
    const-string v4, "SSRM_STATUS_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1405
    .local v1, "statusName":Ljava/lang/String;
    const-string v4, "SSRM_STATUS_VALUE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1406
    .local v2, "statusValue":Z
    const-string v4, "PackageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_60

    if-eqz v1, :cond_60

    .line 1409
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver::onReceive SSRM_STATUS_NOTIFY with statusName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  statusValue ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v4, :cond_40

    .line 1413
    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1416
    :cond_40
    const-string v4, "Navigation_show"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1417
    iput-boolean v2, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    .line 1420
    :cond_4a
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v4, :cond_60

    sget-boolean v4, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v4, :cond_60

    .line 1421
    iget-object v4, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v5, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    if-nez v5, :cond_5c

    iget-boolean v5, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    if-eqz v5, :cond_5d

    :cond_5c
    const/4 v3, 0x1

    :cond_5d
    invoke-virtual {p0, v4, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1424
    :cond_60
    return-void
.end method

.method private onTetheringChanged(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1372
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1373
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1374
    iput-boolean v2, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    .line 1378
    :goto_13
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v3, :cond_29

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v3, :cond_29

    .line 1379
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    if-nez v4, :cond_25

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    if-eqz v4, :cond_26

    :cond_25
    move v1, v2

    :cond_26
    invoke-virtual {p0, v3, v1}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1381
    :cond_29
    return-void

    .line 1376
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    goto :goto_13
.end method

.method private onUsbCharged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1479
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, "chargingState":Ljava/lang/String;
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1481
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/Limiter;->setResetBatteryCharging(Z)V

    .line 1485
    :cond_15
    :goto_15
    return-void

    .line 1482
    :cond_16
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1483
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/Limiter;->setResetBatteryCharging(Z)V

    goto :goto_15
.end method

.method private declared-synchronized readThermistorFile()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 866
    monitor-enter p0

    :try_start_2
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    const-string v6, "/sys/devices/platform/sec-thermistor/temperature"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "apTempStr":Ljava/lang/String;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_be

    move-result v5

    if-nez v5, :cond_14

    .line 910
    :cond_12
    :goto_12
    monitor-exit p0

    return v4

    .line 872
    :cond_14
    :try_start_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 874
    .local v0, "apTemp":I
    rem-int/lit8 v5, v0, 0xa

    sub-int/2addr v0, v5

    .line 876
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mTempShift:I

    add-int/2addr v0, v5

    .line 879
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v5}, Lcom/android/server/ssrm/DevSysProperty;->getApTemperature()I

    move-result v2

    .line 880
    .local v2, "debugTemp":I
    const/16 v5, -0x3e7

    if-eq v2, v5, :cond_29

    .line 881
    move v0, v2

    .line 884
    :cond_29
    iget v3, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 885
    .local v3, "lastApTemp":I
    iput v0, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 887
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-nez v5, :cond_35

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    if-eqz v5, :cond_3d

    .line 888
    :cond_35
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-static {v5}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->WeightedMean(I)I

    move-result v5

    sput v5, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    .line 890
    :cond_3d
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v5, :cond_45

    .line 891
    sget v5, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    iput v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 896
    :cond_45
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    if-gez v5, :cond_5d

    .line 897
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v5, :cond_59

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v5, :cond_59

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-nez v5, :cond_59

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    if-eqz v5, :cond_5d

    .line 899
    :cond_59
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    iput v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 903
    :cond_5d
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v5, :cond_99

    .line 904
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIOP:: AP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PST = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :goto_92
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    if-eq v3, v5, :cond_12

    const/4 v4, 0x1

    goto/16 :goto_12

    .line 907
    :cond_99
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIOP:: AP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_14 .. :try_end_bd} :catchall_be

    goto :goto_92

    .line 866
    .end local v0    # "apTemp":I
    .end local v1    # "apTempStr":Ljava/lang/String;
    .end local v2    # "debugTemp":I
    .end local v3    # "lastApTemp":I
    :catchall_be
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private registerFgAppListener(Ljava/lang/Class;Z)V
    .registers 7
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 445
    :try_start_4
    const-class v1, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 446
    invoke-static {}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->getInstance()Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    .line 447
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-static {p1, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 454
    :goto_17
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 455
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addFgAppListeners(Ljava/lang/String;)V

    .line 462
    :cond_22
    :goto_22
    return-void

    .line 448
    :cond_23
    const-class v1, Lcom/android/server/ssrm/fgapps/SideTouch;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 449
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/SideTouch;

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mSideTouch:Lcom/android/server/ssrm/fgapps/SideTouch;

    .line 450
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mSideTouch:Lcom/android/server/ssrm/fgapps/SideTouch;

    invoke-static {p1, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    goto :goto_17

    .line 457
    :catch_39
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register FgAppListener class c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5a
    :try_start_5a
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener;

    invoke-static {p1, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_39

    goto :goto_17
.end method

.method private registerFgAppListeners()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 465
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 466
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 467
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 468
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 469
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 470
    const-class v3, Lcom/android/server/ssrm/fgapps/NavigationScenario;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v0, :cond_2f

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_c1

    :cond_2f
    move v0, v2

    :goto_30
    invoke-direct {p0, v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 471
    const-class v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-direct {p0, v0, v2}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 473
    const-class v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 474
    const-class v0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TURBO_MODE_BOOSTER:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 475
    const-class v3, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-nez v0, :cond_50

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_c4

    :cond_50
    move v0, v2

    :goto_51
    invoke-direct {p0, v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 476
    const-class v3, Lcom/android/server/ssrm/fgapps/TouchBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v0, :cond_c6

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v0, :cond_c6

    move v0, v2

    :goto_5f
    invoke-direct {p0, v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 478
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    invoke-direct {p0, v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 479
    const-class v3, Lcom/android/server/ssrm/fgapps/GameBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_c8

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-eqz v0, :cond_c8

    move v0, v2

    :goto_74
    invoke-direct {p0, v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 480
    const-class v3, Lcom/android/server/ssrm/fgapps/TouchBusBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v0, :cond_ca

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-eqz v0, :cond_ca

    move v0, v2

    :goto_82
    invoke-direct {p0, v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 482
    const-class v0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;

    invoke-direct {p0, v0, v2}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 483
    const-class v3, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_98

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v0, :cond_98

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-eqz v0, :cond_cc

    :cond_98
    move v0, v2

    :goto_99
    invoke-direct {p0, v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 485
    const-class v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    if-nez v3, :cond_a3

    move v1, v2

    :cond_a3
    invoke-direct {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 486
    const-class v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-direct {p0, v0, v2}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 487
    const-class v0, Lcom/android/server/ssrm/fgapps/SideTouch;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 488
    const-class v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 489
    const-class v0, Lcom/android/server/ssrm/fgapps/TouchReportRate;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 490
    return-void

    :cond_c1
    move v0, v1

    .line 470
    goto/16 :goto_30

    :cond_c4
    move v0, v1

    .line 475
    goto :goto_51

    :cond_c6
    move v0, v1

    .line 476
    goto :goto_5f

    :cond_c8
    move v0, v1

    .line 479
    goto :goto_74

    :cond_ca
    move v0, v1

    .line 480
    goto :goto_82

    :cond_cc
    move v0, v1

    .line 483
    goto :goto_99
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .registers 2
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 1604
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-nez v0, :cond_b

    .line 1609
    :cond_a
    :goto_a
    return-void

    .line 1608
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method private setForegroundPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1305
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    .line 1306
    return-void
.end method

.method static setNotifiedMaxBrightness(I)V
    .registers 1
    .param p0, "brightness"    # I

    .prologue
    .line 808
    sput p0, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    .line 809
    return-void
.end method

.method private trimKnoxPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1309
    const-string v1, "sec_container_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1310
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1311
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1313
    .end local v0    # "index":I
    :cond_14
    return-object p1
.end method

.method private updateKnoxSystemProperty(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1317
    const-string v0, "sec_container_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.sec.knox.containeragent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1320
    :cond_18
    const-string v0, "dev.knoxapp.running"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :goto_20
    return-void

    .line 1322
    :cond_21
    const-string v0, "dev.knoxapp.running"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private updateSimpleConditionsWithName()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 242
    const-string v5, "HeavyUser"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "HeavyUserScenario"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 244
    const-string v5, "GHeavyUserDown"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "GHeavyUserScenario"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 246
    const-string v5, "GHeavyUserUp"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "GHeavyUserScenario"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 248
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "ChatOnV"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 249
    const-string v5, "ChatOnV"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "ChatOnV_vtCall"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 252
    :cond_37
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "GroupPlay"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 253
    const-string v5, "GroupPlay"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v3

    .line 254
    .local v3, "mGroupPlay":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v5, "GroupPlay_gpuLock"

    invoke-virtual {v3, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 255
    const-string v5, "Navigation_show"

    invoke-virtual {v3, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 258
    .end local v3    # "mGroupPlay":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_51
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "CameraRecording"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 259
    const-string v5, "CameraRecording"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v1

    .line 261
    .local v1, "mCameraRecord":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v5, "Camera_recording"

    invoke-virtual {v1, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 262
    const-string v5, "Camera_recordingDual"

    invoke-virtual {v1, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 263
    const-string v5, "ChatOnV_vtCall"

    invoke-virtual {v1, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 264
    const-string v5, "Phone_vtCall"

    invoke-virtual {v1, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 267
    .end local v1    # "mCameraRecord":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_75
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "CameraShooting"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_8f

    .line 268
    const-string v5, "CameraShooting"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v2

    .line 270
    .local v2, "mCameraShot":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v5, "Camera_panoramaShot"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 271
    const-string v5, "Camera_dramaShot"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 274
    .end local v2    # "mCameraShot":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_8f
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "MirroringBoost"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_a4

    .line 275
    const-string v5, "MirroringBoost"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "ScreenMirroringBooster"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 279
    :cond_a4
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "BrowserMode"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_c7

    .line 280
    const-string v5, "BrowserMode"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v0

    .line 281
    .local v0, "mBrowser":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v5, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 282
    const-string v5, "com.android.chrome"

    invoke-virtual {v0, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 283
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    if-eqz v5, :cond_c7

    .line 284
    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 288
    .end local v0    # "mBrowser":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_c7
    const-string v5, "Hangouts"

    sget-boolean v6, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    invoke-static {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "com.google.android.talk"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 291
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "WatchNow"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_e9

    .line 292
    const-string v5, "WatchNow"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "com.sec.android.app.videoplayer"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 296
    :cond_e9
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "Camera"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_fe

    .line 297
    const-string v5, "Camera"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 301
    :cond_fe
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "VideoPlayer"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_113

    .line 302
    const-string v5, "VideoPlayer"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "com.samsung.everglades.video"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 306
    :cond_113
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "VoiceRecorder"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_128

    .line 307
    const-string v5, "VoiceRecorder"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v6, "com.sec.android.app.voicenote"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 311
    :cond_128
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "HotGameControl0"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_13d

    .line 312
    const-string v5, "HotGameControl0"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 315
    :cond_13d
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "HotGameControl1"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_152

    .line 316
    const-string v5, "HotGameControl1"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 319
    :cond_152
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "HotGameControl2"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_167

    .line 320
    const-string v5, "HotGameControl2"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 323
    :cond_167
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "HotGameControl3"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_17c

    .line 324
    const-string v5, "HotGameControl3"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 327
    :cond_17c
    sget-object v5, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v6, "HotGameControl4"

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v5

    if-eqz v5, :cond_191

    .line 328
    const-string v5, "HotGameControl4"

    invoke-static {v5, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 332
    :cond_191
    const-string v5, "Navigation"

    sget-boolean v6, Lcom/android/server/ssrm/Feature;->SSRM_NAVIGATION:Z

    invoke-static {v5, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v4

    .line 334
    .local v4, "mNavigation":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v5, "com.google.android.apps.maps"

    invoke-virtual {v4, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 335
    const-string v5, "com.skt.skaf.l001mtm091"

    invoke-virtual {v4, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 336
    const-string v5, "kt.navi"

    invoke-virtual {v4, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 337
    const-string v5, "com.mnsoft.lgunavi"

    invoke-virtual {v4, v5}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 338
    return-void
.end method


# virtual methods
.method PowerStretchSet(I)V
    .registers 5
    .param p1, "mLucid"    # I

    .prologue
    .line 849
    iget v0, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    if-eq p1, v0, :cond_50

    .line 850
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->ACTION_POWER_STRETCH_CHANGED:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".POWER_STRETCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_3d

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".POWER_STRETCH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->ACTION_POWER_STRETCH_CHANGED:Ljava/lang/String;

    .line 852
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->ACTION_POWER_STRETCH_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mIntentPowerStretchChanged:Landroid/content/Intent;

    .line 854
    :cond_3d
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mIntentPowerStretchChanged:Landroid/content/Intent;

    const-string/jumbo v1, "value"

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mlevelCurrLucid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mIntentPowerStretchChanged:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 857
    :cond_50
    iput p1, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    .line 858
    return-void
.end method

.method checkIsHeavyApp(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1282
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 1284
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    iget-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    if-eqz v1, :cond_26

    .line 1285
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ssrm/SortingMachine;->isAppInCategory(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1286
    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    .line 1287
    const-string v1, "GHeavyUserScenario"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1302
    :cond_1a
    :goto_1a
    return-void

    .line 1289
    :cond_1b
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    if-eqz v1, :cond_26

    .line 1290
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    .line 1291
    const-string v1, "GHeavyUserScenario"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1295
    :cond_26
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1296
    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    .line 1297
    const-string v1, "HeavyUserScenario"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_1a

    .line 1298
    :cond_34
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    if-eqz v1, :cond_1a

    .line 1299
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    .line 1300
    const-string v1, "HeavyUserScenario"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_1a
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1137
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    if-eqz v0, :cond_9

    .line 1138
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-virtual {v0, p2}, Lcom/android/server/ssrm/settings/MainController;->dump(Ljava/io/PrintWriter;)V

    .line 1140
    :cond_9
    return-void
.end method

.method enableAcl(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 835
    const-string v0, "/sys/class/lcd/panel/siop_enable"

    .line 836
    .local v0, "ACL_SYSFS_PATH":Ljava/lang/String;
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "/sys/class/lcd/panel/siop_enable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void

    .line 836
    :cond_20
    const/4 v1, 0x0

    goto :goto_e
.end method

.method fileWriteInt(Ljava/lang/String;I)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 914
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1618
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    if-eqz v0, :cond_61

    .line 1619
    const-string v0, "TYPE_WINDOW_ORIENTATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1620
    const-string v0, "PORTRAIT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1621
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->setWindowOrientation(I)V

    .line 1713
    :cond_1b
    :goto_1b
    return-void

    .line 1622
    :cond_1c
    const-string v0, "LANDSCAPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1623
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->setWindowOrientation(I)V

    goto :goto_1b

    .line 1627
    :cond_2b
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v0, :cond_61

    const-string v0, "MULTIVERSE_FINGER_HOVER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1628
    const-string v0, "ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1629
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "MULTIVERSE_FINGER_HOVER::ON"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->setMultiverseEnable(Z)V

    goto :goto_1b

    .line 1631
    :cond_4c
    const-string v0, "OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1632
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "MULTIVERSE_FINGER_HOVER::OFF"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-virtual {v0, v4}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->setMultiverseEnable(Z)V

    goto :goto_1b

    .line 1639
    :cond_61
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mSideTouch:Lcom/android/server/ssrm/fgapps/SideTouch;

    if-eqz v0, :cond_9b

    .line 1640
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v0, :cond_9b

    const-string v0, "MULTIVERSE_SIDE_KEY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1641
    const-string v0, "ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1642
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "MULTIVERSE_SIDE_KEY::ON"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mSideTouch:Lcom/android/server/ssrm/fgapps/SideTouch;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/SideTouch;->setMultiverseEnable(Z)V

    goto :goto_1b

    .line 1644
    :cond_86
    const-string v0, "OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1645
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "MULTIVERSE_SIDE_KEY::OFF"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mSideTouch:Lcom/android/server/ssrm/fgapps/SideTouch;

    invoke-virtual {v0, v4}, Lcom/android/server/ssrm/fgapps/SideTouch;->setMultiverseEnable(Z)V

    goto :goto_1b

    .line 1652
    :cond_9b
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    if-nez v0, :cond_ad

    .line 1654
    :try_start_a3
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ad} :catch_127

    .line 1660
    :cond_ad
    :goto_ad
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v0, :cond_ca

    .line 1661
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    if-eqz v0, :cond_ca

    const-string v0, "SBROWSER_PAGE_LOADING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1662
    if-eqz p2, :cond_c5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_115

    .line 1663
    :cond_c5
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    invoke-virtual {v0, v4}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->setBrowserPageLoading(Z)V

    .line 1670
    :cond_ca
    :goto_ca
    const-string v0, "SBROWSER_DASH_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1671
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBROWSER_DASH_MODE:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    if-eqz p2, :cond_11b

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 1674
    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashModeForAll(Z)V

    .line 1675
    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v3}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1677
    iget v0, p0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    .line 1678
    iget v0, p0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    if-ne v0, v3, :cond_1b

    .line 1679
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/Monitor$23;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$23;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1b

    .line 1665
    :cond_115
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->setBrowserPageLoading(Z)V

    goto :goto_ca

    .line 1708
    :cond_11b
    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashModeForAll(Z)V

    .line 1709
    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v4}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1710
    iput v4, p0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    goto/16 :goto_1b

    .line 1656
    :catch_127
    move-exception v0

    goto :goto_ad
.end method

.method public initHandlerThread()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x7d0

    .line 499
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 565
    :cond_6
    :goto_6
    return-void

    .line 503
    :cond_7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SSRM Handler Thread"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    .line 504
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 505
    new-instance v0, Lcom/android/server/ssrm/Monitor$1;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/Monitor$1;-><init>(Lcom/android/server/ssrm/Monitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    .line 552
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v0, :cond_6

    .line 553
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 554
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getLastBatteryTemperature()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 555
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    iget v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/MainController;->setTemperature(I)V

    .line 556
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreMonitor.getLastBatteryTemperature:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_54
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_DELAY:I

    .line 560
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z
    .registers 3
    .param p1, "condition"    # Lcom/android/server/ssrm/settings/Condition;

    .prologue
    .line 1248
    if-nez p1, :cond_4

    .line 1249
    const/4 v0, 0x0

    .line 1251
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Condition;->signaled()Z

    move-result v0

    goto :goto_3
.end method

.method logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 976
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 980
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 981
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_7
    return-void
.end method

.method final notifyLimitBrightness(IZ)V
    .registers 8
    .param p1, "brightness"    # I
    .param p2, "bForce"    # Z

    .prologue
    .line 816
    const-string v1, "max_brightness"

    .line 817
    .local v1, "EXTRA_MAX_BRIGHTNESS":Ljava/lang/String;
    const-string v0, "change_type"

    .line 819
    .local v0, "EXTRA_CHANGE_TYPE":Ljava/lang/String;
    sget v2, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    if-ne v2, p1, :cond_a

    if-eqz p2, :cond_4a

    .line 820
    :cond_a
    sput p1, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    .line 822
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isBootCompleted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "max_brightness"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    if-gez v2, :cond_4b

    .line 826
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "change_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    :goto_43
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 832
    :cond_4a
    return-void

    .line 828
    :cond_4b
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "change_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_43
.end method

.method onDockConnected(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    .line 1186
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1189
    .local v6, "dockState":I
    const/16 v0, 0xb

    if-ne v6, v0, :cond_63

    .line 1190
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "SSRM_HMT_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    if-nez v0, :cond_36

    .line 1192
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_HMT_CPU"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    .line 1194
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    const v3, 0x1a5e00

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1197
    :cond_36
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    if-nez v0, :cond_50

    .line 1198
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_HMT_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    .line 1200
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1202
    :cond_50
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_59

    .line 1203
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1205
    :cond_59
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_62

    .line 1206
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1219
    :cond_62
    :goto_62
    return-void

    .line 1208
    :cond_63
    if-nez v6, :cond_7f

    .line 1209
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "SSRM_ACTION_DOCK_DETACHED"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_75

    .line 1211
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1213
    :cond_75
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_62

    .line 1214
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHmtDvfsHelperCpu:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_62

    .line 1217
    :cond_7f
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "SSRM_ACTION_DOCK_EVENT"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method onForegroundAppChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 1255
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1275
    :cond_10
    :goto_10
    return-void

    .line 1260
    :cond_11
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundAppChanged:: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->updateKnoxSystemProperty(Ljava/lang/String;)V

    .line 1263
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->trimKnoxPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->setForegroundPackageName(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1268
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/ssrm/TouchSeparation;->notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1270
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/Monitor$HangoutMode;->onFgAppChanged(Ljava/lang/String;)V

    .line 1272
    invoke-static {p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onForegroundActivitiesChanged(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->checkIsHeavyApp(Ljava/lang/String;)V

    goto :goto_10
.end method

.method onPolarisChanged(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v10, 0x124f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1147
    const-string v0, "ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1148
    .local v7, "enable":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1149
    iput-boolean v9, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    .line 1154
    :goto_15
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    if-nez v0, :cond_42

    .line 1155
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "POLARIS_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    .line 1157
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v6

    .line 1158
    .local v6, "cpuFreqTable":[I
    if-eqz v6, :cond_42

    aget v0, v6, v8

    if-le v0, v10, :cond_42

    .line 1159
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v10}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1164
    .end local v6    # "cpuFreqTable":[I
    :cond_42
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    if-eqz v0, :cond_68

    .line 1165
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: dvfs lock for Polaris is acquired."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1167
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1168
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: -20 cd is applied."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 1179
    :cond_64
    :goto_64
    return-void

    .line 1151
    :cond_65
    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    goto :goto_15

    .line 1172
    :cond_68
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: dvfs lock for Polaris is released."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1174
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1175
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: -20 cd is released."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    goto :goto_64
.end method

.method onReceiveBroadcastIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 1328
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, "action":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceiveForAll(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1332
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    if-eqz v2, :cond_14

    .line 1333
    invoke-static {}, Lcom/android/server/ssrm/TouchSeparation;->getInstance()Lcom/android/server/ssrm/TouchSeparation;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/server/ssrm/TouchSeparation;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1336
    :cond_14
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1337
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onBootCompleted()V

    .line 1369
    :cond_1f
    :goto_1f
    return-void

    .line 1338
    :cond_20
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1339
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onBatteryChanged(Landroid/content/Intent;)V

    goto :goto_1f

    .line 1340
    :cond_2c
    const-string v2, "android.intent.action.USB_CHARGING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onUsbCharged(Landroid/content/Intent;)V

    goto :goto_1f

    .line 1342
    :cond_38
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1343
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onPowerConnected()V

    goto :goto_1f

    .line 1344
    :cond_44
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1345
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onPowerDisconnected()V

    goto :goto_1f

    .line 1346
    :cond_50
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1347
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onScreenOn()V

    goto :goto_1f

    .line 1348
    :cond_5c
    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1349
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onClearCoverOn(Landroid/content/Intent;)V

    goto :goto_1f

    .line 1350
    :cond_68
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1351
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onScreenOff()V

    goto :goto_1f

    .line 1352
    :cond_74
    const-string v2, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string v2, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1353
    :cond_84
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onSsrmIntentReceived(Landroid/content/Intent;)V

    goto :goto_1f

    .line 1354
    :cond_88
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 1355
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onSipChanged(Landroid/content/Intent;)V

    goto :goto_1f

    .line 1356
    :cond_94
    const-string v2, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 1357
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onSecurePlaybackStarted()V

    goto :goto_1f

    .line 1358
    :cond_a0
    const-string v2, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1359
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onSecurePlaybackStopped()V

    goto/16 :goto_1f

    .line 1360
    :cond_ad
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 1361
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/Monitor;->onTetheringChanged(Landroid/content/Context;)V

    goto/16 :goto_1f

    .line 1362
    :cond_ba
    const-string v2, "com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ca

    const-string v2, "sec_container_1.com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 1365
    :cond_ca
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onPolarisChanged(Landroid/content/Intent;)V

    goto/16 :goto_1f

    .line 1366
    :cond_cf
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1367
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onDockConnected(Landroid/content/Intent;)V

    goto/16 :goto_1f
.end method

.method onSipChanged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1062
    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    .line 1063
    .local v0, "sipStatusInfo":Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    if-nez v0, :cond_7

    .line 1105
    :goto_6
    return-void

    .line 1067
    :cond_7
    monitor-enter v0

    .line 1068
    :try_start_8
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    .line 1070
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    if-eqz v1, :cond_21

    .line 1071
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onSIPIntentReceived:: SIP visility was updated more than two times in 100ms."

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :goto_1c
    monitor-exit v0

    goto :goto_6

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1

    .line 1074
    :cond_21
    const/4 v1, 0x1

    :try_start_22
    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    .line 1075
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$21;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$21;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_1e

    goto :goto_1c
.end method

.method public registerIntentFilters()V
    .registers 20

    .prologue
    .line 918
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 919
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 920
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 926
    const-string v1, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 927
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v1, "android.intent.action.USB_CHARGING"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 932
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 933
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 934
    const-string v1, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 935
    const-string v1, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 936
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 937
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 938
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 942
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 943
    .local v8, "filter2":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 944
    const-string v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 947
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 948
    .local v12, "filter3":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 949
    const-string v1, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v13, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 953
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 954
    .local v16, "filter4":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string v1, "sec_container_1.com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 957
    return-void
.end method

.method signal(Lcom/android/server/ssrm/settings/Condition;Z)V
    .registers 4
    .param p1, "condition"    # Lcom/android/server/ssrm/settings/Condition;
    .param p2, "on"    # Z

    .prologue
    .line 1240
    if-eqz p1, :cond_b

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z

    move-result v0

    if-eq v0, p2, :cond_b

    .line 1242
    invoke-virtual {p1, p2}, Lcom/android/server/ssrm/settings/Condition;->signal(Z)V

    .line 1245
    :cond_b
    return-void
.end method

.method updateFallbackTime(Z)V
    .registers 8
    .param p1, "isSIPVisble"    # Z

    .prologue
    .line 1113
    const-string v0, "hf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "jf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "jm"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1115
    :cond_1e
    if-eqz p1, :cond_5b

    .line 1116
    const-string v0, "debug.mdpcomp.idletime"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_27
    :goto_27
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    if-eqz v0, :cond_5a

    .line 1122
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3e

    .line 1123
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    .line 1125
    :cond_3e
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_53

    .line 1126
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    const v3, 0xfa7d0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1128
    :cond_53
    if-eqz p1, :cond_63

    .line 1129
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1134
    :cond_5a
    :goto_5a
    return-void

    .line 1118
    :cond_5b
    const-string v0, "debug.mdpcomp.idletime"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 1131
    :cond_63
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_5a
.end method
