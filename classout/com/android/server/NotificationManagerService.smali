.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$OverTurnPlayer;,
        Lcom/android/server/NotificationManagerService$PickupPlayer;,
        Lcom/android/server/NotificationManagerService$PickupSettingsObserver;,
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;,
        Lcom/android/server/NotificationManagerService$Archive;,
        Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    }
.end annotation


# static fields
.field private static final ALARM_REFRESH_ACTION:Ljava/lang/String; = "com.android.server.MY_INTENT"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final DORMANT_MODE_OFF:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_OFF"

.field private static final DORMANT_MODE_ON:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_ON"

.field private static final ENABLED_NOTIFICATION_LISTENERS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field private static final ENABLE_BLOCKED_TOASTS:Z = true

.field private static final JUNK_SCORE:I = -0x3e8

.field private static final LONG_DELAY:I = 0xdac

.field private static final LONG_DOUBLE_DELAY:I = 0x1b58

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final PICK_UP_MOTION:Ljava/lang/String; = "com.android.server.NotificationManagerService.PickupMotionArrived"

.field private static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field private static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field private static final SCORE_ONGOING_HIGHER:Z = false

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NotificationService"

.field private static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static canListInterrupt:Z

.field private static time_key_value_in_db:I


# instance fields
.field private final MESG_ID:I

.field private count1:I

.field private isDormantModeLedDisabled:Z

.field private isDormantModeOn:Z

.field private isNotificationAlarmOn:Z

.field final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field mArchive:Lcom/android/server/NotificationManagerService$Archive;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAudioService:Landroid/media/IAudioService;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisabledNotifications:I

.field private mEnabledListenerPackageNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledListenersForCurrentUser:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPlaying:Z

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMissedNotificationLightEnabled:Z

.field private mMissedSoundEnabled:Z

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mNotificationPulseEnabled:Z

.field private mNotificationSoundHandler:Landroid/os/Handler;

.field private mNotificationWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

.field private mPM:Landroid/os/PowerManager;

.field mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

.field private mPlckupIntent:Landroid/content/Intent;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mScorers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/notification/NotificationScorer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mkgm:Landroid/app/KeyguardManager;

.field private notificationAlarmManager:Landroid/app/AlarmManager;

.field private notificationAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private notificationPendingIntent:Landroid/app/PendingIntent;

.field private settings_new_time:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 257
    const/4 v0, 0x0

    sput v0, Lcom/android/server/NotificationManagerService;->time_key_value_in_db:I

    return-void

    .line 192
    :array_c
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/server/StatusBarManagerService;
    .param p3, "lights"    # Lcom/android/server/LightsService;

    .prologue
    .line 1523
    invoke-direct/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    .line 170
    new-instance v17, Lcom/android/server/NotificationManagerService$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->notificationAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z

    .line 183
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mkgm:Landroid/app/KeyguardManager;

    .line 215
    new-instance v17, Landroid/os/Binder;

    invoke-direct/range {v17 .. v17}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 239
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    .line 240
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NotificationManagerService;->mInCall:Z

    .line 244
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 254
    const/16 v17, 0x65

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->MESG_ID:I

    .line 255
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->count1:I

    .line 256
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 265
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 272
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    .line 275
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    .line 278
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    .line 281
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    .line 284
    new-instance v17, Lcom/android/server/NotificationManagerService$PickupPlayer;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    .line 291
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    .line 302
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    .line 303
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;

    .line 478
    new-instance v17, Lcom/android/server/NotificationManagerService$Archive;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/NotificationManagerService$Archive;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    .line 1132
    new-instance v17, Lcom/android/server/NotificationManagerService$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService$5;-><init>(Lcom/android/server/NotificationManagerService;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 1255
    new-instance v17, Lcom/android/server/NotificationManagerService$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService$6;-><init>(Lcom/android/server/NotificationManagerService;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1524
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    .line 1525
    const-string/jumbo v17, "vibrator"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/SystemVibrator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    .line 1526
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1527
    const-string/jumbo v17, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1528
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 1529
    new-instance v17, Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    .line 1531
    const-string v17, "appops"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AppOpsManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1533
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->importOldBlockDb()V

    .line 1535
    const-string v17, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "pickup"

    invoke-virtual/range {v17 .. v19}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1542
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    .line 1545
    const/16 v17, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1550
    .local v12, "resources":Landroid/content/res/Resources;
    const v17, 0x1060070

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    .line 1552
    const v17, 0x10e0022

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 1554
    const v17, 0x10e0023

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 1557
    const v17, 0x107002e

    const/16 v18, 0x11

    sget-object v19, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J

    .line 1562
    const v17, 0x107002f

    const/16 v18, 0x11

    sget-object v19, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "device_provisioned"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_224

    .line 1573
    const/high16 v17, 0x40000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 1577
    :cond_224
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1578
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1579
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1580
    const-string v17, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1581
    const-string v17, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1582
    const-string v17, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    const-string v17, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1584
    const-string v17, "android.intent.action.DORMANT_MODE_ON"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1585
    const-string v17, "android.intent.action.DORMANT_MODE_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1586
    const-string v17, "com.android.server.NotificationManagerService.PickupMotionArrived"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1588
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1589
    .local v11, "pkgFilter":Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1590
    const-string v17, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1591
    const-string v17, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1592
    const-string v17, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1593
    const-string v17, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1594
    const-string v17, "package"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1596
    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v16, "sdFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "keyguard"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mkgm:Landroid/app/KeyguardManager;

    .line 1603
    new-instance v17, Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    .line 1607
    const v17, 0x1070032

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 1609
    .local v10, "notificationScorerNames":[Ljava/lang/String;
    move-object v3, v10

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_319
    if-ge v6, v7, :cond_3be

    aget-object v15, v3, v6

    .line 1611
    .local v15, "scorerName":Ljava/lang/String;
    :try_start_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 1612
    .local v14, "scorerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/notification/NotificationScorer;

    .line 1613
    .local v13, "scorer":Lcom/android/internal/notification/NotificationScorer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Lcom/android/internal/notification/NotificationScorer;->initialize(Landroid/content/Context;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_349
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31d .. :try_end_349} :catch_34c
    .catch Ljava/lang/InstantiationException; {:try_start_31d .. :try_end_349} :catch_372
    .catch Ljava/lang/IllegalAccessException; {:try_start_31d .. :try_end_349} :catch_398

    .line 1609
    .end local v13    # "scorer":Lcom/android/internal/notification/NotificationScorer;
    .end local v14    # "scorerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_349
    add-int/lit8 v6, v6, 0x1

    goto :goto_319

    .line 1615
    :catch_34c
    move-exception v4

    .line 1616
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find scorer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_349

    .line 1617
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_372
    move-exception v4

    .line 1618
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t instantiate scorer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_349

    .line 1619
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_398
    move-exception v4

    .line 1620
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem accessing scorer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_349

    .line 1624
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    .end local v15    # "scorerName":Ljava/lang/String;
    :cond_3be
    new-instance v8, Landroid/content/IntentFilter;

    const-string v17, "com.android.server.MY_INTENT"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v8, "notificationFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->notificationAlarmReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "alarm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AlarmManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->notificationAlarmManager:Landroid/app/AlarmManager;

    .line 1627
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.android.server.MY_INTENT"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v9, "notificationIntent1":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->notificationPendingIntent:Landroid/app/PendingIntent;

    .line 1629
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateSoundLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->notificationAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/NotificationManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->notificationPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZI)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # I

    .prologue
    .line 156
    invoke-direct/range {p0 .. p7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->isDormantModeLedDisabled:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->sendMsg()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/NotificationManagerService$ToastRecord;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$3900(III)I
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->clamp(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/NotificationManagerService;Ljava/util/ArrayList;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->hasClearableItems(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Landroid/app/Notification;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/server/NotificationManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->doesItUseHaptic(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/NotificationManagerService;ZZLandroid/app/Notification;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/app/Notification;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;->doVibrate(ZZLandroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/NotificationManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mPlckupIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/server/NotificationManagerService;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mPlckupIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    .registers 18
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "sendDelete"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 2554
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/NotificationManagerService$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move/from16 v5, p7

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/NotificationManagerService$8;-><init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;ILjava/lang/String;IIIZ)V

    invoke-virtual {v9, v0}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2605
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;ZI)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2439
    if-eqz p2, :cond_15

    .line 2440
    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_15

    .line 2442
    :try_start_c
    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_15
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c .. :try_end_15} :catch_105

    .line 2452
    :cond_15
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_30

    .line 2453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2455
    .local v2, "identity":J
    :try_start_21
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v7, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_126

    .line 2458
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2460
    iput-object v10, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 2461
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 2465
    .end local v2    # "identity":J
    :cond_30
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v6, p1, :cond_5e

    .line 2466
    iput-object v10, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2469
    .restart local v2    # "identity":J
    :try_start_3a
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v6}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    .line 2470
    .local v4, "player":Landroid/media/IRingtonePlayer;
    if-eqz v4, :cond_4c

    .line 2471
    const-string v6, "STATUSBAR-NotificationService"

    const-string v7, "cancelN stopAsync"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    invoke-interface {v4}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4c} :catch_144
    .catchall {:try_start_3a .. :try_end_4c} :catchall_12b

    .line 2476
    :cond_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2479
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2480
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2482
    .end local v4    # "player":Landroid/media/IRingtonePlayer;
    :cond_5c
    :goto_5c
    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    .line 2488
    .end local v2    # "identity":J
    :cond_5e
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v6, p1, :cond_70

    .line 2489
    iput-object v10, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2492
    .restart local v2    # "identity":J
    :try_start_68
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->cancel()V
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_13f

    .line 2495
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2500
    .end local v2    # "identity":J
    :cond_70
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2501
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v6, p1, :cond_7b

    .line 2502
    iput-object v10, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2506
    :cond_7b
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    iget-object v7, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v7}, Lcom/android/server/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 2509
    const-string v6, "NotificationService"

    const-string v7, "cancelNotificationLocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/server/NotificationManagerService;->hasClearableItems(Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_b7

    .line 2511
    const-string v6, "NotificationService"

    const-string v7, " has clearable items no "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v6, :cond_b7

    .line 2513
    const-string v6, "NotificationService"

    const-string v7, "cancelNotificationLocked: cancel alarm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->notificationAlarmManager:Landroid/app/AlarmManager;

    if-eqz v6, :cond_b7

    .line 2515
    const-string v6, "NotificationService"

    const-string v7, "cancelNotificationLocked: cancel alarm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->notificationAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->notificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2517
    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z

    .line 2524
    :cond_b7
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 2525
    .local v5, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 2526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2528
    .restart local v2    # "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-eq v6, p3, :cond_101

    .line 2529
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.knox.ACTION_CANCEL_NOTIFICATION"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2531
    .local v0, "cancelNotifIntent":Landroid/content/Intent;
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Sending broadcast for cancel notification = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const-string v6, "notification"

    iget-object v7, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2533
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2536
    .end local v0    # "cancelNotifIntent":Landroid/content/Intent;
    :cond_101
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2541
    .end local v2    # "identity":J
    :cond_104
    return-void

    .line 2443
    .end local v5    # "versionInfo":Landroid/os/Bundle;
    :catch_105
    move-exception v1

    .line 2446
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canceled PendingIntent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 2458
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "identity":J
    :catchall_126
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2476
    :catchall_12b
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2479
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v7}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 2480
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v7}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2482
    :cond_13c
    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    .line 2476
    throw v6

    .line 2495
    :catchall_13f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2474
    :catch_144
    move-exception v6

    .line 2476
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2479
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2480
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    goto/16 :goto_5c
.end method

