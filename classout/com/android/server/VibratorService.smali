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
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 191
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 71
    iput-boolean v6, p0, Lcom/android/server/VibratorService;->VIBE_DEBUG:Z

    .line 72
    iput-boolean v7, p0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    .line 74
    iput v6, p0, Lcom/android/server/VibratorService;->TYPE_FEEDBACK_MAGNITUDE:I

    .line 75
    iput v7, p0, Lcom/android/server/VibratorService;->TYPE_RECVCALL_MAGNITUDE:I

    .line 76
    iput v8, p0, Lcom/android/server/VibratorService;->TYPE_NOTIFICATION_MAGNITUDE:I

    .line 78
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v4, v3, v6

    const-string v4, "VIB_RECVCALL_MAGNITUDE"

    aput-object v4, v3, v7

    const-string v4, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v4, v3, v8

    iput-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 83
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_10e

    iput-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    .line 84
    iput-boolean v7, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    .line 85
    iput-boolean v6, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    .line 86
    iput v6, p0, Lcom/android/server/VibratorService;->IS_DUAL_MOTOR:I

    .line 89
    iput v6, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 90
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/android/server/VibratorService;->mImmVibeAlertOnCallMagnitude:I

    .line 91
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 92
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 93
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 94
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 106
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 107
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 123
    iput v9, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 395
    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 741
    new-instance v3, Lcom/android/server/VibratorService$4;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1068
    iput v9, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 194
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v3, :cond_7d

    .line 195
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 198
    :cond_7d
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 199
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 201
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v3, "VibratorService"

    invoke-virtual {v1, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    iget-object v3, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 204
    const-string v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 205
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 208
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 216
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x1070037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    .line 218
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 219
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 220
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 221
    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 223
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v3, :cond_10d

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 225
    new-instance v3, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v3, p0, v6}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 226
    new-instance v3, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 227
    new-instance v3, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v3, p0, v8}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 229
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->openDevice(Landroid/content/Context;)V

    .line 231
    :cond_10d
    return-void

    .line 83
    :array_10e
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
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
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
    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;JI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->doVibratorOn(JI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method private closeDevice(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1154
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->closeDevice(I)V

    .line 1155
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->terminate()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_16

    .line 1161
    :goto_c
    return-void

    .line 1156
    :catch_d
    move-exception v1

    .line 1157
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1158
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_16
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private doCancelVibrateLocked()V
    .registers 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_15

    .line 407
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 408
    :try_start_7
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 409
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 410
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_23

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 413
    :cond_15
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 414
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 415
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 416
    return-void

    .line 410
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
    .line 579
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 6

    .prologue
    .line 620
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 621
    :try_start_3
    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4d

    if-ltz v2, :cond_11

    .line 623
    :try_start_7
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v4, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_52
    .catchall {:try_start_7 .. :try_end_e} :catchall_4d

    .line 626
    :goto_e
    const/4 v2, -0x1

    :try_start_f
    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 628
    :cond_11
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 629
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_2a

    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_40

    .line 631
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 634
    .end local v0    # "i":I
    :cond_2a
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v2, :cond_42

    .line 635
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_4d

    if-eqz v2, :cond_40

    .line 637
    :try_start_32
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 638
    const-string v2, "VibratorService"

    const-string v4, "ImmVibe vibratorOff()"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_40} :catch_50
    .catchall {:try_start_32 .. :try_end_40} :catchall_4d

    .line 647
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit v3

    .line 648
    return-void

    .line 643
    :cond_42
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 644
    const-string v2, "VibratorService"

    const-string v4, "JNI vibratorOff()"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 647
    .end local v1    # "vibratorCount":I
    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw v2

    .line 639
    .restart local v1    # "vibratorCount":I
    :catch_50
    move-exception v2

    goto :goto_40

    .line 624
    .end local v1    # "vibratorCount":I
    :catch_52
    move-exception v2

    goto :goto_e
.end method

.method private doVibratorOn(JI)V
    .registers 10
    .param p1, "millis"    # J
    .param p3, "uid"    # I

    .prologue
    .line 583
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 585
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 586
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_43
    .catchall {:try_start_3 .. :try_end_a} :catchall_40

    .line 589
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 590
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_23

    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v1, :cond_3e

    .line 592
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 595
    .end local v0    # "i":I
    :cond_23
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 596
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

    .line 598
    :cond_3e
    monitor-exit v3

    .line 599
    return-void

    .line 598
    .end local v1    # "vibratorCount":I
    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_40

    throw v2

    .line 587
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
    .line 602
    iget-object v9, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v9

    .line 604
    :try_start_3
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 605
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_31
    .catchall {:try_start_3 .. :try_end_a} :catchall_2e

    .line 608
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 609
    .local v8, "vibratorCount":I
    if-eqz v8, :cond_23

    .line 610
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    if-ge v7, v8, :cond_2c

    .line 611
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 610
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 614
    .end local v7    # "i":I
    :cond_23
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-wide v3, p1

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V

    .line 616
    :cond_2c
    monitor-exit v9

    .line 617
    return-void

    .line 616
    .end local v8    # "vibratorCount":I
    :catchall_2e
    move-exception v0

    monitor-exit v9
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v0

    .line 606
    :catch_31
    move-exception v0

    goto :goto_a
.end method

.method private getMagnitude(Ljava/lang/String;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1098
    invoke-static {p1}, Landroid/os/SystemVibrator$MagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/SystemVibrator$MagnitudeType;

    move-result-object v0

    .line 1099
    .local v0, "magnitudeType":Landroid/os/SystemVibrator$MagnitudeType;
    sget-object v1, Lcom/android/server/VibratorService$5;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    invoke-virtual {v0}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 1109
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 1101
    :pswitch_11
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    goto :goto_10

    .line 1103
    :pswitch_14
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    goto :goto_10

    .line 1105
    :pswitch_17
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    goto :goto_10

    .line 1107
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->getMaxMagnitude()I

    move-result v1

    goto :goto_10

    .line 1099
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
    .line 309
    array-length v0, p1

    .line 310
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 311
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 312
    const/4 v2, 0x0

    .line 315
    :goto_d
    return v2

    .line 310
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 315
    :cond_11
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private openDevice(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x5

    .line 1114
    :try_start_1
    new-instance v2, Lcom/immersion/android/ImmVibe;

    invoke-direct {v2}, Lcom/immersion/android/ImmVibe;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    .line 1115
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->initialize()V

    .line 1121
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    const/4 v3, 0x0

    const-string v4, "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

    invoke-virtual {v2, v3, v4}, Lcom/immersion/android/ImmVibe;->openDevice(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 1122
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/VibratorService;->IS_DUAL_MOTOR:I

    .line 1126
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1127
    .local v1, "magnitudeLevel":I
    if-le v1, v5, :cond_54

    .end local v1    # "magnitudeLevel":I
    :goto_29
    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 1129
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1130
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v5, :cond_59

    .end local v1    # "magnitudeLevel":I
    :goto_39
    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 1132
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1133
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v5, :cond_5e

    .end local v1    # "magnitudeLevel":I
    :goto_49
    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 1135
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v2, :cond_53

    .line 1136
    iget v2, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    iput v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1147
    :cond_53
    :goto_53
    return-void

    .line 1127
    .restart local v1    # "magnitudeLevel":I
    :cond_54
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v1, v2, v1

    goto :goto_29

    .line 1130
    :cond_59
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v1, v2, v1

    goto :goto_39

    .line 1133
    :cond_5e
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v1, v2, v1
    :try_end_62
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_62} :catch_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_81

    goto :goto_49

    .line 1142
    .end local v1    # "magnitudeLevel":I
    :catch_63
    move-exception v0

    .line 1143
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

    .line 1144
    .end local v0    # "e":Ljava/lang/Error;
    :catch_81
    move-exception v0

    .line 1145
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
    .line 478
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 479
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 480
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 481
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 482
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 483
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 493
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_1f
    return-object v1

    .line 489
    :cond_20
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_34

    .line 490
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 491
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_1f

    .line 493
    :cond_34
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private reportFinishVibrationLocked()V
    .registers 6

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1f

    .line 467
    :try_start_4
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_20

    .line 472
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 474
    :cond_1f
    return-void

    .line 470
    :catch_20
    move-exception v0

    goto :goto_1c
.end method

.method private setVibeStrength(I)V
    .registers 7
    .param p1, "strength"    # I

    .prologue
    .line 763
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1}, Lcom/immersion/android/ImmVibe;->setDevicePropertyInt32(III)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_12

    .line 769
    :goto_8
    return-void

    .line 764
    :catch_9
    move-exception v1

    .line 765
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 766
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_12
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private startNextVibrationLocked()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 421
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 427
    :goto_e
    return-void

    .line 425
    :cond_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 426
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_e
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 10
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v7

    .line 434
    .local v7, "mode":I
    if-eqz v7, :cond_3f

    .line 435
    const/4 v0, 0x2

    if-ne v7, v0, :cond_36

    .line 436
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

    .line 438
    :cond_36
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 462
    .end local v7    # "mode":I
    :goto_3d
    return-void

    .line 441
    :catch_3e
    move-exception v0

    .line 443
    :cond_3f
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9d

    .line 444
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v0, :cond_91

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 447
    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 448
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

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V

    .line 455
    :goto_6e
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3d

    .line 450
    :cond_7a
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

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V

    goto :goto_6e

    .line 453
    :cond_91
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/VibratorService;->doVibratorOn(JI)V

    goto :goto_6e

    .line 459
    :cond_9d
    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 460
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_3d
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 497
    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_e

    .line 501
    :try_start_6
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 506
    :cond_e
    :goto_e
    return-void

    .line 502
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private updateInputDeviceVibrators()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 509
    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 510
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 512
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_71

    .line 513
    const/4 v8, 0x0

    :try_start_c
    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_6e

    .line 515
    :try_start_e
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_5f

    :goto_1e
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_20
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e .. :try_end_20} :catch_89
    .catchall {:try_start_e .. :try_end_20} :catchall_6e

    .line 521
    :goto_20
    :try_start_20
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_61

    .line 522
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_32

    .line 523
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 524
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 533
    :cond_32
    :goto_32
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 534
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_74

    .line 535
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 536
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    array-length v4, v2

    if-ge v1, v4, :cond_74

    .line 537
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 538
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 539
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 540
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_5f
    move v4, v5

    .line 515
    goto :goto_1e

    .line 527
    :cond_61
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_32

    .line 528
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 529
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_32

    .line 549
    :catchall_6e
    move-exception v4

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_20 .. :try_end_70} :catchall_6e

    :try_start_70
    throw v4

    .line 552
    :catchall_71
    move-exception v4

    monitor-exit v6
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_71

    throw v4

    .line 544
    :cond_74
    :try_start_74
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_85

    .line 545
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    .line 549
    :goto_7f
    monitor-exit v7
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_6e

    .line 551
    :try_start_80
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 552
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_71

    .line 553
    return-void

    .line 547
    :cond_85
    const/4 v4, 0x1

    :try_start_86
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_6e

    goto :goto_7f

    .line 518
    :catch_89
    move-exception v4

    goto :goto_20
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 271
    :cond_6
    :goto_6
    return-void

    .line 266
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 269
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
    .line 772
    const/4 v6, 0x0

    .line 773
    .local v6, "duration":I
    sparse-switch p3, :sswitch_data_22

    .line 802
    const/16 v6, 0x32

    .line 806
    :goto_6
    int-to-long v3, v6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V

    .line 807
    return-void

    .line 781
    :sswitch_f
    const/16 v6, 0x32

    .line 782
    goto :goto_6

    .line 784
    :sswitch_12
    const/16 v6, 0x64

    .line 785
    goto :goto_6

    .line 787
    :sswitch_15
    const/16 v6, 0x1f4

    .line 788
    goto :goto_6

    .line 793
    :sswitch_18
    const/16 v6, 0x5dc

    .line 794
    goto :goto_6

    .line 796
    :sswitch_1b
    const/16 v6, 0x32

    .line 797
    goto :goto_6

    .line 799
    :sswitch_1e
    const/16 v6, 0xb

    .line 800
    goto :goto_6

    .line 773
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
    .line 375
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 382
    .local v0, "identity":J
    :try_start_d
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 383
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 384
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_1e

    .line 385
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 386
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 388
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 393
    return-void

    .line 388
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

    .line 391
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMaxMagnitude()I
    .registers 5

    .prologue
    .line 1088
    const/16 v1, 0x2710

    .line 1090
    .local v1, "magnitude":I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 1094
    :goto_b
    return v1

    .line 1091
    :catch_c
    move-exception v0

    .line 1092
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Default magnitude = 10000"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public hasVibrator()Z
    .registers 4

    .prologue
    .line 257
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasVibrator - useVibetonz: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 558
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 563
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 568
    return-void
