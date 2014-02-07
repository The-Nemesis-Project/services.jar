.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$SvcLEDHandler;,
        Lcom/android/server/LightsService$SvcLEDReceiver;,
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field public static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field public static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LIGHT_FLASH_HARDWARE:I = 0x2

.field public static final LIGHT_FLASH_NONE:I = 0x0

.field public static final LIGHT_FLASH_TIMED:I = 0x1

.field public static final LIGHT_ID_ATTENTION:I = 0x5

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BATTERY:I = 0x3

.field public static final LIGHT_ID_BLUETOOTH:I = 0x6

.field public static final LIGHT_ID_BUTTONS:I = 0x2

.field public static final LIGHT_ID_CONNECTIVITY:I = 0x8

.field public static final LIGHT_ID_COUNT:I = 0xb

.field public static final LIGHT_ID_KEYBOARD:I = 0x1

.field public static final LIGHT_ID_LED_SERVICE:I = 0xa

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field public static final LIGHT_ID_VOLUME:I = 0x9

.field public static final LIGHT_ID_WIFI:I = 0x7

.field static final LIGHT_SEC_FLASH:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field private static final SVCLED_BATTERY_MASK:I = 0x71

.field private static final SVCLED_CHARGING:I = 0x10

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x40

.field private static final SVCLED_LED_SERVICE:I = 0x8

.field private static final SVCLED_LED_SERVICE_MASK:I = 0x8

.field private static final SVCLED_LOW_BATTERY:I = 0x20

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x4

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x7

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x6

.field private static final SVCLED_MODE_LED_SERVICE:I = 0x3

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x5

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I

.field private static final model:Ljava/lang/String;


# instance fields
.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mDelayForcedSvcLEDTask:I

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private mIsLEDChanged:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field private mLedLowPowerPath:Ljava/lang/String;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

.field private mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 136
    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 137
    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    .line 138
    sput v0, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 139
    sput v0, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 140
    sput v0, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 141
    sput v0, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    .line 162
    const-string v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    .line 85
    const/16 v2, 0x2bc

    iput v2, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    .line 99
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    .line 100
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    .line 101
    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    .line 142
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    .line 146
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/sys/power/wake_lock"

    aput-object v3, v2, v4

    const-string v3, "/sys/power/wake_unlock"

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 149
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    .line 164
    new-array v2, v6, [Lcom/android/server/LightsService$Light;

    iput-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    .line 311
    new-instance v2, Lcom/android/server/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 419
    new-instance v2, Lcom/android/server/LightsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    .line 445
    iput-boolean v4, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    .line 464
    new-instance v2, Lcom/android/server/LightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$4;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 512
    const-string v2, "/sys/class/sec/led/led_lowpower"

    iput-object v2, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    .line 513
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    .line 514
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    .line 668
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    .line 348
    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mNativePointer:I

    .line 349
    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    .line 351
    const-string v2, "hardware"

    iget-object v3, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 354
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    .line 355
    new-instance v2, Lcom/android/server/LightsService$2;

    const-string v3, "mSvcLEDThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    .line 388
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 389
    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    .line 390
    :goto_7d
    :try_start_7d
    iget-boolean v2, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_7f
    .catchall {:try_start_7d .. :try_end_7f} :catchall_99

    if-nez v2, :cond_89

    .line 392
    :try_start_81
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_86} :catch_87
    .catchall {:try_start_81 .. :try_end_86} :catchall_99

    goto :goto_7d

    .line 393
    :catch_87
    move-exception v2

    goto :goto_7d

    .line 397
    :cond_89
    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_99

    .line 400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8b
    if-ge v1, v6, :cond_9c

    .line 401
    iget-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v3, Lcom/android/server/LightsService$Light;

    invoke-direct {v3, p0, v1, v7}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v3, v2, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 397
    .end local v1    # "i":I
    :catchall_99
    move-exception v2

    :try_start_9a
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v2

    .line 405
    .restart local v1    # "i":I
    :cond_9c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/server/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 56
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$1300(IIIIIII)V
    .registers 7
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 56
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/LightsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/LightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;IIIIIZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/LightsService;Lcom/android/server/LightsService$SvcLEDHandler;)Lcom/android/server/LightsService$SvcLEDHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Lcom/android/server/LightsService$SvcLEDHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/LightsService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LightsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method private acquireWakeLockForLED()V
    .registers 3

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_11

    .line 674
    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/LightsService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    .line 680
    :cond_11
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 801
    const-string v1, ""

    .line 802
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 803
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 805
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

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    return-object v1
.end method