.method private cancelToastLocked(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 1806
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 1808
    .local v1, "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    :try_start_8
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_23

    .line 1815
    :goto_d
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1816
    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 1817
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1821
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    .line 1823
    :cond_22
    return-void

    .line 1809
    :catch_23
    move-exception v0

    .line 1810
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    .registers 9
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;

    .prologue
    .line 942
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 943
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 944
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_21

    .line 945
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    .line 946
    .local v2, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    iget-object v4, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v4}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_1e

    return-object v2

    .line 944
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 948
    .end local v2    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :cond_21
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disallowed call from unknown listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static final clamp(III)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 1963
    if-ge p0, p1, :cond_3

    .end local p1    # "low":I
    :goto_2
    return p1

    .restart local p1    # "low":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private doVibrate(ZZLandroid/app/Notification;)V
    .registers 12
    .param p1, "useDefaultVibrate"    # Z
    .param p2, "useHaptic"    # Z
    .param p3, "n"    # Landroid/app/Notification;

    .prologue
    .line 3003
    if-eqz p1, :cond_16

    .line 3007
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3009
    .local v0, "identity":J
    :try_start_6
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/os/SystemVibrator;->vibrateNotification(I)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    .line 3011
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3024
    .end local v0    # "identity":J
    :goto_10
    return-void

    .line 3011
    .restart local v0    # "identity":J
    :catchall_11
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3014
    .end local v0    # "identity":J
    :cond_16
    if-eqz p2, :cond_20

    .line 3015
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget v5, p3, Landroid/app/Notification;->haptic:I

    invoke-virtual {v4, v5}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_10

    .line 3017
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3019
    .local v2, "identity2":J
    :try_start_24
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v6, p3, Landroid/app/Notification;->vibrate:[J

    iget v4, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_38

    const/4 v4, 0x0

    :goto_2f
    sget-object v7, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v5, v6, v4, v7}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_3a

    .line 3021
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    .line 3019
    :cond_38
    const/4 v4, -0x1

    goto :goto_2f

    .line 3021
    :catchall_3a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private doesItUseHaptic(I)Z
    .registers 3
    .param p1, "haptic"    # I

    .prologue
    .line 2992
    packed-switch p1, :pswitch_data_8

    .line 2999
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2997
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2992
    nop

    :pswitch_data_8
    .packed-switch 0xd
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    .line 1508
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1509
    .local v0, "ar":[I
    if-nez v0, :cond_7

    .line 1517
    .end local p3    # "def":[J
    :goto_6
    return-object p3

    .line 1512
    .restart local p3    # "def":[J
    :cond_7
    array-length v4, v0

    if-le v4, p2, :cond_18

    move v2, p2

    .line 1513
    .local v2, "len":I
    :goto_b
    new-array v3, v2, [J

    .line 1514
    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_1a

    .line 1515
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 1514
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1512
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_18
    array-length v2, v0

    goto :goto_b

    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_1a
    move-object p3, v3

    .line 1517
    goto :goto_6
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/NotificationManagerService$ToastRecord;

    .prologue
    .line 1851
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1852
    :try_start_3
    iget-object v1, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 1853
    .local v0, "index":I
    if-ltz v0, :cond_10

    .line 1854
    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    .line 1856
    :cond_10
    monitor-exit v2

    .line 1857
    return-void

    .line 1856
    .end local v0    # "index":I
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private hasClearableItems(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2845
    .local p1, "mNotificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    const-string v3, "NotificationService"

    const-string v4, " hasClearableItems"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    const/4 v0, 0x0

    .line 2847
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2848
    .local v2, "nr":Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-eqz v2, :cond_c

    .line 2850
    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2a

    if-nez v3, :cond_c

    .line 2853
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2857
    .end local v2    # "nr":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_25
    if-eqz v0, :cond_41

    .line 2859
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Num of hasClearableItems : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const/4 v3, 0x1

    .line 2862
    :goto_40
    return v3

    :cond_41
    const/4 v3, 0x0

    goto :goto_40
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "baseContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, "c":Landroid/content/Context;
    if-eqz p1, :cond_14

    .line 571
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_11

    move-result-object v0

    .line 583
    :goto_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 585
    .local v2, "r":Landroid/content/res/Resources;
    :try_start_c
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_f} :catch_16

    move-result-object v3

    .line 587
    :goto_10
    return-object v3

    .line 572
    .end local v2    # "r":Landroid/content/res/Resources;
    :catch_11
    move-exception v1

    .line 573
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 574
    goto :goto_8

    .line 576
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    move-object v0, p0

    goto :goto_8

    .line 586
    .restart local v2    # "r":Landroid/content/res/Resources;
    :catch_16
    move-exception v1

    .line 587
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    goto :goto_10
.end method

.method private importOldBlockDb()V
    .registers 7

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->loadBlockDb()V

    .line 1637
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1638
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1639
    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1641
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_1d
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1642
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/NotificationManagerService;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_29} :catch_2a

    goto :goto_f

    .line 1643
    :catch_2a
    move-exception v4

    goto :goto_f

    .line 1647
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2c
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1648
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    if-eqz v4, :cond_3a

    .line 1649
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    .line 1651
    :cond_3a
    return-void
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 2937
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 2938
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2939
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_44

    .line 2940
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2941
    .local v3, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, p3, :cond_20

    .line 2939
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2944
    :cond_20
    if-nez p2, :cond_37

    .line 2945
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 2953
    :cond_2a
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2957
    .end local v0    # "i":I
    .end local v3    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_36
    return v0

    .line 2949
    .restart local v0    # "i":I
    .restart local v3    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_37
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_1d

    .line 2957
    .end local v3    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_44
    const/4 v0, -0x1

    goto :goto_36
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 1862
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1863
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 1864
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1865
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_27

    .line 1866
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 1867
    .local v4, "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_24

    .line 1871
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_23
    return v1

    .line 1865
    .restart local v1    # "i":I
    .restart local v4    # "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1871
    .end local v4    # "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_27
    const/4 v1, -0x1

    goto :goto_23
.end method

.method private keepProcessAliveLocked(I)V
    .registers 11
    .param p1, "pid"    # I

    .prologue
    const/4 v5, 0x1

    .line 1877
    const/4 v4, 0x0

    .line 1878
    .local v4, "toastCount":I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 1879
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1880
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1a

    .line 1881
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 1882
    .local v3, "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    iget v6, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v6, p1, :cond_17

    .line 1883
    add-int/lit8 v4, v4, 0x1

    .line 1880
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1887
    .end local v3    # "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1a
    :try_start_1a
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_25

    :goto_20
    const/4 v8, 0x1

    invoke-interface {v6, v7, p1, v5, v8}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZZ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_27

    .line 1891
    :goto_24
    return-void

    .line 1887
    :cond_25
    const/4 v5, 0x0

    goto :goto_20

    .line 1888
    :catch_27
    move-exception v5

    goto :goto_24
.end method

.method private loadBlockDb()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 481
    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 482
    :try_start_4
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v7, :cond_7f

    .line 483
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "dir":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "notification_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 486
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_99

    .line 488
    const/4 v2, 0x0

    .line 490
    .local v2, "infile":Ljava/io/FileInputStream;
    :try_start_23
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 491
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 492
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 496
    const/4 v6, 0x1

    .line 497
    .local v6, "version":I
    :cond_32
    :goto_32
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v11, :cond_b9

    .line 498
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "tag":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_32

    .line 500
    const-string v7, "notification-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 501
    const/4 v7, 0x0

    const-string/jumbo v9, "version"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_32

    .line 502
    :cond_54
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 503
    :cond_5c
    :goto_5c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_32

    .line 504
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 505
    const-string v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 506
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_7a} :catch_7b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_7a} :catch_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_7a} :catch_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_7a} :catch_a8
    .catchall {:try_start_23 .. :try_end_7a} :catchall_b4

    goto :goto_5c

    .line 514
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "version":I
    :catch_7b
    move-exception v7

    .line 523
    :try_start_7c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 526
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "infile":Ljava/io/FileInputStream;
    :cond_7f
    :goto_7f
    monitor-exit v8
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_99

    .line 527
    return-void

    .line 507
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "infile":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v6    # "version":I
    :cond_81
    :try_start_81
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_86} :catch_7b
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_86} :catch_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_86} :catch_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_86} :catch_a8
    .catchall {:try_start_81 .. :try_end_86} :catchall_b4

    move-result v7

    if-eqz v7, :cond_5c

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5c

    goto :goto_32

    .line 516
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "version":I
    :catch_8d
    move-exception v1

    .line 517
    .local v1, "e":Ljava/io/IOException;
    :try_start_8e
    const-string v7, "NotificationService"

    const-string v9, "Unable to read blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_b4

    .line 523
    :try_start_95
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7f

    .line 526
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "infile":Ljava/io/FileInputStream;
    :catchall_99
    move-exception v7

    monitor-exit v8
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_99

    throw v7

    .line 518
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "infile":Ljava/io/FileInputStream;
    :catch_9c
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_9d
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_b4

    .line 523
    :try_start_a4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_99

    goto :goto_7f

    .line 520
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_a8
    move-exception v1

    .line 521
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a9
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b4

    .line 523
    :try_start_b0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7f

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_b4
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    .restart local v6    # "version":I
    :cond_b9
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_bc
    .catchall {:try_start_b0 .. :try_end_bc} :catchall_99

    goto :goto_7f
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 545
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v0, 0x0

    .line 548
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method private notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 2612
    if-eq p2, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 7
    .param p1, "n"    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    .prologue
    .line 912
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 913
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    .line 914
    .local v1, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/NotificationManagerService$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/NotificationManagerService$3;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationListenerInfo;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 920
    .end local v1    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :cond_23
    return-void
