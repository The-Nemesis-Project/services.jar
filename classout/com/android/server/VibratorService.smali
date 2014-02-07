.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$5;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final MY_IMMVIBE_LICENSE_KEY:Ljava/lang/String; = "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private IS_DUAL_MOTOR:I

.field private final SAFE_DEBUG:Z

.field private final TYPE_FEEDBACK_MAGNITUDE:I

.field private final TYPE_NOTIFICATION_MAGNITUDE:I

.field private final TYPE_RECVCALL_MAGNITUDE:I

.field private USE_SET_MAX_MAGNITUE:Z

.field private USE_VIBETONZ:Z

.field private final VIBE_DEBUG:Z

.field private levelToMagnitude:[I

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private mDevHandle:I

.field private final mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImmVibeAlertOnCallMagnitude:I

.field private mImmVibeCallMagnitude:I

.field private mImmVibeNotiMagnitude:I

.field private mImmVibeTouchMagnitude:I

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mTypeURIs:[Ljava/lang/String;

.field private mVibe:Lcom/immersion/android/ImmVibe;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 68
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->VIBE_DEBUG:Z

    .line 69
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    .line 71
    iput v4, p0, Lcom/android/server/VibratorService;->TYPE_FEEDBACK_MAGNITUDE:I

    .line 72
    iput v5, p0, Lcom/android/server/VibratorService;->TYPE_RECVCALL_MAGNITUDE:I

    .line 73
    iput v7, p0, Lcom/android/server/VibratorService;->TYPE_NOTIFICATION_MAGNITUDE:I

    .line 75
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v3, v2, v4

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    aput-object v3, v2, v5

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 80
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_e8

    iput-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    .line 81
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    .line 82
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    .line 83
    iput v4, p0, Lcom/android/server/VibratorService;->IS_DUAL_MOTOR:I

    .line 86
    iput v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 87
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeAlertOnCallMagnitude:I

    .line 88
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 89
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 90
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 91
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 102
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 103
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 119
    iput v8, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 219
    iput v8, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 576
    new-instance v2, Lcom/android/server/VibratorService$3;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 916
    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v2, :cond_7d

    .line 191
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 194
    :cond_7d
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 195
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 197
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "VibratorService"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 198
    iget-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 200
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 201
    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 203
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v2, :cond_e6

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 211
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 212
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 213
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v7}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 215
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->openDevice(Landroid/content/Context;)V

    .line 217
    :cond_e6
    return-void

    .line 80
    nop

    :array_e8
    .array-data 4
        0x0
        0x7d0
        0xfa0
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;JILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;JI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->doVibratorOn(JI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method private closeDevice(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1348
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->closeDevice(I)V

    .line 1349
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->terminate()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_16

    .line 1355
    :goto_c
    return-void

    .line 1350
    :catch_d
    move-exception v1

    .line 1351
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1352
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_16
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private doCancelVibrateLocked()V
    .registers 4

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_15

    .line 588
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 589
    :try_start_7
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 590
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 591
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_23

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 594
    :cond_15
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 595
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 597
    return-void

    .line 591
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private doVibratorExists()Z
    .registers 2

    .prologue
    .line 756
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 6

    .prologue
    .line 797
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 798
    :try_start_3
    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_46

    if-ltz v2, :cond_11

    .line 800
    :try_start_7
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v4, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_4b
    .catchall {:try_start_7 .. :try_end_e} :catchall_46

    .line 803
    :goto_e
    const/4 v2, -0x1

    :try_start_f
    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 805
    :cond_11
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 806
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_2a

    .line 807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_39

    .line 808
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 811
    .end local v0    # "i":I
    :cond_2a
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v2, :cond_3b

    .line 812
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_46

    if-eqz v2, :cond_39

    .line 814
    :try_start_32
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_39} :catch_49
    .catchall {:try_start_32 .. :try_end_39} :catchall_46

    .line 822
    :cond_39
    :goto_39
    :try_start_39
    monitor-exit v3

    .line 823
    return-void

    .line 818
    :cond_3b
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 819
    const-string v2, "VibratorService"

    const-string v4, "JNI vibratorOff()"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 822
    .end local v1    # "vibratorCount":I
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_46

    throw v2

    .line 815
    .restart local v1    # "vibratorCount":I
    :catch_49
    move-exception v2

    goto :goto_39

    .line 801
    .end local v1    # "vibratorCount":I
    :catch_4b
    move-exception v2

    goto :goto_e
.end method

.method private doVibratorOn(JI)V
    .registers 10
    .param p1, "millis"    # J
    .param p3, "uid"    # I

    .prologue
    .line 760
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 762
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 763
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_43
    .catchall {:try_start_3 .. :try_end_a} :catchall_40

    .line 766
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 767
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_23

    .line 768
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v1, :cond_3e

    .line 769
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 768
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 772
    .end local v0    # "i":I
    :cond_23
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 773
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JNI vibratorOn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_3e
    monitor-exit v3

    .line 776
    return-void

    .line 775
    .end local v1    # "vibratorCount":I
    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_40

    throw v2

    .line 764
    :catch_43
    move-exception v2

    goto :goto_a
.end method

.method private doVibratorOn(JILjava/lang/String;I)V
    .registers 16
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "magnitude"    # I

    .prologue
    .line 779
    iget-object v9, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v9

    .line 781
    :try_start_3
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 782
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_31
    .catchall {:try_start_3 .. :try_end_a} :catchall_2e

    .line 785
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 786
    .local v8, "vibratorCount":I
    if-eqz v8, :cond_23

    .line 787
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    if-ge v7, v8, :cond_2c

    .line 788
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 787
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 791
    .end local v7    # "i":I
    :cond_23
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-wide v3, p1

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V

    .line 793
    :cond_2c
    monitor-exit v9

    .line 794
    return-void

    .line 793
    .end local v8    # "vibratorCount":I
    :catchall_2e
    move-exception v0

    monitor-exit v9
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v0

    .line 783
    :catch_31
    move-exception v0

    goto :goto_a
.end method

.method private getMagnitude(Ljava/lang/String;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1051
    invoke-static {p1}, Landroid/os/SystemVibrator$MagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/SystemVibrator$MagnitudeType;

    move-result-object v0

    .line 1052
    .local v0, "magnitudeType":Landroid/os/SystemVibrator$MagnitudeType;
    sget-object v1, Lcom/android/server/VibratorService$5;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    invoke-virtual {v0}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 1065
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 1054
    :pswitch_11
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    goto :goto_10

    .line 1057
    :pswitch_14
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    goto :goto_10

    .line 1060
    :pswitch_17
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    goto :goto_10

    .line 1063
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->getMaxMagnitude()I

    move-result v1

    goto :goto_10

    .line 1052
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private isAll0([J)Z
    .registers 8
    .param p1, "pattern"    # [J

    .prologue
    .line 435
    array-length v0, p1

    .line 436
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 437
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 438
    const/4 v2, 0x0

    .line 441
    :goto_d
    return v2

    .line 436
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 441
    :cond_11
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private openDevice(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x5

    .line 1308
    :try_start_1
    new-instance v2, Lcom/immersion/android/ImmVibe;

    invoke-direct {v2}, Lcom/immersion/android/ImmVibe;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    .line 1309
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->initialize()V

    .line 1315
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    const/4 v3, 0x0

    const-string v4, "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

    invoke-virtual {v2, v3, v4}, Lcom/immersion/android/ImmVibe;->openDevice(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 1316
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/VibratorService;->IS_DUAL_MOTOR:I

    .line 1320
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1321
    .local v1, "magnitudeLevel":I
    if-le v1, v5, :cond_54

    .end local v1    # "magnitudeLevel":I
    :goto_29
    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 1323
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1324
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v5, :cond_59

    .end local v1    # "magnitudeLevel":I
    :goto_39
    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 1326
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1327
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v5, :cond_5e

    .end local v1    # "magnitudeLevel":I
    :goto_49
    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 1329
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v2, :cond_53

    .line 1330
    iget v2, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    iput v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1341
    :cond_53
    :goto_53
    return-void

    .line 1321
    .restart local v1    # "magnitudeLevel":I
    :cond_54
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v1, v2, v1

    goto :goto_29

    .line 1324
    :cond_59
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v1, v2, v1

    goto :goto_39

    .line 1327
    :cond_5e
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v1, v2, v1
    :try_end_62
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_62} :catch_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_81

    goto :goto_49

    .line 1336
    .end local v1    # "magnitudeLevel":I
    :catch_63
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1338
    .end local v0    # "e":Ljava/lang/Error;
    :catch_81
    move-exception v0

    .line 1339
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 656
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 657
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 658
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 659
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 660
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 670
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_1f
    return-object v1

    .line 666
    :cond_20
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_34

    .line 667
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 668
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_1f

    .line 670
    :cond_34
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private reportFinishVibrationLocked()V
    .registers 5

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_19

    .line 645
    :try_start_4
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(IILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_1a

    .line 649
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 651
    :cond_19
    return-void

    .line 647
    :catch_1a
    move-exception v0

    goto :goto_16
.end method

.method private setVibeStrength(I)V
    .registers 7
    .param p1, "strength"    # I

    .prologue
    .line 938
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1}, Lcom/immersion/android/ImmVibe;->setDevicePropertyInt32(III)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_12

    .line 944
    :goto_8
    return-void

    .line 939
    :catch_9
    move-exception v1

    .line 940
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 941
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_12
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private startNextVibrationLocked()V
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 602
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 608
    :goto_e
    return-void

    .line 606
    :cond_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 607
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_e
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 10
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/4 v1, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startOperation(IILjava/lang/String;)I

    move-result v7

    .line 614
    .local v7, "mode":I
    if-eqz v7, :cond_39

    .line 615
    const/4 v0, 0x2

    if-ne v7, v0, :cond_30

    .line 616
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Would be an error: vibrate from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_30
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_38

    .line 640
    .end local v7    # "mode":I
    :goto_37
    return-void

    .line 621
    :catch_38
    move-exception v0

    .line 623
    :cond_39
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_97

    .line 624
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v0, :cond_8b

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 628
    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-eqz v0, :cond_74

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v5

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;I)V

    .line 633
    :goto_68
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_37

    .line 629
    :cond_74
    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;I)V

    goto :goto_68

    .line 631
    :cond_8b
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/VibratorService;->doVibratorOn(JI)V

    goto :goto_68

    .line 637
    :cond_97
    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 638
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_37
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 674
    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_e

    .line 678
    :try_start_6
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 683
    :cond_e
    :goto_e
    return-void

    .line 679
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private updateInputDeviceVibrators()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 686
    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 687
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 689
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_70

    .line 690
    const/4 v8, 0x0

    :try_start_c
    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_6d

    .line 692
    :try_start_e
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_5e

    :goto_1d
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e .. :try_end_1f} :catch_88
    .catchall {:try_start_e .. :try_end_1f} :catchall_6d

    .line 698
    :goto_1f
    :try_start_1f
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_60

    .line 699
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_31

    .line 700
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 701
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 710
    :cond_31
    :goto_31
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 711
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_73

    .line 712
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 713
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    array-length v4, v2

    if-ge v1, v4, :cond_73

    .line 714
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 715
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 716
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 717
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_5e
    move v4, v5

    .line 692
    goto :goto_1d

    .line 704
    :cond_60
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_31

    .line 705
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 706
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_31

    .line 726
    :catchall_6d
    move-exception v4

    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_1f .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v4

    .line 729
    :catchall_70
    move-exception v4

    monitor-exit v6
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_70

    throw v4

    .line 722
    :cond_73
    :try_start_73
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_84

    .line 723
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    .line 726
    :goto_7e
    monitor-exit v7
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_6d

    .line 728
    :try_start_7f
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 729
    monitor-exit v6
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_70

    .line 730
    return-void

    .line 725
    :cond_84
    const/4 v4, 0x1

    :try_start_85
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_6d

    goto :goto_7e

    .line 695
    :catch_88
    move-exception v4

    goto :goto_1f
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 315
    :cond_6
    :goto_6
    return-void

    .line 310
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 313
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method private vibrate(ILjava/lang/String;I)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, "duration":I
    sparse-switch p3, :sswitch_data_22

    .line 299
    const/16 v6, 0x32

    .line 303
    :goto_6
    int-to-long v3, v6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V

    .line 304
    return-void

    .line 278
    :sswitch_f
    const/16 v6, 0x32

    .line 279
    goto :goto_6

    .line 281
    :sswitch_12
    const/16 v6, 0x64

    .line 282
    goto :goto_6

    .line 284
    :sswitch_15
    const/16 v6, 0x1f4

    .line 285
    goto :goto_6

    .line 290
    :sswitch_18
    const/16 v6, 0x5dc

    .line 291
    goto :goto_6

    .line 293
    :sswitch_1b
    const/16 v6, 0x32

    .line 294
    goto :goto_6

    .line 296
    :sswitch_1e
    const/16 v6, 0xb

    .line 297
    goto :goto_6

    .line 270
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_f
        0x1 -> :sswitch_f
        0x3 -> :sswitch_f
        0x9 -> :sswitch_f
        0xa -> :sswitch_12
        0xc -> :sswitch_15
        0xd -> :sswitch_18
        0xe -> :sswitch_1b
        0x10 -> :sswitch_18
        0x11 -> :sswitch_18
        0x12 -> :sswitch_18
        0x16 -> :sswitch_1e
        0x2710 -> :sswitch_f
        0x2711 -> :sswitch_f
    .end sparse-switch
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 556
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 563
    .local v0, "identity":J
    :try_start_d
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 564
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 565
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_1e

    .line 566
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 567
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 569
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    return-void

    .line 569
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 572
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMaxMagnitude()I
    .registers 5

    .prologue
    .line 1297
    const/16 v1, 0x2710

    .line 1299
    .local v1, "magnitude":I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 1303
    :goto_b
    return v1

    .line 1300
    :catch_c
    move-exception v0

    .line 1301
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Default magnitude = 10000"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public hasVibrator()Z
    .registers 4

    .prologue
    .line 262
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useVibetonz: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 735
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 740
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 745
    return-void
.end method

.method public resetMagnitude()V
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_5

    .line 236
    :goto_4
    return-void

    .line 234
    :cond_5
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    goto :goto_4
.end method

.method public setMagnitude(I)V
    .registers 3
    .param p1, "magnitude"    # I

    .prologue
    .line 221
    if-gez p1, :cond_a

    .line 222
    const/4 p1, 0x0

    .line 227
    :cond_3
    :goto_3
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 228
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 229
    return-void

    .line 223
    :cond_a
    const/16 v0, 0x2710

    if-le p1, v0, :cond_3

    .line 224
    const/16 p1, 0x2710

    goto :goto_3
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 241
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/VibratorService$1;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 250
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 257
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 258
    return-void
.end method

.method public vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 320
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 326
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1, p3, p4}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 350
    :cond_27
    :goto_27
    return-void

    .line 334
    :cond_28
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibrate - package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JILjava/lang/String;)V

    .line 339
    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 341
    .local v7, "ident":J
    :try_start_62
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_78

    .line 342
    :try_start_65
    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 343
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 344
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 345
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 346
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_75

    .line 348
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .line 346
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    :try_start_77
    throw v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 348
    :catchall_78
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public vibrate(ILjava/lang/String;JLandroid/os/IBinder;I)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I

    .prologue
    .line 353
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/VibratorService;->vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V

    .line 354
    return-void