.end method

.method public resetMagnitude()V
    .registers 2

    .prologue
    .line 1080
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_5

    .line 1085
    :goto_4
    return-void

    .line 1083
    :cond_5
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 1084
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    goto :goto_4
.end method

.method public setMagnitude(I)V
    .registers 3
    .param p1, "magnitude"    # I

    .prologue
    .line 1070
    if-gez p1, :cond_a

    .line 1071
    const/4 p1, 0x0

    .line 1075
    :cond_3
    :goto_3
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 1076
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 1077
    return-void

    .line 1072
    :cond_a
    const/16 v0, 0x2710

    if-le p1, v0, :cond_3

    .line 1073
    const/16 p1, 0x2710

    goto :goto_3
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 236
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/VibratorService$1;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 245
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 252
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 253
    return-void
.end method

.method public vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 276
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 282
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1, p3, p4}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 306
    :cond_27
    :goto_27
    return-void

    .line 290
    :cond_28
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate - package: "

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

    .line 293
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JILjava/lang/String;)V

    .line 295
    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 297
    .local v7, "ident":J
    :try_start_63
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_79

    .line 298
    :try_start_66
    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 299
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 300
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 301
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 302
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_76

    .line 304
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .line 302
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    throw v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    .line 304
    :catchall_79
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public vibrateCall(ILjava/lang/String;I)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1056
    const-string v0, "VibratorService"

    const-string v1, "Called vibrateCall()!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(ILjava/lang/String;II)V

    .line 1059
    return-void