.end method

.method private notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 7
    .param p1, "n"    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    .prologue
    .line 928
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 930
    .local v2, "sbn_light":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    .line 931
    .local v1, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/NotificationManagerService$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/NotificationManagerService$4;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationListenerInfo;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 937
    .end local v1    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :cond_23
    return-void
.end method

.method private registerListenerService(Landroid/content/ComponentName;I)V
    .registers 15
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 787
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 788
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "servicesBindingTag":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 791
    monitor-exit v7

    .line 855
    :goto_2a
    return-void

    .line 793
    :cond_2b
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 796
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_38
    if-ltz v2, :cond_61

    .line 797
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    .line 798
    .local v3, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v6, p2, :cond_5e

    .line 802
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 803
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v6, :cond_5e

    .line 804
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 796
    :cond_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 809
    .end local v3    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :cond_61
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.service.notification.NotificationListenerService"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 812
    const-string v6, "android.intent.extra.client_label"

    const v8, 0x1040790

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    const-string v6, "android.intent.extra.client_intent"

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.settings.NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_87
    .catchall {:try_start_6 .. :try_end_87} :catchall_ba

    .line 819
    :try_start_87
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v8, p0, v5, p2}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)V

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v4, v8, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_d9

    .line 846
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 847
    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/SecurityException; {:try_start_87 .. :try_end_b7} :catch_bd
    .catchall {:try_start_87 .. :try_end_b7} :catchall_ba

    .line 848
    :try_start_b7
    monitor-exit v7

    goto/16 :goto_2a

    .line 854
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "servicesBindingTag":Ljava/lang/String;
    :catchall_ba
    move-exception v6

    monitor-exit v7
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_ba

    throw v6

    .line 850
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "servicesBindingTag":Ljava/lang/String;
    :catch_bd
    move-exception v1

    .line 851
    .local v1, "ex":Ljava/lang/SecurityException;
    :try_start_be
    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    monitor-exit v7

    goto/16 :goto_2a

    .line 854
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_d9
    monitor-exit v7
    :try_end_da
    .catchall {:try_start_be .. :try_end_da} :catchall_ba

    goto/16 :goto_2a
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/NotificationManagerService$ToastRecord;

    .prologue
    .line 1827
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1828
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1835
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    .line 1836
    const-wide/16 v0, 0x1b58

    .line 1845
    .local v0, "delay":J
    :goto_13
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1846
    return-void

    .line 1838
    .end local v0    # "delay":J
    :cond_19
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 1839
    const-wide/16 v0, 0xdac

    .restart local v0    # "delay":J
    goto :goto_13

    .line 1842
    .end local v0    # "delay":J
    :cond_21
    const-wide/16 v0, 0x7d0

    .restart local v0    # "delay":J
    goto :goto_13
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 2417
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 2418
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2433
    :goto_c
    return-void

    .line 2422
    :cond_d
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2424
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2425
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2426
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 2427
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2428
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2429
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    :cond_31
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_c
.end method