.end method

.method public vibrateCall(ILjava/lang/String;I)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v0, :cond_a

    .line 1036
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(ILjava/lang/String;II)V

    .line 1040
    :goto_9
    return-void

    .line 1038
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;I)V

    goto :goto_9
.end method

.method public vibrateImmVibe(ILjava/lang/String;II)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "magnitude"    # I

    .prologue
    .line 947
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v3, :cond_8

    .line 948
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;I)V

    .line 987
    :cond_7
    :goto_7
    return-void

    .line 952
    :cond_8
    const/4 v2, -0x4

    .line 955
    .local v2, "ret":I
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vibrateImmVibe - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", magnitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-gez p4, :cond_39

    iget p4, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 959
    :cond_39
    const/16 v3, 0x2710

    if-le p4, v3, :cond_3f

    const/16 p4, 0x2710

    .line 961
    :cond_3f
    const/16 v3, 0x9

    if-lt p3, v3, :cond_7

    const/16 v3, 0x16

    if-gt p3, v3, :cond_7

    .line 964
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_4c

    .line 965
    const/4 v2, -0x2

    .line 968
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 970
    if-nez p4, :cond_52

    .line 971
    const/4 v2, 0x0

    .line 974
    :cond_52
    const/4 v3, -0x4

    if-ne v2, v3, :cond_7

    .line 977
    :try_start_55
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 978
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 979
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v5, Lcom/immersion/android/ImmVibeConstants;->ivt:[[[B

    iget v6, p0, Lcom/android/server/VibratorService;->IS_DUAL_MOTOR:I

    aget-object v5, v5, v6

    add-int/lit8 v6, p3, -0x9

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_71} :catch_73
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_71} :catch_7c

    move-result v2

    goto :goto_7

    .line 980
    :catch_73
    move-exception v1

    .line 981
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at vibrateImmVibe()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 982
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_7c
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at vibrateImmVibe()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public vibrateImmVibeMagnitudeType(ILjava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1204
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v4, :cond_8

    .line 1205
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;I)V

    .line 1248
    :cond_7
    :goto_7
    return-void

    .line 1209
    :cond_8
    const/4 v3, -0x4

    .line 1210
    .local v3, "ret":I
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v1

    .line 1213
    .local v1, "magnitude":I
    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibrateImmVibeMagnitudeType - package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", magnitudeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    if-gez v1, :cond_71

    .line 1217
    iget v1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1222
    :cond_3d
    :goto_3d
    const/16 v4, 0x9

    if-lt p3, v4, :cond_7

    const/16 v4, 0x16

    if-gt p3, v4, :cond_7

    .line 1225
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v4, :cond_4a

    .line 1226
    const/4 v3, -0x2

    .line 1229
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1231
    if-nez v1, :cond_50

    .line 1232
    const/4 v3, 0x0

    .line 1235
    :cond_50
    const/4 v4, -0x4

    if-ne v3, v4, :cond_7

    .line 1238
    :try_start_53
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 1239
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1240
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v6, Lcom/immersion/android/ImmVibeConstants;->ivt:[[[B

    iget v7, p0, Lcom/android/server/VibratorService;->IS_DUAL_MOTOR:I

    aget-object v6, v6, v7

    add-int/lit8 v7, p3, -0x9

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_6f} :catch_78
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6f} :catch_81

    move-result v3

    goto :goto_7

    .line 1218
    :cond_71
    const/16 v4, 0x2710

    if-le v1, v4, :cond_3d

    .line 1219
    const/16 v1, 0x2710

    goto :goto_3d

    .line 1241
    :catch_78
    move-exception v2

    .line 1242
    .local v2, "re":Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at vibrateImmVibeMagnitudeType()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1243
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_81
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "VibratorService"

    const-string v5, "Exception occured at vibrateImmVibeMagnitudeType()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public vibrateImmVibePattern(ILjava/lang/String;[BI)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [B
    .param p4, "magnitude"    # I

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v0, :cond_e

    .line 991
    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V

    .line 1032
    :cond_d
    :goto_d
    return-void

    .line 995
    :cond_e
    const/4 v8, -0x4

    .line 998
    .local v8, "ret":I
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrateImmVibePattern - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", magnitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    if-gez p4, :cond_59

    .line 1002
    iget p4, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1007
    :cond_35
    :goto_35
    if-eqz p3, :cond_d

    .line 1009
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v0, :cond_3c

    .line 1010
    const/4 v8, -0x2

    .line 1013
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1015
    if-nez p4, :cond_42

    .line 1016
    const/4 v8, 0x0

    .line 1019
    :cond_42
    const/4 v0, -0x4

    if-ne v8, v0, :cond_d

    .line 1022
    :try_start_45
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v1, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v1, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_57} :catch_60
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_57} :catch_69

    move-result v8

    goto :goto_d

    .line 1003
    :cond_59
    const/16 v0, 0x2710

    if-le p4, v0, :cond_35

    .line 1004
    const/16 p4, 0x2710

    goto :goto_35

    .line 1025
    :catch_60
    move-exception v7

    .line 1026
    .local v7, "re":Ljava/lang/RuntimeException;
    const-string v0, "VibratorService"

    const-string v1, "RuntimeException occured at vibrateImmVibePattern()."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1027
    .end local v7    # "re":Ljava/lang/RuntimeException;
    :catch_69
    move-exception v6

    .line 1028
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "VibratorService"

    const-string v1, "Exception occured at vibrateImmVibePattern()."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public vibrateImmVibePatternMagnitudeType(ILjava/lang/String;[BLjava/lang/String;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [B
    .param p4, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v0, :cond_e

    .line 1252
    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V

    .line 1294
    :cond_d
    :goto_d
    return-void

    .line 1256
    :cond_e
    const/4 v9, -0x4

    .line 1257
    .local v9, "ret":I
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v7

    .line 1260
    .local v7, "magnitude":I
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrateImmVibePatternMagnitudeType - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", magnitudeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    if-gez v7, :cond_5d

    .line 1264
    iget v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1269
    :cond_39
    :goto_39
    if-eqz p3, :cond_d

    .line 1271
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v0, :cond_40

    .line 1272
    const/4 v9, -0x2

    .line 1275
    :cond_40
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1277
    if-nez v7, :cond_46

    .line 1278
    const/4 v9, 0x0

    .line 1281
    :cond_46
    const/4 v0, -0x4

    if-ne v9, v0, :cond_d

    .line 1284
    :try_start_49
    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v1, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v1, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_5b} :catch_64
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5b} :catch_6d

    move-result v9

    goto :goto_d

    .line 1265
    :cond_5d
    const/16 v0, 0x2710

    if-le v7, v0, :cond_39

    .line 1266
    const/16 v7, 0x2710

    goto :goto_39

    .line 1287
    :catch_64
    move-exception v8

    .line 1288
    .local v8, "re":Ljava/lang/RuntimeException;
    const-string v0, "VibratorService"

    const-string v1, "RuntimeException occured at vibrateImmVibePatternMagnitudeType()."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1289
    .end local v8    # "re":Ljava/lang/RuntimeException;
    :catch_6d
    move-exception v6

    .line 1290
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "VibratorService"

    const-string v1, "Exception occured at vibrateImmVibePatternMagnitudeType()."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V
    .registers 24
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I

    .prologue
    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    .line 359
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 365
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 432
    :cond_2f
    :goto_2f
    return-void

    .line 372
    :cond_30
    if-gez p6, :cond_c6

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move/from16 p6, v0

    .line 379
    :cond_38
    :goto_38
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vibrateMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", magnitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v3, :cond_e8

    .line 383
    const/16 v16, -0x4

    .line 385
    .local v16, "ret":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_86

    .line 386
    const/16 v16, -0x2

    .line 389
    :cond_86
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 391
    if-nez p6, :cond_8d

    .line 392
    const/16 v16, 0x0

    .line 395
    :cond_8d
    const/4 v3, -0x4

    move/from16 v0, v16

    if-ne v0, v3, :cond_2f

    .line 398
    const/16 v3, 0x2710

    :try_start_94
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 400
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p3, v3

    if-lez v3, :cond_d0

    const v11, 0x7fffffff

    .line 401
    .local v11, "duration":I
    :goto_a3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    move-wide/from16 v0, p3

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v5, p6

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_c3
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_c3} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c3} :catch_de

    move-result v16

    goto/16 :goto_2f

    .line 374
    .end local v11    # "duration":I
    .end local v16    # "ret":I
    :cond_c6
    const/16 v3, 0x2710

    move/from16 v0, p6

    if-le v0, v3, :cond_38

    .line 375
    const/16 p6, 0x2710

    goto/16 :goto_38

    .line 400
    .restart local v16    # "ret":I
    :cond_d0
    move-wide/from16 v0, p3

    long-to-int v11, v0

    goto :goto_a3

    .line 411
    :catch_d4
    move-exception v15

    .line 412
    .local v15, "re":Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at vibrateMagnitude()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 413
    .end local v15    # "re":Ljava/lang/RuntimeException;
    :catch_de
    move-exception v12

    .line 414
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at vibrateMagnitude()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 418
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "ret":I
    :cond_e8
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JILjava/lang/String;)V

    .line 420
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 422
    .local v13, "ident":J
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_100
    .catchall {:try_start_fb .. :try_end_100} :catchall_11c

    .line 423
    :try_start_100
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 425
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 426
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 427
    monitor-exit v4
    :try_end_114
    .catchall {:try_start_100 .. :try_end_114} :catchall_119

    .line 429
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2f

    .line 427
    :catchall_119
    move-exception v3

    :try_start_11a
    monitor-exit v4
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    :try_start_11b
    throw v3
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11c

    .line 429
    :catchall_11c
    move-exception v3

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public vibrateMagnitudeType(ILjava/lang/String;JLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 26
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    .line 1071
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1073
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 1077
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1145
    :cond_2f
    :goto_2f
    return-void

    .line 1084
    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v5

    .line 1085
    .local v5, "magnitude":I
    if-gez v5, :cond_ca

    .line 1086
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1092
    :cond_3e
    :goto_3e
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrateMagnitudeType - package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", magnitudeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v2, :cond_ea

    .line 1096
    const/16 v18, -0x4

    .line 1098
    .local v18, "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v2, :cond_8c

    .line 1099
    const/16 v18, -0x2

    .line 1102
    :cond_8c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1104
    if-nez v5, :cond_93

    .line 1105
    const/16 v18, 0x0

    .line 1108
    :cond_93
    const/4 v2, -0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_2f

    .line 1111
    const/16 v2, 0x2710

    :try_start_9a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 1113
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p3, v2

    if-lez v2, :cond_d2

    const v13, 0x7fffffff

    .line 1114
    .local v13, "duration":I
    :goto_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    move-wide/from16 v0, p3

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_c7
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_c7} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c7} :catch_e0

    move-result v18

    goto/16 :goto_2f

    .line 1087
    .end local v13    # "duration":I
    .end local v18    # "ret":I
    :cond_ca
    const/16 v2, 0x2710

    if-le v5, v2, :cond_3e

    .line 1088
    const/16 v5, 0x2710

    goto/16 :goto_3e

    .line 1113
    .restart local v18    # "ret":I
    :cond_d2
    move-wide/from16 v0, p3

    long-to-int v13, v0

    goto :goto_a9

    .line 1124
    :catch_d6
    move-exception v17

    .line 1125
    .local v17, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at vibrateMagnitudeType()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 1126
    .end local v17    # "re":Ljava/lang/RuntimeException;
    :catch_e0
    move-exception v14

    .line 1127
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at vibrateMagnitudeType()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 1131
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v18    # "ret":I
    :cond_ea
    new-instance v6, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-wide/from16 v9, p3

    move/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v6 .. v12}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JILjava/lang/String;)V

    .line 1133
    .local v6, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1135
    .local v15, "ident":J
    :try_start_fd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_102
    .catchall {:try_start_fd .. :try_end_102} :catchall_11e

    .line 1136
    :try_start_102
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1137
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1138
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1139
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1140
    monitor-exit v3
    :try_end_116
    .catchall {:try_start_102 .. :try_end_116} :catchall_11b

    .line 1142
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2f

    .line 1140
    :catchall_11b
    move-exception v2

    :try_start_11c
    monitor-exit v3
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    :try_start_11d
    throw v2
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11e

    .line 1142
    :catchall_11e
    move-exception v2

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateNotification(ILjava/lang/String;I)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v0, :cond_a

    .line 1044
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(ILjava/lang/String;II)V

    .line 1048
    :goto_9
    return-void

    .line 1046
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;I)V

    goto :goto_9