.method private clearSvcLedStateLocked(I)V
    .registers 9
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 738
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 739
    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    .line 461
    :cond_8
    :goto_8
    return-void

    .line 450
    :cond_9
    if-eqz p1, :cond_21

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eqz v0, :cond_21

    .line 451
    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-nez v0, :cond_8

    .line 452
    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_8

    .line 456
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_8

    .line 457
    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_8
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 590
    const/4 v2, 0x0

    .line 596
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_2b

    .line 605
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 606
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_38

    move-object v2, v3

    .line 615
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1a
    return-void

    .line 597
    :catch_1b
    move-exception v0

    .line 598
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 599
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    .line 601
    :cond_27
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2a} :catch_2b

    goto :goto_1a

    .line 607
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2b
    move-exception v0

    .line 608
    .local v0, "e":Ljava/io/IOException;
    :goto_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 610
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_1a

    .line 611
    :catch_33
    move-exception v1

    .line 612
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 607
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_38
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2c
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 699
    const/4 v2, 0x0

    .line 701
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-boolean v5, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    if-nez v5, :cond_e

    .line 702
    const-string v5, "LightsService"

    const-string v6, "WakeLock path is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_d
    return v4

    .line 706
    :cond_e
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_21

    .line 707
    const-string v5, "LightsService"

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 715
    :cond_21
    :try_start_21
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_38
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_41

    .line 721
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2b
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 722
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_4e

    .line 723
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_d

    .line 716
    :catch_38
    move-exception v0

    .line 717
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_39
    const-string v5, "LightsService"

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_d

    .line 724
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_41
    move-exception v0

    .line 725
    .local v0, "e":Ljava/io/IOException;
    :goto_42
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 727
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_d

    .line 728
    :catch_49
    move-exception v1

    .line 729
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 724
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4e
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_42
.end method

.method private static native finalize_native(I)V
.end method

.method private handleForcedSvcLEDTask()V
    .registers 4

    .prologue
    .line 619
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] Lux failed to be updated in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms. -> handleForcedSvcLEDTasK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 621
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V

    .line 622
    return-void
.end method

.method private static native init_native()I
.end method

.method private initializeWakeLockPath()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 645
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_32

    .line 647
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 648
    iget-object v0, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 656
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 657
    iget-object v0, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 664
    iput-boolean v2, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    .line 666
    :cond_32
    :goto_32
    return-void

    .line 651
    :cond_33
    const-string v0, "LightsService"

    const-string v1, "wake_lock path does not exists"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 660
    :cond_3b
    const-string v0, "LightsService"

    const-string v1, "wake_unlock path does not exists "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private releaseWakeLockForLED()V
    .registers 3

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$SvcLEDHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 686
    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/LightsService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    .line 696
    :cond_1a
    return-void
.end method

.method private static native setLight_native(IIIIIII)V
.end method