.method private sendMsg()V
    .registers 9

    .prologue
    .line 2919
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsg & mSystemReady"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v0, :cond_5c

    .line 2921
    const-string v0, "NotificationService"

    const-string v1, " !!!mSystemReady!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :try_start_25
    const-string v0, "NotificationService"

    const-string v1, " in if: setRepeating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->notificationAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_key"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_key"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->notificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z
    :try_end_5c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_25 .. :try_end_5c} :catch_5d

    .line 2931
    :cond_5c
    :goto_5c
    return-void

    .line 2926
    :catch_5d
    move-exception v7

    .line 2928
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_5c
.end method

.method private showNextToastLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1780
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 1781
    .local v2, "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_9
    if-eqz v2, :cond_13

    .line 1784
    :try_start_b
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 1785
    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    .line 1803
    :cond_13
    return-void

    .line 1787
    :catch_14
    move-exception v0

    .line 1788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1792
    .local v1, "index":I
    if-ltz v1, :cond_48

    .line 1793
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1795
    :cond_48
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 1796
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5e

    .line 1797
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .restart local v2    # "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    goto :goto_9

    .line 1799
    :cond_5e
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private unregisterListenerService(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 886
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 887
    :try_start_6
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 888
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_5e

    .line 889
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    .line 890
    .local v3, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v4, p2, :cond_34

    .line 892
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 893
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_5b

    if-eqz v4, :cond_34

    .line 895
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_34} :catch_37
    .catchall {:try_start_2d .. :try_end_34} :catchall_5b

    .line 888
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 896
    :catch_37
    move-exception v1

    .line 899
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_38
    const-string v4, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be unbound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 904
    .end local v0    # "N":I
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :catchall_5b
    move-exception v4

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_5b

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_5e
    :try_start_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5b

    .line 905
    return-void
.end method

.method private updateLightsLocked()V
    .registers 9

    .prologue
    .line 2785
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v6, :cond_18

    .line 2787
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2788
    .local v5, "n":I
    if-lez v5, :cond_18

    .line 2789
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2793
    .end local v5    # "n":I
    :cond_18
    const/4 v0, 0x0

    .line 2794
    .local v0, "isForceLED":Z
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_28

    .line 2795
    const/4 v0, 0x1

    .line 2799
    :cond_28
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v6, :cond_36

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    if-nez v6, :cond_36

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-eqz v6, :cond_3c

    if-nez v0, :cond_3c

    .line 2800
    :cond_36
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2840
    :cond_3b
    :goto_3b
    return-void

    .line 2802
    :cond_3c
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v6, v6, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 2803
    .local v4, "ledno":Landroid/app/Notification;
    iget v1, v4, Landroid/app/Notification;->ledARGB:I

    .line 2804
    .local v1, "ledARGB":I
    iget v3, v4, Landroid/app/Notification;->ledOnMS:I

    .line 2805
    .local v3, "ledOnMS":I
    iget v2, v4, Landroid/app/Notification;->ledOffMS:I

    .line 2806
    .local v2, "ledOffMS":I
    iget v6, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_56

    .line 2807
    iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    .line 2808
    iget v3, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 2809
    iget v2, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 2821
    :cond_56
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z

    if-eqz v6, :cond_6b

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->isDormantModeLedDisabled:Z

    if-eqz v6, :cond_6b

    .line 2822
    const-string v6, "NotificationService"

    const-string v7, "LED is disabled by Dormant Mode On"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_3b

    .line 2826
    :cond_6b
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    if-eqz v6, :cond_3b

    .line 2827
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_8b

    .line 2828
    const-string v6, "STATUSBAR-NotificationService"

    const-string/jumbo v7, "updateLightsLocked() : Set default flashing notification light"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/16 v7, 0xc

    invoke-virtual {v6, v1, v7, v3, v2}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_3b

    .line 2832
    :cond_8b
    const-string v6, "STATUSBAR-NotificationService"

    const-string/jumbo v7, "updateLightsLocked() : Set custom flashing notification light"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7, v3, v2}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_3b