.end method

.method public vibrateImmVibe(ILjava/lang/String;II)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "magnitude"    # I

    .prologue
    .line 949
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v3, :cond_8

    .line 950
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;I)V

    .line 991
    :cond_7
    :goto_7
    return-void

    .line 954
    :cond_8
    const/16 v3, 0x9

    if-lt p3, v3, :cond_7

    const/16 v3, 0x16

    if-gt p3, v3, :cond_7

    .line 958
    if-gez p4, :cond_6e

    .line 959
    iget p4, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 964
    :cond_14
    :goto_14
    const/4 v2, -0x4

    .line 966
    .local v2, "rt":I
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_1a

    .line 967
    const/4 v2, -0x2

    .line 970
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 972
    if-nez p4, :cond_20

    .line 973
    const/4 v2, 0x0

    .line 976
    :cond_20
    const/4 v3, -0x4

    if-ne v2, v3, :cond_7

    .line 978
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrateImmVibe - package: "

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

    .line 982
    :try_start_50
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 983
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 984
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v5, Lcom/immersion/android/ImmVibeConstants;->ivt:[[[B

    iget v6, p0, Lcom/android/server/VibratorService;->IS_DUAL_MOTOR:I

    aget-object v5, v5, v6

    add-int/lit8 v6, p3, -0x9

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_6c} :catch_75
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6c} :catch_7e

    move-result v2

    goto :goto_7

    .line 960
    .end local v2    # "rt":I
    :cond_6e
    const/16 v3, 0x2710

    if-le p4, v3, :cond_14

    .line 961
    const/16 p4, 0x2710

    goto :goto_14

    .line 985
    .restart local v2    # "rt":I
    :catch_75
    move-exception v1

    .line 986
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at vibrateImmVibe()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 987
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_7e
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at vibrateImmVibe()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public vibrateImmVibeMagnitudeType(ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 995
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrateImmVibeMagnitudeType - magnitudeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v0

    .line 998
    .local v0, "magnitude":I
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(ILjava/lang/String;II)V

    .line 999
    return-void
.end method

.method public vibrateImmVibePattern(ILjava/lang/String;[BI)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [B
    .param p4, "magnitude"    # I

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v0, :cond_e

    .line 1003
    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V

    .line 1044
    :cond_d
    :goto_d
    return-void

    .line 1007
    :cond_e
    if-eqz p3, :cond_d

    .line 1011
    if-gez p4, :cond_5a

    .line 1012
    iget p4, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1017
    :cond_14
    :goto_14
    const/4 v8, -0x4

    .line 1019
    .local v8, "rt":I
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v0, :cond_1a

    .line 1020
    const/4 v8, -0x2

    .line 1023
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1025
    if-nez p4, :cond_20

    .line 1026
    const/4 v8, 0x0

    .line 1029
    :cond_20
    const/4 v0, -0x4

    if-ne v8, v0, :cond_d

    .line 1031
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateImmVibePattern - package: "

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

    .line 1035
    :try_start_46
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v1, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v1, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_58} :catch_61
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_58} :catch_6a

    move-result v8

    goto :goto_d

    .line 1013
    .end local v8    # "rt":I
    :cond_5a
    const/16 v0, 0x2710

    if-le p4, v0, :cond_14

    .line 1014
    const/16 p4, 0x2710

    goto :goto_14

    .line 1038
    .restart local v8    # "rt":I
    :catch_61
    move-exception v7

    .line 1039
    .local v7, "re":Ljava/lang/RuntimeException;
    const-string v0, "VibratorService"

    const-string v1, "RuntimeException occured at vibrateImmVibePattern()."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1040
    .end local v7    # "re":Ljava/lang/RuntimeException;
    :catch_6a
    move-exception v6

    .line 1041
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "VibratorService"

    const-string v1, "Exception occured at vibrateImmVibePattern()."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public vibrateImmVibePatternMagnitudeType(ILjava/lang/String;[BLjava/lang/String;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [B
    .param p4, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1048
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrateImmVibePatternMagnitudeType - magnitudeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v0

    .line 1051
    .local v0, "magnitude":I
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateImmVibePattern(ILjava/lang/String;[BI)V

    .line 1052
    return-void
.end method

.method public vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I

    .prologue
    .line 810
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v2, :cond_8

    .line 811
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V

    .line 873
    :cond_7
    :goto_7
    return-void

    .line 815
    :cond_8
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 817
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 819
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 823
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-nez v2, :cond_7

    .line 830
    :cond_31
    if-gez p6, :cond_af

    .line 831
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move/from16 p6, v0

    .line 836
    :cond_37
    :goto_37
    const/4 v14, -0x4

    .line 838
    .local v14, "rt":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v2, :cond_3d

    .line 839
    const/4 v14, -0x2

    .line 842
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 844
    if-nez p6, :cond_43

    .line 845
    const/4 v14, 0x0

    .line 848
    :cond_43
    const/4 v2, -0x4

    if-ne v14, v2, :cond_7

    .line 850
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrateMagnitude - package: "

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

    const-string v4, ", magnitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/16 v2, 0x2710

    :try_start_87
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 856
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p3, v2

    if-lez v2, :cond_b8

    const v11, 0x7fffffff

    .line 857
    .local v11, "duration":I
    :goto_94
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 858
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    move-wide/from16 v0, p3

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v5, p6

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_ac
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_ac} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ac} :catch_c6

    move-result v14

    goto/16 :goto_7

    .line 832
    .end local v11    # "duration":I
    .end local v14    # "rt":I
    :cond_af
    const/16 v2, 0x2710

    move/from16 v0, p6

    if-le v0, v2, :cond_37

    .line 833
    const/16 p6, 0x2710

    goto :goto_37

    .line 856
    .restart local v14    # "rt":I
    :cond_b8
    move-wide/from16 v0, p3

    long-to-int v11, v0

    goto :goto_94

    .line 867
    :catch_bc
    move-exception v13

    .line 868
    .local v13, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at vibrateMagnitude()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 869
    .end local v13    # "re":Ljava/lang/RuntimeException;
    :catch_c6
    move-exception v12

    .line 870
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at vibrateMagnitude()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public vibrateMagnitudeType(ILjava/lang/String;JLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 877
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateMagnitudeType - magnitudeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v6

    .local v6, "magnitude":I
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 880
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V

    .line 881
    return-void
.end method

.method public vibrateNotification(ILjava/lang/String;I)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1063
    const-string v0, "VibratorService"

    const-string v1, "Called vibrateNotification()!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(ILjava/lang/String;II)V

    .line 1066
    return-void
.end method

.method public vibratePattern(ILjava/lang/String;[JILandroid/os/IBinder;)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 322
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 338
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
    .catchall {:try_start_1b .. :try_end_25} :catchall_81

    if-ge p4, v1, :cond_29

    if-nez p5, :cond_2d

    .line 370
    :cond_29
    :goto_29
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    return-void

    .line 345
    :cond_2d
    :try_start_2d
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibratePattern - package: "

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

    .line 348
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move v4, p4

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIILjava/lang/String;)V
    :try_end_65
    .catchall {:try_start_2d .. :try_end_65} :catchall_81

    .line 350
    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_66
    invoke-interface {p5, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_69} :catch_86
    .catchall {:try_start_66 .. :try_end_69} :catchall_81

    .line 355
    :try_start_69
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_81

    .line 356
    :try_start_6c
    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 357
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 358
    if-ltz p4, :cond_88

    .line 359
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 360
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 367
    :goto_7c
    monitor-exit v2

    goto :goto_29

    :catchall_7e
    move-exception v1

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_6c .. :try_end_80} :catchall_7e

    :try_start_80
    throw v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    .line 370
    .end local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_81
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 351
    .restart local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catch_86
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_29

    .line 364
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_88
    :try_start_88
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 365
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_7e

    goto :goto_7c
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
    .line 884
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 886
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 888
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 893
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

    if-nez p5, :cond_37

    .line 896
    :cond_2b
    const-string v2, "VibratorService"

    const-string/jumbo v3, "vibratePatternByMagnitude() request is failed by  illegal argument."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_49

    .line 934
    :goto_33
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    return-void

    .line 900
    :cond_37
    if-nez p6, :cond_4e

    .line 901
    :try_start_39
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_49

    .line 902
    :try_start_3c
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 903
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 904
    monitor-exit v3

    goto :goto_33

    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_46

    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 934
    :catchall_49
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 909
    :cond_4e
    :try_start_4e
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratePatternByMagnitude - package: "

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

    .line 912
    new-instance v1, Lcom/android/server/VibratorService$Vibration;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v4, p3

    move/from16 v5, p4

    move v6, p1

    move-object v7, p2

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIILjava/lang/String;I)V
    :try_end_9a
    .catchall {:try_start_4e .. :try_end_9a} :catchall_49

    .line 914
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v2, 0x0

    :try_start_9b
    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a0} :catch_bb
    .catchall {:try_start_9b .. :try_end_a0} :catchall_49

    .line 919
    :try_start_a0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_49

    .line 920
    :try_start_a3
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 921
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 922
    if-ltz p4, :cond_be

    .line 923
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 924
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 931
    :goto_b5
    monitor-exit v3

    goto/16 :goto_33

    :catchall_b8
    move-exception v2

    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_a3 .. :try_end_ba} :catchall_b8

    :try_start_ba
    throw v2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_49

    .line 915
    :catch_bb
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto/16 :goto_33

    .line 928
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_be
    :try_start_be
    iput-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 929
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_b8

    goto :goto_b5
.end method

.method public vibratePatternByMagnitudeType(ILjava/lang/String;[JILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 940
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibratePatternByMagnitudeType - magnitudeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v6

    .local v6, "magnitude":I
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 943
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/VibratorService;->vibratePatternByMagnitude(ILjava/lang/String;[JILandroid/os/IBinder;I)V

    .line 944
    return-void
.end method