.end method

.method public vibratePattern(ILjava/lang/String;[JILandroid/os/IBinder;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 448
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 464
    .local v8, "identity":J
    if-eqz p3, :cond_29

    :try_start_1b
    array-length v1, p3

    if-eqz v1, :cond_29

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_29

    array-length v1, p3
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_80

    if-ge p4, v1, :cond_29

    if-nez p5, :cond_2d

    .line 496
    :cond_29
    :goto_29
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    return-void

    .line 471
    :cond_2d
    :try_start_2d
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibratePattern - package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", repeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move v4, p4

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIILjava/lang/String;)V
    :try_end_64
    .catchall {:try_start_2d .. :try_end_64} :catchall_80

    .line 476
    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_65
    invoke-interface {p5, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_85
    .catchall {:try_start_65 .. :try_end_68} :catchall_80

    .line 481
    :try_start_68
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_80

    .line 482
    :try_start_6b
    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 483
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 484
    if-ltz p4, :cond_87

    .line 485
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 486
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 493
    :goto_7b
    monitor-exit v2

    goto :goto_29

    :catchall_7d
    move-exception v1

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_6b .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 496
    .end local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_80
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 477
    .restart local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catch_85
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_29

    .line 490
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_87
    :try_start_87
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 491
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_7d

    goto :goto_7b
.end method

.method public vibratePatternByMagnitude(ILjava/lang/String;[JILandroid/os/IBinder;I)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I

    .prologue
    .line 501
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 503
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 510
    .local v10, "identity":J
    if-eqz p3, :cond_2b

    :try_start_1b
    array-length v2, p3

    if-eqz v2, :cond_2b

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v2

    if-nez v2, :cond_2b

    array-length v2, p3

    move/from16 v0, p4

    if-ge v0, v2, :cond_2b

    if-nez p5, :cond_36

    .line 513
    :cond_2b
    const-string v2, "VibratorService"

    const-string v3, "vibratePatternByMagnitude() request is failed by  illegal argument."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_48

    .line 551
    :goto_32
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    return-void

    .line 517
    :cond_36
    if-nez p6, :cond_4d

    .line 518
    :try_start_38
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_48

    .line 519
    :try_start_3b
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 520
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 521
    monitor-exit v3

    goto :goto_32

    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_45

    :try_start_47
    throw v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 551
    :catchall_48
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 526
    :cond_4d
    :try_start_4d
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibratePatternByMagnitude - package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", repeat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", magnitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v1, Lcom/android/server/VibratorService$Vibration;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v4, p3

    move/from16 v5, p4

    move v6, p1

    move-object v7, p2

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIILjava/lang/String;I)V
    :try_end_98
    .catchall {:try_start_4d .. :try_end_98} :catchall_48

    .line 531
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v2, 0x0

    :try_start_99
    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9e} :catch_b9
    .catchall {:try_start_99 .. :try_end_9e} :catchall_48

    .line 536
    :try_start_9e
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_48

    .line 537
    :try_start_a1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 538
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 539
    if-ltz p4, :cond_bc

    .line 540
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 541
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 548
    :goto_b3
    monitor-exit v3

    goto/16 :goto_32

    :catchall_b6
    move-exception v2

    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_a1 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_48

    .line 532
    :catch_b9
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto/16 :goto_32

    .line 545
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_bc
    :try_start_bc
    iput-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 546
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_b6

    goto :goto_b3
.end method

.method public vibratePatternByMagnitudeType(ILjava/lang/String;[JILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 1150
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1152
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 1154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1157
    .local v10, "identity":J
    if-eqz p3, :cond_2b

    :try_start_1b
    array-length v2, p3

    if-eqz v2, :cond_2b

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v2

    if-nez v2, :cond_2b

    array-length v2, p3

    move/from16 v0, p4

    if-ge v0, v2, :cond_2b

    if-nez p5, :cond_36

    .line 1160
    :cond_2b
    const-string v2, "VibratorService"

    const-string v3, "vibratePatternByMagnitude() request is failed by  illegal argument."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_4e

    .line 1199
    :goto_32
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1201
    return-void

    .line 1164
    :cond_36
    :try_start_36
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v8

    .line 1165
    .local v8, "magnitude":I
    if-nez v8, :cond_53

    .line 1166
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_4e

    .line 1167
    :try_start_41
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1168
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1169
    monitor-exit v3

    goto :goto_32

    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 1199
    .end local v8    # "magnitude":I
    :catchall_4e
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1174
    .restart local v8    # "magnitude":I
    :cond_53
    :try_start_53
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibratePatternByMagnitudeType - package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", repeat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", magnitudeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    new-instance v1, Lcom/android/server/VibratorService$Vibration;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v4, p3

    move/from16 v5, p4

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIILjava/lang/String;I)V
    :try_end_9c
    .catchall {:try_start_53 .. :try_end_9c} :catchall_4e

    .line 1179
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v2, 0x0

    :try_start_9d
    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_bd
    .catchall {:try_start_9d .. :try_end_a2} :catchall_4e

    .line 1184
    :try_start_a2
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_4e

    .line 1185
    :try_start_a5
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1186
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1187
    if-ltz p4, :cond_c0

    .line 1188
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 1196
    :goto_b7
    monitor-exit v3

    goto/16 :goto_32

    :catchall_ba
    move-exception v2

    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_a5 .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_4e

    .line 1180
    :catch_bd
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto/16 :goto_32

    .line 1193
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_c0
    :try_start_c0
    iput-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1194
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_ba

    goto :goto_b7
.end method