.end method

.method private updateNotificationPulse()V
    .registers 3

    .prologue
    .line 2961
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2962
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 2963
    monitor-exit v1

    .line 2964
    return-void

    .line 2963
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateNotificationSound()V
    .registers 3

    .prologue
    .line 2968
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2969
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateSoundLocked()V

    .line 2970
    monitor-exit v1

    .line 2972
    return-void

    .line 2970
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateSoundLocked()V
    .registers 10

    .prologue
    .line 2867
    const-string v5, "NotificationService"

    const-string v6, " updateSoundLocked "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2871
    :try_start_a
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8f

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/NotificationManagerService;->hasClearableItems(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_8f

    iget-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    if-eqz v5, :cond_8f

    iget v5, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v7, 0x40000

    and-int/2addr v5, v7

    if-nez v5, :cond_8f

    iget-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v5, :cond_8f

    .line 2878
    const-string v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMissedSoundEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 2882
    .local v3, "notification":Landroid/net/Uri;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_51
    .catchall {:try_start_a .. :try_end_51} :catchall_96

    .line 2886
    .local v2, "mp1":Landroid/media/MediaPlayer;
    :try_start_51
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2887
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2889
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5d} :catch_91
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5d} :catch_99
    .catchall {:try_start_51 .. :try_end_5d} :catchall_96

    .line 2898
    :goto_5d
    :try_start_5d
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 2900
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2902
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_77

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_87

    .line 2904
    :cond_77
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 2906
    .local v4, "v":Landroid/os/Vibrator;
    const-wide/16 v7, 0x1f4

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2909
    .end local v4    # "v":Landroid/os/Vibrator;
    :cond_87
    new-instance v5, Lcom/android/server/NotificationManagerService$9;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$9;-><init>(Lcom/android/server/NotificationManagerService;)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2915
    .end local v1    # "mAudioManager":Landroid/media/AudioManager;
    .end local v2    # "mp1":Landroid/media/MediaPlayer;
    .end local v3    # "notification":Landroid/net/Uri;
    :cond_8f
    monitor-exit v6

    .line 2916
    return-void

    .line 2890
    .restart local v2    # "mp1":Landroid/media/MediaPlayer;
    .restart local v3    # "notification":Landroid/net/Uri;
    :catch_91
    move-exception v0

    .line 2892
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 2915
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "mp1":Landroid/media/MediaPlayer;
    .end local v3    # "notification":Landroid/net/Uri;
    :catchall_96
    move-exception v5

    monitor-exit v6
    :try_end_98
    .catchall {:try_start_5d .. :try_end_98} :catchall_96

    throw v5

    .line 2894
    .restart local v2    # "mp1":Landroid/media/MediaPlayer;
    .restart local v3    # "notification":Landroid/net/Uri;
    :catch_99
    move-exception v0

    .line 2896
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_96

    goto :goto_5d
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 534
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method cancelAll(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 2738
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2739
    :try_start_3
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2740
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_8c

    .line 2741
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2743
    .local v4, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-direct {p0, v4, p1}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2740
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2747
    :cond_1e
    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x22

    if-nez v5, :cond_1b

    .line 2749
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2751
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;ZI)V

    .line 2753
    iget-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v5, :cond_1b

    .line 2754
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2755
    .local v3, "pkg":Ljava/lang/String;
    const-string v5, "com.android.phone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "com.android.mms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "KOR"

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "com.skt.prod.dialer"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2756
    :cond_5b
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2759
    .local v2, "notificationRemovedIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_7e

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->missedCount:I

    if-lez v5, :cond_7e

    .line 2760
    const-string v5, "Notification"

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2761
    const-string v5, "pkg"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2764
    :cond_7e
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1b

    .line 2771
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "notificationRemovedIntent":Landroid/content/Intent;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_89
    move-exception v5

    monitor-exit v6
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_89

    throw v5

    .line 2770
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_8c
    :try_start_8c
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 2771
    monitor-exit v6
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_89

    .line 2772
    return-void
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2691
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2693
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "cancelAllNotifications"

    move v2, p2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2698
    const/16 v8, 0x40

    move-object v5, p0

    move-object v6, p1

    move v7, v4

    move v9, v3

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 2699
    return-void
.end method

.method public cancelAllNotificationsFromListener(Landroid/service/notification/INotificationListener;)V
    .registers 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v2

    .line 960
    .local v2, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 962
    .local v0, "identity":J
    :try_start_8
    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {p0, v3}, Lcom/android/server/NotificationManagerService;->cancelAll(I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 964
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    return-void

    .line 964
    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mustHaveFlags"    # I
    .param p3, "mustNotHaveFlags"    # I
    .param p4, "doit"    # Z
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2627
    const/16 v6, 0xac0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2630
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2631
    :try_start_23
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2632
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2634
    .local v1, "canceledSomething":Z
    const/4 v3, 0x0

    .line 2636
    .local v3, "isNotifSynced":Z
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_2d
    if-ltz v2, :cond_92

    .line 2637
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2639
    .local v4, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-eqz p1, :cond_59

    const-string v7, "com.samsung.knox.rcp.components"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 2640
    const/4 v3, 0x1

    .line 2644
    :goto_4e
    if-nez v3, :cond_80

    .line 2647
    invoke-direct {p0, v4, p5}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 2636
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 2642
    :cond_59
    const/4 v3, 0x0

    goto :goto_4e

    .line 2651
    :cond_5b
    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_64

    if-eqz p1, :cond_56

    .line 2654
    :cond_64
    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v7

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_56

    .line 2657
    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v7

    and-int/2addr v7, p3

    if-nez v7, :cond_56

    .line 2660
    if-eqz p1, :cond_80

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2664
    :cond_80
    const/4 v1, 0x1

    .line 2665
    if-nez p4, :cond_85

    .line 2666
    monitor-exit v6

    .line 2676
    .end local v4    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_84
    return v5

    .line 2668
    .restart local v4    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_85
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2670
    const/4 v7, 0x0

    invoke-direct {p0, v4, v7, p5}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;ZI)V

    goto :goto_56

    .line 2677
    .end local v0    # "N":I
    .end local v1    # "canceledSomething":Z
    .end local v2    # "i":I
    .end local v3    # "isNotifSynced":Z
    .end local v4    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_8f
    move-exception v5

    monitor-exit v6
    :try_end_91
    .catchall {:try_start_23 .. :try_end_91} :catchall_8f

    throw v5

    .line 2673
    .restart local v0    # "N":I
    .restart local v1    # "canceledSomething":Z
    .restart local v2    # "i":I
    .restart local v3    # "isNotifSynced":Z
    :cond_92
    if-eqz v1, :cond_97

    .line 2674
    :try_start_94
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 2676
    :cond_97
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_8f

    move v5, v1

    goto :goto_84
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v10

    .line 977
    .local v10, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 979
    .local v8, "identity":J
    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x1

    :try_start_c
    iget v7, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 984
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    return-void

    .line 984
    :catchall_19
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2681
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2682
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const-string v5, "cancelNotificationWithTag"

    move v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 2685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_28

    move v5, v4

    :goto_1e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V

    .line 2688
    return-void

    .line 2685
    :cond_28
    const/16 v5, 0x40

    goto :goto_1e
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 1757
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    if-eqz p1, :cond_26

    if-nez p2, :cond_49

    .line 1760
    :cond_26
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :goto_48
    return-void

    .line 1764
    :cond_49
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1765
    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5e

    move-result-wide v0

    .line 1767
    .local v0, "callingId":J
    :try_start_50
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    .line 1768
    .local v2, "index":I
    if-ltz v2, :cond_61

    .line 1769
    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_84

    .line 1774
    :goto_59
    :try_start_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    monitor-exit v4

    goto :goto_48

    .end local v0    # "callingId":J
    .end local v2    # "index":I
    :catchall_5e
    move-exception v3

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_5e

    throw v3

    .line 1771
    .restart local v0    # "callingId":J
    .restart local v2    # "index":I
    :cond_61
    :try_start_61
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_84

    goto :goto_59

    .line 1774
    .end local v2    # "index":I
    :catchall_84
    move-exception v3

    :try_start_85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_5e