.method private setSvcLedLightLocked(I)V
    .registers 13
    .param p1, "sensorValue"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 517
    const/16 v1, 0x14

    if-ge p1, v1, :cond_71

    move v6, v0

    .line 518
    .local v6, "ledLowPower":I
    :goto_7
    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    if-eq v6, v1, :cond_1a

    .line 519
    iput v6, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    .line 520
    iget-object v1, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/LightsService;->fileWriteInt(Ljava/lang/String;I)V

    .line 521
    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    .line 524
    :cond_1a
    const/4 v9, 0x0

    .line 525
    .local v9, "priority":I
    const/4 v8, 0x1

    .line 526
    .local v8, "operator":I
    const/4 v7, -0x1

    .line 527
    .local v7, "mode":I
    const/4 v9, 0x0

    :goto_1e
    const/4 v0, 0x7

    if-ge v9, v0, :cond_28

    .line 528
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_73

    .line 533
    :cond_28
    const/4 v2, 0x0

    .line 535
    .local v2, "ledMode":I
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-nez v0, :cond_76

    .line 536
    iget v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    .line 537
    .local v10, "svcLedId":I
    const/4 v2, 0x0

    .line 575
    :goto_30
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v10

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    # invokes: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    .line 577
    iget v0, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    if-eq v0, v10, :cond_99

    .line 578
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: priority changed! SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") OUT; SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") IN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_6b
    iput v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    .line 585
    invoke-direct {p0}, Lcom/android/server/LightsService;->releaseWakeLockForLED()V

    .line 587
    return-void

    .end local v2    # "ledMode":I
    .end local v6    # "ledLowPower":I
    .end local v7    # "mode":I
    .end local v8    # "operator":I
    .end local v9    # "priority":I
    .end local v10    # "svcLedId":I
    :cond_71
    move v6, v5

    .line 517
    goto :goto_7

    .line 527
    .restart local v6    # "ledLowPower":I
    .restart local v7    # "mode":I
    .restart local v8    # "operator":I
    .restart local v9    # "priority":I
    :cond_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 539
    .restart local v2    # "ledMode":I
    :cond_76
    packed-switch v9, :pswitch_data_b8

    .line 569
    const/4 v10, 0x5

    .line 570
    .restart local v10    # "svcLedId":I
    const/4 v2, 0x0

    goto :goto_30

    .line 541
    .end local v10    # "svcLedId":I
    :pswitch_7c
    const/4 v10, 0x3

    .line 542
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xb

    .line 543
    goto :goto_30

    .line 545
    .end local v10    # "svcLedId":I
    :pswitch_80
    const/4 v10, 0x4

    .line 546
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xc

    .line 547
    goto :goto_30

    .line 549
    .end local v10    # "svcLedId":I
    :pswitch_84
    const/4 v10, 0x4

    .line 550
    .restart local v10    # "svcLedId":I
    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 551
    goto :goto_30

    .line 553
    .end local v10    # "svcLedId":I
    :pswitch_88
    const/16 v10, 0xa

    .line 554
    .restart local v10    # "svcLedId":I
    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 555
    goto :goto_30

    .line 557
    .end local v10    # "svcLedId":I
    :pswitch_8d
    const/4 v10, 0x3

    .line 558
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xa

    .line 559
    goto :goto_30

    .line 561
    .end local v10    # "svcLedId":I
    :pswitch_91
    const/4 v10, 0x3

    .line 562
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xd

    .line 563
    goto :goto_30

    .line 565
    .end local v10    # "svcLedId":I
    :pswitch_95
    const/4 v10, 0x3

    .line 566
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xe

    .line 567
    goto :goto_30

    .line 581
    :cond_99
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: Current SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") maintains its priority right"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 539
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_80
        :pswitch_84
        :pswitch_88
        :pswitch_8d
        :pswitch_91
        :pswitch_95
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "set"    # Z

    .prologue
    const/16 v1, 0xa

    .line 743
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    .line 745
    const/4 v0, 0x3

    if-ne p1, v0, :cond_aa

    .line 747
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x72

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 748
    if-eqz p6, :cond_19

    .line 749
    if-ne p3, v1, :cond_6f

    .line 750
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 790
    :cond_19
    :goto_19
    sget v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_22

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    .line 793
    :cond_22
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: SvcLEDState : 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/LightsService;->mSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | SvcLED(id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_109

    const-string v0, "On"

    :goto_63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void

    .line 751
    :cond_6f
    const/16 v0, 0xe

    if-ne p3, v0, :cond_7a

    .line 752
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_19

    .line 753
    :cond_7a
    const/16 v0, 0xd

    if-ne p3, v0, :cond_85

    .line 754
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_19

    .line 755
    :cond_85
    const/16 v0, 0xb

    if-ne p3, v0, :cond_90

    .line 756
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_19

    .line 758
    :cond_90
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 761
    :cond_aa
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d3

    .line 762
    if-eqz p6, :cond_cb

    .line 763
    const/16 v0, 0xc

    if-ne p3, v0, :cond_bb

    .line 764
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_19

    .line 767
    :cond_bb
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 768
    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 769
    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 770
    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 771
    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_19

    .line 774
    :cond_cb
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_19

    .line 776
    :cond_d3
    if-ne p1, v1, :cond_ef

    .line 777
    if-eqz p6, :cond_e7

    .line 778
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 779
    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 780
    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 781
    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 782
    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_19

    .line 784
    :cond_e7
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_19

    .line 787
    :cond_ef
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 793
    :cond_109
    const-string v0, "Off"

    goto/16 :goto_63
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 411
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 412
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 413
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method systemReady()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 429
    const-string v1, "LightsService"

    const-string v2, "[SvcLED] systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    .local v0, "updateSvcLEDIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 435
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 436
    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_40

    .line 437
    iget-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 440
    :cond_40
    invoke-direct {p0}, Lcom/android/server/LightsService;->initializeWakeLockPath()V

    .line 442
    return-void
.end method