.end method

.method checkCallerIsSystem()V
    .registers 4

    .prologue
    .line 2714
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2715
    return-void

    .line 2717
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2721
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2735
    :cond_6
    return-void

    .line 2724
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2726
    .local v2, "uid":I
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2728
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2729
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4f} :catch_4f

    .line 2732
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_4f
    move-exception v1

    .line 2733
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public clearAllNotificationsAsUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 2776
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 2777
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->cancelAll(I)V

    .line 2778
    return-void
.end method

.method disableNonexistentListeners()V
    .registers 18

    .prologue
    .line 647
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 648
    .local v2, "currentUser":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_notification_listeners"

    invoke-static {v14, v15, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, "flatIn":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d8

    .line 654
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 655
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.service.notification.NotificationListenerService"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x84

    invoke-virtual {v11, v14, v15, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 660
    .local v10, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 661
    .local v9, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_37
    if-ge v7, v1, :cond_93

    .line 662
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 663
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 665
    .local v8, "info":Landroid/content/pm/ServiceInfo;
    const-string v14, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v15, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_84

    .line 667
    const-string v14, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping notification listener service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": it does not require the permission "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 673
    :cond_84
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 676
    .end local v8    # "info":Landroid/content/pm/ServiceInfo;
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_93
    const-string v6, ""

    .line 677
    .local v6, "flatOut":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c5

    .line 678
    const-string v14, ":"

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "enabled":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v14, v3

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    .local v12, "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :goto_a8
    array-length v14, v3

    if-ge v7, v14, :cond_bf

    .line 681
    aget-object v14, v3, v7

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 682
    .local v4, "enabledComponent":Landroid/content/ComponentName;
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bc

    .line 683
    aget-object v14, v3, v7

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 686
    .end local v4    # "enabledComponent":Landroid/content/ComponentName;
    :cond_bf
    const-string v14, ":"

    invoke-static {v14, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 689
    .end local v3    # "enabled":[Ljava/lang/String;
    .end local v12    # "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d8

    .line 690
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_notification_listeners"

    invoke-static {v14, v15, v6, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 695
    .end local v1    # "count":I
    .end local v6    # "flatOut":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v10    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_d8
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3030
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_33

    .line 3032
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    :goto_32
    return-void

    .line 3038
    :cond_33
    const-string v6, "Current Notification Manager state:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Listeners ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") enabled for current user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3043
    .local v1, "cmpt":Landroid/content/ComponentName;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    .line 3046
    .end local v1    # "cmpt":Landroid/content/ComponentName;
    :cond_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Live listeners ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    .line 3048
    .local v4, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    if-eqz v6, :cond_f2

    const-string v6, " SYSTEM"

    :goto_e6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    :cond_f2
    const-string v6, ""

    goto :goto_e6

    .line 3055
    .end local v4    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :cond_f5
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3056
    :try_start_f8
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3057
    .local v0, "N":I
    if-lez v0, :cond_11d

    .line 3058
    const-string v6, "  Toast Queue:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_106
    if-ge v2, v0, :cond_118

    .line 3060
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v8, "    "

    invoke-virtual {v6, p2, v8}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3059
    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    .line 3062
    :cond_118
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    .end local v2    # "i":I
    :cond_11d
    monitor-exit v7
    :try_end_11e
    .catchall {:try_start_f8 .. :try_end_11e} :catchall_143

    .line 3067
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3068
    :try_start_121
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3069
    if-lez v0, :cond_14b

    .line 3070
    const-string v6, "  Notification List:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_12f
    if-ge v2, v0, :cond_146

    .line 3072
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v8, "    "

    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2, v8, v9}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_140
    .catchall {:try_start_121 .. :try_end_140} :catchall_239

    .line 3071
    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    .line 3065
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_143
    move-exception v6

    :try_start_144
    monitor-exit v7
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v6

    .line 3074
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_146
    :try_start_146
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    .end local v2    # "i":I
    :cond_14b
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3078
    if-lez v0, :cond_17f

    .line 3079
    const-string v6, "  Lights List:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_159
    if-ge v2, v0, :cond_17a

    .line 3081
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    add-int/lit8 v2, v2, 0x1

    goto :goto_159

    .line 3083
    :cond_17a
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    .end local v2    # "i":I
    :cond_17f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSoundNotification="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mVibrateNotification="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mDisabledNotifications=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSystemReady="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mArchive="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v8}, Lcom/android/server/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3092
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v2, 0x0

    .line 3093
    .restart local v2    # "i":I
    :cond_206
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_236

    .line 3094
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x5

    if-lt v2, v6, :cond_206

    .line 3096
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_236

    const-string v6, "    ..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    :cond_236
    monitor-exit v7

    goto/16 :goto_32

    .end local v2    # "i":I
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    :catchall_239
    move-exception v6

    monitor-exit v7
    :try_end_23b
    .catchall {:try_start_146 .. :try_end_23b} :catchall_239

    throw v6
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .registers 29
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "basePkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 1976
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1977
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/NotificationManagerService;->isUidSystem(I)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "android"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_17
    const/16 v16, 0x1

    .line 1979
    .local v16, "isSystemNotification":Z
    :goto_19
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "enqueueNotification"

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p9

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1981
    .local v12, "userId":I
    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 1985
    .local v11, "user":Landroid/os/UserHandle;
    if-nez v16, :cond_98

    .line 1986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1987
    const/4 v14, 0x0

    .line 1988
    .local v14, "count":I
    :try_start_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1989
    .local v13, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3f
    if-ge v15, v13, :cond_97

    .line 1990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1991
    .local v17, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    if-ne v2, v12, :cond_94

    .line 1992
    add-int/lit8 v14, v14, 0x1

    .line 1993
    const/16 v2, 0x32

    if-lt v14, v2, :cond_94

    .line 1994
    const-string v2, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package has already posted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notifications.  Not showing more.  package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    monitor-exit v3

    .line 2414
    .end local v13    # "N":I
    .end local v14    # "count":I
    .end local v15    # "i":I
    .end local v17    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_90
    return-void

    .line 1977
    .end local v11    # "user":Landroid/os/UserHandle;
    .end local v12    # "userId":I
    .end local v16    # "isSystemNotification":Z
    :cond_91
    const/16 v16, 0x0

    goto :goto_19

    .line 1989
    .restart local v11    # "user":Landroid/os/UserHandle;
    .restart local v12    # "userId":I
    .restart local v13    # "N":I
    .restart local v14    # "count":I
    .restart local v15    # "i":I
    .restart local v16    # "isSystemNotification":Z
    .restart local v17    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_94
    add-int/lit8 v15, v15, 0x1

    goto :goto_3f

    .line 2000
    .end local v17    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_36 .. :try_end_98} :catchall_105

    .line 2005
    .end local v13    # "N":I
    .end local v14    # "count":I
    .end local v15    # "i":I
    :cond_98
    const-string v2, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const-string v2, "DownloadManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 2007
    :cond_ab
    const/16 v2, 0xabe

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    const/4 v4, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2011
    :cond_ce
    if-eqz p1, :cond_d2

    if-nez p7, :cond_108

    .line 2012
    :cond_d2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null not allowed: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2000
    .restart local v14    # "count":I
    :catchall_105
    move-exception v2

    :try_start_106
    monitor-exit v3
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    throw v2

    .line 2015
    .end local v14    # "count":I
    :cond_108
    move-object/from16 v0, p7

    iget v2, v0, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_147

    .line 2016
    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_147

    .line 2017
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentView required: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2022
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/server/NotificationManagerService$7;

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, v16

    move/from16 v8, p6

    move-object/from16 v9, p5

    move/from16 v10, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/NotificationManagerService$7;-><init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IZILjava/lang/String;ILandroid/os/UserHandle;I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2413
    const/4 v2, 0x0

    aput p6, p8, v2

    goto/16 :goto_90
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    .registers 24
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "basePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "notification"    # Landroid/app/Notification;
    .param p6, "idOut"    # [I
    .param p7, "userId"    # I

    .prologue
    .line 1915
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v12

    .line 1918
    .local v12, "mAppPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    if-eqz v12, :cond_20

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/sec/enterprise/ApplicationPolicy;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1920
    .local v14, "token":J
    invoke-virtual {v12}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNotificationMode()I

    move-result v13

    .line 1921
    .local v13, "notificationMode":I
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_73

    .line 1922
    packed-switch v13, :pswitch_data_b0

    .line 1958
    .end local v12    # "mAppPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v13    # "notificationMode":I
    .end local v14    # "token":J
    :cond_20
    :goto_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    .line 1960
    :cond_3b
    return-void

    .line 1924
    .restart local v12    # "mAppPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v13    # "notificationMode":I
    .restart local v14    # "token":J
    :pswitch_3c
    :try_start_3c
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify: Block all - flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    iget v3, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    const-string v1, "com.android.phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object/from16 v0, p5

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    .line 1928
    const-string v1, "NotificationService"

    const-string v2, "notify: Do not block"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_72} :catch_73

    goto :goto_20

    .line 1947
    .end local v12    # "mAppPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v13    # "notificationMode":I
    .end local v14    # "token":J
    :catch_73
    move-exception v11

    .line 1948
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "NotificationManager"

    const-string v2, "Is edm running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1934
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "mAppPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v13    # "notificationMode":I
    .restart local v14    # "token":J
    :pswitch_7c
    const/4 v1, 0x0

    :try_start_7d
    move-object/from16 v0, p5

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1935
    const-string v1, "NotificationService"

    const-string v2, "notify: Block text sound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :pswitch_88
    const-string v1, ""

    move-object/from16 v0, p5

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1939
    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102004f

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1941
    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020016

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1943
    const-string v1, "NotificationService"

    const-string v2, "notify: Block text"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_ad} :catch_73

    goto/16 :goto_20

    .line 1922
    nop

    :pswitch_data_b0
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_88
        :pswitch_7c
    .end packed-switch
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .registers 21
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .param p3, "duration"    # I

    .prologue
    .line 1694
    if-eqz p1, :cond_4

    if-nez p2, :cond_2b

    .line 1695
    :cond_4
    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not doing toast. pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " callback="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :goto_2a
    return-void

    .line 1699
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v13

    if-nez v13, :cond_3b

    const-string v13, "android"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6d

    :cond_3b
    const/4 v10, 0x1

    .line 1701
    .local v10, "isSystemToast":Z
    :goto_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_6f

    .line 1702
    if-nez v10, :cond_6f

    .line 1703
    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Suppressing toast from package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " by user request."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1699
    .end local v10    # "isSystemToast":Z
    :cond_6d
    const/4 v10, 0x0

    goto :goto_3c

    .line 1708
    .restart local v10    # "isSystemToast":Z
    :cond_6f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1709
    :try_start_74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1710
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_9b

    move-result-wide v4

    .line 1713
    .local v4, "callingId":J
    :try_start_7c
    invoke-direct/range {p0 .. p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v9

    .line 1716
    .local v9, "index":I
    if-ltz v9, :cond_9e

    .line 1717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 1718
    .local v12, "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    .line 1747
    :goto_91
    if-nez v9, :cond_96

    .line 1748
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_116

    .line 1751
    :cond_96
    :try_start_96
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1753
    monitor-exit v14

    goto :goto_2a

    .end local v4    # "callingId":J
    .end local v6    # "callingPid":I
    .end local v9    # "index":I
    .end local v12    # "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_9b
    move-exception v13

    monitor-exit v14
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_9b

    throw v13

    .line 1722
    .restart local v4    # "callingId":J
    .restart local v6    # "callingPid":I
    .restart local v9    # "index":I
    :cond_9e
    if-nez v10, :cond_f3

    .line 1723
    const/4 v7, 0x0

    .line 1724
    .local v7, "count":I
    :try_start_a1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1725
    .local v3, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_aa
    if-ge v8, v3, :cond_f3

    .line 1726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 1727
    .local v11, "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v13, v11, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 1728
    add-int/lit8 v7, v7, 0x1

    .line 1729
    const/16 v13, 0x32

    if-lt v7, v13, :cond_f0

    .line 1730
    const-string v13, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package has already posted "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " toasts. Not showing more. Package="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_a1 .. :try_end_ea} :catchall_116

    .line 1751
    :try_start_ea
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1732
    monitor-exit v14
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_9b

    goto/16 :goto_2a

    .line 1725
    :cond_f0
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    .line 1738
    .end local v3    # "N":I
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v11    # "r":Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_f3
    :try_start_f3
    new-instance v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v12, v6, v0, v1, v2}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 1739
    .restart local v12    # "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    .line 1741
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_114
    .catchall {:try_start_f3 .. :try_end_114} :catchall_116

    goto/16 :goto_91

    .line 1751
    .end local v9    # "index":I
    .end local v12    # "record":Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_116
    move-exception v13

    :try_start_117
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_9b
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 9
    .param p1, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v6, "NotificationManagerService.getActiveNotifications"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const/4 v2, 0x0

    .line 603
    .local v2, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 606
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x19

    invoke-virtual {v4, v5, v3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3c

    .line 608
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 609
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Landroid/service/notification/StatusBarNotification;

    .line 610
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 611
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    if-ge v1, v0, :cond_3b

    .line 612
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    aput-object v4, v2, v1

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 614
    :cond_3b
    monitor-exit v5

    .line 616
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3c
    return-object v2

    .line 614
    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_3d

    throw v4
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;)[Landroid/service/notification/StatusBarNotification;
    .registers 10
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v2

    .line 998
    .local v2, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    const/4 v6, 0x0

    new-array v4, v6, [Landroid/service/notification/StatusBarNotification;

    .line 999
    .local v4, "result":[Landroid/service/notification/StatusBarNotification;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1001
    :try_start_f
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1002
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_2e

    .line 1003
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v5, v6, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1004
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2, v5}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1005
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1008
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_36

    .line 1009
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/service/notification/StatusBarNotification;

    return-object v6

    .line 1008
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_36
    move-exception v6

    :try_start_37
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v6
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 627
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v4, "NotificationManagerService.getHistoricalNotifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 634
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    .line 636
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    monitor-enter v3

    .line 637
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v2, p2}, Lcom/android/server/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 638
    monitor-exit v3

    .line 640
    :cond_22
    return-object v0

    .line 638
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "req"    # I

    .prologue
    .line 2977
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2978
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2979
    .local v1, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v2, p2, :cond_9

    .line 2980
    new-instance v2, Landroid/app/NotificationInfo;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->commonValue:I

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->missedCount:I

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/NotificationInfo;-><init>(IILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    monitor-exit v3

    .line 2985
    .end local v1    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_47
    return-object v2

    .line 2984
    :cond_48
    monitor-exit v3

    .line 2985
    const/4 v2, 0x0

    goto :goto_47

    .line 2984
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method isCallerSystem()Z
    .registers 2

    .prologue
    .line 2710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method isUidSystem(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 2704
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2705
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_e

    if-nez p1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method rebindListenerServices()V
    .registers 21

    .prologue
    .line 702
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 703
    .local v6, "currentUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_notification_listeners"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 708
    .local v7, "flat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-object/from16 v16, v0

    .line 711
    .local v16, "toRemove":[Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 713
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-object/from16 v16, v0

    .line 715
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v15, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 717
    .local v12, "newEnabled":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 720
    .local v13, "newPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v7, :cond_86

    .line 721
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, "components":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5d
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_7e

    .line 723
    aget-object v17, v5, v8

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 725
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_7b

    .line 726
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_7b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    .line 732
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_7e
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    .line 733
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    .line 735
    .end local v5    # "components":[Ljava/lang/String;
    .end local v8    # "i":I
    :cond_86
    monitor-exit v18
    :try_end_87
    .catchall {:try_start_2f .. :try_end_87} :catchall_c7

    .line 737
    move-object/from16 v3, v16

    .local v3, "arr$":[Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_8b
    if-ge v9, v11, :cond_ca

    aget-object v10, v3, v9

    .line 738
    .local v10, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    iget-object v4, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    .line 739
    .restart local v4    # "component":Landroid/content/ComponentName;
    iget v14, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    .line 740
    .local v14, "oldUser":I
    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "disabling notification listener for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget v0, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/server/NotificationManagerService;->unregisterListenerService(Landroid/content/ComponentName;I)V

    .line 737
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 735
    .end local v3    # "arr$":[Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v9    # "i$":I
    .end local v10    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    .end local v11    # "len$":I
    .end local v12    # "newEnabled":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v13    # "newPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "oldUser":I
    .end local v15    # "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_c7
    move-exception v17

    :try_start_c8
    monitor-exit v18
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v17

    .line 744
    .restart local v3    # "arr$":[Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "newEnabled":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v13    # "newPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15    # "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_ca
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 745
    .local v2, "N":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_cf
    if-ge v8, v2, :cond_105

    .line 746
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 747
    .restart local v4    # "component":Landroid/content/ComponentName;
    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "enabling notification listener for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/NotificationManagerService;->registerListenerService(Landroid/content/ComponentName;I)V

    .line 745
    add-int/lit8 v8, v8, 0x1

    goto :goto_cf

    .line 751
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_105
    return-void
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 764
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 766
    :try_start_6
    new-instance v0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;-><init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;IZ)V

    .line 768
    .local v0, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 769
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_22
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1f

    .line 773
    .end local v0    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :goto_1d
    :try_start_1d
    monitor-exit v6

    .line 774
    return-void

    .line 773
    :catchall_1f
    move-exception v1

    monitor-exit v6
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v1

    .line 770
    :catch_22
    move-exception v1

    goto :goto_1d
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    .line 554
    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3c

    const-string v0, "en"

    :goto_10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "abling notifications for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0xb

    if-eqz p3, :cond_3f

    move v0, v2

    :goto_2c
    invoke-virtual {v1, v3, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 560
    if-nez p3, :cond_3b

    .line 561
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 563
    :cond_3b
    return-void

    .line 554
    :cond_3c
    const-string v0, "dis"

    goto :goto_10

    :cond_3f
    move v0, v4

    .line 556
    goto :goto_2c
.end method

.method systemReady()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1654
    const-string v4, "audio"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    .line 1658
    iput-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    .line 1661
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    .line 1665
    new-instance v3, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    .line 1666
    .local v3, "pickupObserver":Lcom/android/server/NotificationManagerService$PickupSettingsObserver;
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->observe()V

    .line 1670
    new-instance v4, Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-direct {v4, p0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    .line 1673
    :try_start_24
    const-string v4, "android.media.IRingtonePlayer"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1674
    .local v0, "classRingtonePlayer":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v5, v2, v4

    .line 1676
    .local v2, "parameterRingtonePlayer":[Ljava/lang/Class;
    const-string v4, "setOnCompletionListener"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_3a} :catch_46

    .line 1686
    .end local v0    # "classRingtonePlayer":Ljava/lang/Class;
    .end local v2    # "parameterRingtonePlayer":[Ljava/lang/Class;
    :goto_3a
    return-void

    .line 1678
    :catch_3b
    move-exception v1

    .line 1679
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_3a

    .line 1681
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_46
    move-exception v1

    .line 1682
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_3a
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 9
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "userid"    # I

    .prologue
    .line 865
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 866
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 867
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_38

    .line 868
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    .line 869
    .local v2, "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v3}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_35

    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v3, p2, :cond_35

    .line 871
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 872
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_35

    .line 873
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 867
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 877
    .end local v2    # "info":Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    :cond_38
    monitor-exit v4

    .line 878
    return-void

    .line 877
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v3
.end method
