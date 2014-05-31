.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$SaveShutdownLog;,
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$Slog;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static MAX_LAST_SHUTDOWNLOG:I = 0x0

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final POWER_CONNECTED:I = 0x1

.field private static final POWER_DISCONNECTED:I = 0x0

.field private static final POWER_UNKNOWN:I = 0x2

.field private static final PRODUCTSHIP:I = 0x1

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final WITHOUT_SLEEP:Z = false

.field private static final WITH_SLEEP:Z = true

.field private static coverOpen:Z

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private static mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mSilent:Z

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 148
    const/4 v0, 0x5

    sput v0, Lcom/android/server/power/ShutdownThread;->MAX_LAST_SHUTDOWNLOG:I

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 155
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 156
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    .line 161
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    .line 170
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 412
    new-instance v0, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 192
    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .registers 2

    .prologue
    .line 1286
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1287
    :try_start_3
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 1288
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static IsShutDownStarted()Z
    .registers 3

    .prologue
    .line 1271
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1272
    :try_start_3
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_12

    .line 1273
    const-string v0, "ShutdownThread"

    const-string/jumbo v2, "shut down already running , return true"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v0, 0x1

    monitor-exit v1

    .line 1280
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_11

    .line 1282
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/android/server/power/ShutdownDialog;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$1600()I
    .registers 1

    .prologue
    .line 133
    sget v0, Lcom/android/server/power/ShutdownThread;->MAX_LAST_SHUTDOWNLOG:I

    return v0
.end method

.method static synthetic access$1700()Landroid/speech/tts/TextToSpeech;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$400()Lcom/samsung/android/cover/CoverManager$StateListener;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$700()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 601
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 602
    :try_start_6
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_13

    .line 603
    const-string v4, "ShutdownThread"

    const-string v6, "!@Shutdown sequence already running, returning."

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    monitor-exit v5

    .line 692
    :goto_12
    return-void

    .line 606
    :cond_13
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 607
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    .line 608
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_104

    .line 609
    const-string v5, "ShutdownThread"

    const-string v6, "!@beginShutdownSequence"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    .line 616
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 618
    :cond_3c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 619
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    if-eqz p1, :cond_49

    move v3, v4

    .line 621
    .local v3, "powerofftriggered":I
    :cond_49
    const-string v5, "powerofftriggered"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 624
    const-string v5, "isShutDownForRCS"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    :cond_5f
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 630
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "powerofftriggered":I
    :cond_62
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 631
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 634
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 636
    :try_start_76
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 638
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 639
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_94
    .catch Ljava/lang/SecurityException; {:try_start_76 .. :try_end_94} :catch_107

    .line 645
    :goto_94
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 647
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string/jumbo v4, "shutdown"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 651
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_d5

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v4, :cond_d5

    .line 653
    :try_start_b6
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 655
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 656
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_d5
    .catch Ljava/lang/SecurityException; {:try_start_b6 .. :try_end_d5} :catch_114

    .line 663
    :cond_d5
    :goto_d5
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sys.fakeshutdown : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sys.fakeshutdown"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v4, "ShutdownThread"

    const-string v5, "!@normal"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    .line 690
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startShutdownThread()V

    goto/16 :goto_12

    .line 608
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_104
    move-exception v4

    :try_start_105
    monitor-exit v5
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw v4

    .line 640
    :catch_107
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 642
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_94

    .line 657
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_114
    move-exception v1

    .line 658
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 659
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v7, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_d5
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 463
    const-wide/16 v1, 0x12c

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_a

    .line 467
    :goto_6
    invoke-static {p0, v3, v3}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 468
    return-void

    .line 464
    :catch_a
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_6
.end method

.method public static canGlobalActionsShow()Z
    .registers 1

    .prologue
    .line 1265
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static checkNeedToCheckTA(Landroid/content/Context;Z)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 695
    const-string v2, "AutoPowerOff"

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 696
    .local v0, "autoPowerOff":Z
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1a

    .line 705
    :cond_19
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x1

    goto :goto_19
.end method

.method private static createConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .registers 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "bodyText"    # I

    .prologue
    const v11, 0x1040013

    const v8, 0x1040009

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 343
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 344
    .local v1, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sput-boolean v10, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 345
    new-instance v3, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v3, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 346
    .local v3, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v3, :cond_21

    .line 347
    invoke-static {v3, p0}, Lcom/android/server/power/ShutdownThread;->getSCoverState(Lcom/samsung/android/cover/CoverManager;Landroid/content/Context;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    .line 348
    sget-object v7, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v3, v7}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 350
    :cond_21
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-eqz v7, :cond_69

    .line 352
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v5, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 355
    new-instance v7, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v7, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v11, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    const/4 v7, 0x0

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 364
    .local v4, "dlg":Landroid/app/Dialog;
    const-string v7, "keyguard"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 365
    .local v6, "kgm":Landroid/app/KeyguardManager;
    if-eqz v6, :cond_5f

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 366
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 406
    .end local v5    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "kgm":Landroid/app/KeyguardManager;
    :goto_59
    iput-object v4, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 407
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 409
    return-object v4

    .line 369
    .restart local v5    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    .restart local v6    # "kgm":Landroid/app/KeyguardManager;
    :cond_5f
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_59

    .line 374
    .end local v4    # "dlg":Landroid/app/Dialog;
    .end local v5    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "kgm":Landroid/app/KeyguardManager;
    :cond_69
    new-instance v5, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v5, "dlgBuilder":Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    invoke-virtual {v5, p2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 377
    invoke-virtual {v5, p1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 378
    new-instance v7, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v7, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v11, v7}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 386
    invoke-virtual {v5, v8, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 388
    invoke-virtual {v5}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v2

    .line 390
    .local v2, "coverDlg":Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x833

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_a1

    .line 394
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 397
    :cond_a1
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 399
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 400
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 401
    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 402
    invoke-virtual {v2, v9}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 403
    move-object v4, v2

    .restart local v4    # "dlg":Landroid/app/Dialog;
    goto :goto_59
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .registers 11
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1244
    const-string v1, "com.android.server.power.ShutdownOem"

    .line 1247
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_5} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_49

    move-result-object v0

    .line 1250
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_6
    const-string v5, "rebootOrShutdown"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1251
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_2d} :catch_37

    .line 1262
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_2d
    return-void

    .line 1252
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2e
    move-exception v3

    .line 1253
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2f
    const-string v5, "ShutdownThread"

    const-string v6, "!@call method fail rebootOrShutdown"

    invoke-static {v5, v6, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_36} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_49

    goto :goto_2d

    .line 1257
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_37
    move-exception v2

    .line 1258
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "ShutdownThread"

    const-string v6, "!@can\'t found class"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2d

    .line 1254
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_40
    move-exception v3

    .line 1255
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_41
    const-string v5, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v5, v6, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_48} :catch_37
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_2d

    .line 1259
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_49
    move-exception v2

    .line 1260
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2d
.end method

.method public static enableShutdownAgain()V
    .registers 2

    .prologue
    .line 1357
    const-string v0, "ShutdownThread"

    const-string v1, "!@enable calling shutdown again"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1359
    const/4 v0, 0x0

    :try_start_b
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 1360
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 1361
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 1362
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    .line 1363
    monitor-exit v1

    .line 1364
    return-void

    .line 1363
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static fakeShutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 532
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 533
    :try_start_5
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_12

    .line 534
    const-string v1, "ShutdownThread"

    const-string v3, "!@fakeShutdown : shut down already running."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    monitor-exit v2

    .line 563
    :goto_11
    return-void

    .line 537
    :cond_12
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->fakeState()I

    move-result v1

    if-eqz v1, :cond_24

    .line 538
    const-string v1, "ShutdownThread"

    const-string v3, "!@fakeShutdown : fakeshutdown already done"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v2

    goto :goto_11

    .line 541
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 543
    const-string v1, "ShutdownThread"

    const-string v2, "get cpulock while 2 secs"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 547
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 549
    :try_start_3c
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ShutdownThread-cpu"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 551
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 552
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_5c} :catch_7e

    .line 558
    :goto_5c
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 559
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 561
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 562
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_11

    .line 553
    :catch_7e
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ShutdownThread"

    const-string v2, "!@No permission to acquire wake lock"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 555
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5c
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .registers 11

    .prologue
    const/16 v10, 0x1b0

    const/4 v9, -0x1

    .line 1319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1322
    .local v2, "logFilename":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1326
    .local v1, "logBackupFileName":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1327
    .local v0, "fname":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1329
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x2800

    cmp-long v5, v5, v7

    if-lez v5, :cond_75

    .line 1330
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v3, "mBackupfname":Ljava/io/File;
    const-string v5, "ShutdownThread"

    const-string v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1334
    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_76

    .line 1336
    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    .end local v0    # "fname":Ljava/io/File;
    .end local v3    # "mBackupfname":Ljava/io/File;
    :cond_75
    :goto_75
    return-object v0

    .line 1341
    .restart local v0    # "fname":Ljava/io/File;
    .restart local v3    # "mBackupfname":Ljava/io/File;
    :cond_76
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1342
    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v4, "new_fname":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1345
    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1346
    goto :goto_75

    .line 1348
    .end local v4    # "new_fname":Ljava/io/File;
    :cond_9c
    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method private static getSCoverState(Lcom/samsung/android/cover/CoverManager;Landroid/content/Context;)Z
    .registers 5
    .param p0, "cm"    # Lcom/samsung/android/cover/CoverManager;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 332
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_10

    .line 333
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x1

    .line 336
    :goto_f
    return v1

    :cond_10
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    goto :goto_f
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1689
    const/16 v1, 0x3a

    .line 1690
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1692
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1695
    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1698
    .local v6, "enabledServicesSetting":Ljava/lang/String;
    if-nez v6, :cond_19

    .line 1699
    const-string v6, ""

    .line 1702
    :cond_19
    move-object v2, v7

    .line 1703
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1704
    :cond_1d
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 1705
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1706
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1708
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_1d

    .line 1709
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1710
    .local v4, "enabledPackage":Ljava/lang/String;
    if-eqz v5, :cond_1d

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1712
    const/4 v8, 0x1

    .line 1716
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledPackage":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :goto_3c
    return v8

    :cond_3d
    const/4 v8, 0x0

    goto :goto_3c
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 501
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 509
    :goto_7
    return-void

    .line 504
    :cond_8
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 506
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 507
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 508
    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_7
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 7
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1204
    const-string v3, "ShutdownThread"

    const-string v4, "!@call oem shutdown..."

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "!@"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v1, "reasonLogString":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_38

    const-string v3, "reboot : "

    :goto_15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    if-nez p1, :cond_3c

    const-string v3, "null"

    :goto_1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    const-string v3, "ShutdownThread"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    if-eqz p0, :cond_47

    .line 1216
    :try_start_2a
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_3e

    .line 1238
    :cond_2d
    :goto_2d
    const-string v3, "ShutdownThread"

    const-string v4, "!@Performing low-level shutdown..."

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 1240
    return-void

    .line 1209
    :cond_38
    const-string/jumbo v3, "shutdown : "

    goto :goto_15

    :cond_3c
    move-object v3, p1

    .line 1210
    goto :goto_1c

    .line 1217
    :catch_3e
    move-exception v0

    .line 1218
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ShutdownThread"

    const-string v4, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2d

    .line 1220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_47
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v3, :cond_2d

    .line 1222
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2}, Landroid/os/SystemVibrator;-><init>()V

    .line 1224
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x1f4

    :try_start_52
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_5d

    .line 1232
    :goto_55
    const-wide/16 v3, 0x1f4

    :try_start_57
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_2d

    .line 1233
    :catch_5b
    move-exception v3

    goto :goto_2d

    .line 1225
    :catch_5d
    move-exception v0

    .line 1227
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "ShutdownThread"

    const-string v4, "!@Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_55
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v4, 0x1

    .line 580
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 598
    :goto_7
    return-void

    .line 585
    :cond_8
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 587
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v1

    if-nez v1, :cond_22

    .line 588
    const-string v1, "ShutdownThread"

    const-string v2, "SAFE MODE is not allowed"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 593
    :cond_22
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot safe reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", confirm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 595
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 596
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 597
    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_7
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 573
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 577
    :goto_6
    return-void

    .line 576
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_6
.end method

.method public static releaseWakeLocks()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1367
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 1368
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1369
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1371
    :cond_c
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    .line 1372
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1373
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1375
    :cond_17
    return-void
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sleep"    # Z

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 472
    if-eqz p1, :cond_b

    .line 474
    const-wide/16 v1, 0x12c

    :try_start_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    .line 479
    :cond_b
    :goto_b
    return-void

    .line 475
    :catch_c
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_b
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .registers 11
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1292
    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    .line 1294
    .local v2, "fname":Ljava/io/File;
    const/4 v4, 0x0

    .line 1296
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_5e
    .catchall {:try_start_c .. :try_end_12} :catchall_57

    .line 1297
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_12
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1298
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1303
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1304
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_50} :catch_77
    .catchall {:try_start_12 .. :try_end_50} :catchall_74

    .line 1308
    if-eqz v5, :cond_55

    .line 1310
    :try_start_52
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_6f

    :cond_55
    :goto_55
    move-object v4, v5

    .line 1316
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_56
    :goto_56
    return-void

    .line 1308
    :catchall_57
    move-exception v7

    :goto_58
    if-eqz v4, :cond_5d

    .line 1310
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_6a

    .line 1308
    :cond_5d
    :goto_5d
    throw v7

    .line 1305
    :catch_5e
    move-exception v7

    .line 1308
    :goto_5f
    if-eqz v4, :cond_56

    .line 1310
    :try_start_61
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_56

    .line 1311
    :catch_65
    move-exception v1

    .line 1312
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 1311
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6a
    move-exception v1

    .line 1312
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 1311
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "dateString":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_6f
    move-exception v1

    .line 1312
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 1308
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :catchall_74
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_58

    .line 1305
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_77
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_5f
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "suppressCoverUI"    # Z
    .param p2, "miniModeUI"    # Z

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 487
    const-string v1, "sender"

    const-string v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    return-void
.end method

.method static setInputKeysDisable(Z)V
    .registers 6
    .param p0, "bool"    # Z

    .prologue
    .line 1673
    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 1675
    .local v1, "im":Landroid/hardware/input/IInputManager;
    if-nez v1, :cond_25

    .line 1676
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :goto_24
    return-void

    .line 1680
    :cond_25
    :try_start_25
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_40} :catch_41

    goto :goto_24

    .line 1682
    :catch_41
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_24
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 218
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 219
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 220
    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 221
    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 206
    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 207
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 208
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .registers 13
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "systemRequest"    # Z

    .prologue
    const/4 v9, 0x2

    .line 239
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 240
    :try_start_4
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_11

    .line 241
    const-string v6, "ShutdownThread"

    const-string v8, "!@Request to shutdown already running, returning."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v7

    .line 328
    :cond_10
    :goto_10
    return-void

    .line 245
    :cond_11
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v6, :cond_23

    if-eqz p1, :cond_23

    .line 246
    const-string v6, "ShutdownThread"

    const-string v8, "!@duplicate shutdown confirm dialog request."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v7

    goto :goto_10

    .line 267
    :catchall_20
    move-exception v6

    monitor-exit v7
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v6

    .line 253
    :cond_23
    :try_start_23
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_2b

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v6, :cond_48

    .line 254
    :cond_2b
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 255
    .local v4, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_48

    .line 256
    if-nez p2, :cond_48

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_48

    .line 257
    const-string v6, "ShutdownThread"

    const-string v8, "Shutdown Disabled by Administrator"

    invoke-static {v6, v8}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_45} :catch_47
    .catchall {:try_start_23 .. :try_end_45} :catchall_20

    .line 258
    :try_start_45
    monitor-exit v7

    goto :goto_10

    .line 262
    .end local v4    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :catch_47
    move-exception v6

    .line 266
    :cond_48
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    .line 267
    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_20

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v7, 0x258

    if-lt v6, v7, :cond_c3

    .line 273
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v6, 0x103012b

    invoke-direct {v1, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 282
    .local v1, "context":Landroid/content/Context;
    :goto_62
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    .line 285
    if-eqz p1, :cond_f0

    .line 286
    const-string v6, "ShutdownThread"

    const-string v7, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 292
    .local v3, "longPressBehavior":I
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_cc

    .line 293
    const v0, 0x10401b8

    .line 304
    .local v0, "bodyText":I
    :goto_87
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_a8

    .line 307
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 311
    :cond_a8
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_e4

    .line 312
    const v5, 0x10401b7

    .line 318
    .local v5, "titleText":I
    :goto_af
    invoke-static {v1, v5, v0}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v6

    sput-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    .line 319
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 321
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v6, :cond_10

    .line 322
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->blackMiniModeBar(Landroid/content/Context;)V

    goto/16 :goto_10

    .line 278
    .end local v0    # "bodyText":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "longPressBehavior":I
    .end local v5    # "titleText":I
    :cond_c3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v6, 0x1030128

    invoke-direct {v1, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_62

    .line 294
    .restart local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "longPressBehavior":I
    :cond_cc
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_da

    .line 295
    if-ne v3, v9, :cond_d6

    const v0, 0x10401b6

    .restart local v0    # "bodyText":I
    :goto_d5
    goto :goto_87

    .end local v0    # "bodyText":I
    :cond_d6
    const v0, 0x10401b4

    goto :goto_d5

    .line 299
    :cond_da
    if-ne v3, v9, :cond_e0

    const v0, 0x10401b5

    .restart local v0    # "bodyText":I
    :goto_df
    goto :goto_87

    .end local v0    # "bodyText":I
    :cond_e0
    const v0, 0x10401b3

    goto :goto_df

    .line 313
    .restart local v0    # "bodyText":I
    :cond_e4
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_ec

    .line 314
    const v5, 0x10401be

    .restart local v5    # "titleText":I
    goto :goto_af

    .line 316
    .end local v5    # "titleText":I
    :cond_ec
    const v5, 0x10401bd

    .restart local v5    # "titleText":I
    goto :goto_af

    .line 325
    .end local v0    # "bodyText":I
    .end local v3    # "longPressBehavior":I
    .end local v5    # "titleText":I
    :cond_f0
    const-string v6, "ShutdownThread"

    const-string v7, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    goto/16 :goto_10
.end method

.method private shutdownRadios(ILandroid/content/Context;Z)V
    .registers 15
    .param p1, "timeout"    # I
    .param p2, "con"    # Landroid/content/Context;
    .param p3, "reboot"    # Z

    .prologue
    .line 931
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v3, v7, v9

    .line 932
    .local v3, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 933
    .local v5, "done":[Z
    const/16 v6, 0x1f4

    .line 934
    .local v6, "PHONE_STATE_POLL_SLEEP_MSEC":I
    iput-object p2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 935
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 936
    .local v2, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Lcom/android/server/power/ShutdownThread$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V

    .line 1186
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1188
    int-to-long v7, p1

    :try_start_23
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_33

    .line 1191
    :goto_26
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_32

    .line 1192
    const-string v1, "ShutdownThread"

    const-string v7, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_32
    return-void

    .line 1189
    :catch_33
    move-exception v1

    goto :goto_26
.end method

.method public static silentShutdown(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 517
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    .line 518
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 519
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 520
    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 521
    return-void
.end method

.method private static startFakeShutdown(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 710
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 711
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepareFakeShutdown()V

    .line 712
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 713
    const-string v0, "ShutdownThread"

    const-string v1, "mNeedFake, start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown;->shutdown(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 759
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 760
    .local v0, "pd":Landroid/app/ProgressDialog;
    const v1, 0x10401ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 761
    const v1, 0x10401b2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 762
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 763
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 764
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 766
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 767
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 769
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 770
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 771
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 773
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 774
    return-void
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 719
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 720
    const-string v0, "ShutdownThread"

    const-string v1, "normal shutdown thread will start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 723
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 724
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    .line 725
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 731
    :goto_27
    return-void

    .line 728
    :cond_28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 729
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_27
.end method

.method private static startShutdownThread()V
    .registers 6

    .prologue
    .line 734
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 736
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 738
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "System shutting down."

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 743
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 744
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 753
    :cond_3e
    return-void
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 225
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 226
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 228
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    .line 229
    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1720
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v1, p1}, Lcom/android/server/power/ShutdownThread$10;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1735
    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 779
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 780
    monitor-exit v1

    .line 781
    return-void

    .line 780
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method actionDoneMount()V
    .registers 3

    .prologue
    .line 784
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    .line 785
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    .line 786
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 787
    monitor-exit v1

    .line 788
    return-void

    .line 787
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 24

    .prologue
    .line 795
    const/16 v21, 0x0

    .line 796
    .local v21, "saveShutdownLog":Ljava/lang/Thread;
    const-string v2, "eng"

    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v2, :cond_1f

    .line 797
    new-instance v21, Lcom/android/server/power/ShutdownThread$SaveShutdownLog;

    .end local v21    # "saveShutdownLog":Ljava/lang/Thread;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread$SaveShutdownLog;-><init>(Lcom/android/server/power/ShutdownThread$1;)V

    .line 798
    .restart local v21    # "saveShutdownLog":Ljava/lang/Thread;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 801
    :cond_1f
    # invokes: Lcom/android/server/power/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->access$1100()V

    .line 802
    new-instance v6, Lcom/android/server/power/ShutdownThread$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 814
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v22, Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_173

    const-string v2, "1"

    :goto_31
    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    .local v22, "sb":Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_45

    .line 816
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :cond_45
    const-string/jumbo v2, "sys.shutdown.requested"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_5a

    .line 825
    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_5a
    const-string v2, "ShutdownThread"

    const-string v4, "!@Sending shutdown broadcast..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 831
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 837
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_177

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long v17, v4, v7

    .line 843
    .local v17, "endTime":J
    :goto_92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 844
    :goto_97
    :try_start_97
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_b0

    .line 845
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v17, v7

    .line 846
    .local v12, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_182

    .line 847
    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown broadcast timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v12    # "delay":J
    :cond_b0
    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_18e

    .line 856
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down activity manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 859
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_c9

    .line 861
    const/16 v2, 0x2710

    :try_start_c6
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_c9} :catch_1be

    .line 867
    :cond_c9
    :goto_c9
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V

    .line 869
    const-string v2, "ShutdownThread"

    const-string/jumbo v4, "waitForAnimEnd"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    sget-object v2, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v2, :cond_ec

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v2, :cond_ec

    .line 872
    sget-object v2, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 876
    :cond_ec
    new-instance v20, Lcom/android/server/power/ShutdownThread$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 883
    .local v20, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down MountService"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x7530

    add-long v15, v4, v7

    .line 888
    .local v15, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v4

    .line 890
    :try_start_10e
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v19

    .line 892
    .local v19, "mount":Landroid/os/storage/IMountService;
    if-eqz v19, :cond_191

    .line 893
    invoke-interface/range {v19 .. v20}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_11d} :catch_199
    .catchall {:try_start_10e .. :try_end_11d} :catchall_1a3

    .line 900
    .end local v19    # "mount":Landroid/os/storage/IMountService;
    :goto_11d
    :try_start_11d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_15c

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v15, v7

    .line 902
    .restart local v12    # "delay":J
    const-string v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@MountService delay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", systemTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_1a6

    .line 904
    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown wait timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v12    # "delay":J
    :cond_15c
    monitor-exit v4
    :try_end_15d
    .catchall {:try_start_11d .. :try_end_15d} :catchall_1a3

    .line 915
    const-string v2, "power_off=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 917
    if-eqz v21, :cond_16b

    .line 919
    const-wide/16 v4, 0x7d0

    :try_start_166
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_16b
    .catch Ljava/lang/InterruptedException; {:try_start_166 .. :try_end_16b} :catch_1b5

    .line 925
    :cond_16b
    :goto_16b
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 926
    return-void

    .line 814
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v15    # "endShutTime":J
    .end local v17    # "endTime":J
    .end local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_173
    const-string v2, "0"

    goto/16 :goto_31

    .line 840
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v7, 0x13880

    add-long v17, v4, v7

    .restart local v17    # "endTime":J
    goto/16 :goto_92

    .line 851
    .restart local v12    # "delay":J
    :cond_182
    :try_start_182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_189
    .catch Ljava/lang/InterruptedException; {:try_start_182 .. :try_end_189} :catch_18b
    .catchall {:try_start_182 .. :try_end_189} :catchall_18e

    goto/16 :goto_97

    .line 852
    :catch_18b
    move-exception v2

    goto/16 :goto_97

    .line 855
    .end local v12    # "delay":J
    :catchall_18e
    move-exception v2

    :try_start_18f
    monitor-exit v4
    :try_end_190
    .catchall {:try_start_18f .. :try_end_190} :catchall_18e

    throw v2

    .line 895
    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v15    # "endShutTime":J
    .restart local v19    # "mount":Landroid/os/storage/IMountService;
    .restart local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_191
    :try_start_191
    const-string v2, "ShutdownThread"

    const-string v5, "!@MountService unavailable for shutdown"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_198} :catch_199
    .catchall {:try_start_191 .. :try_end_198} :catchall_1a3

    goto :goto_11d

    .line 897
    .end local v19    # "mount":Landroid/os/storage/IMountService;
    :catch_199
    move-exception v14

    .line 898
    .local v14, "e":Ljava/lang/Exception;
    :try_start_19a
    const-string v2, "ShutdownThread"

    const-string v5, "!@Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_11d

    .line 913
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1a3
    move-exception v2

    monitor-exit v4
    :try_end_1a5
    .catchall {:try_start_19a .. :try_end_1a5} :catchall_1a3

    throw v2

    .line 908
    .restart local v12    # "delay":J
    :cond_1a6
    :try_start_1a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_1ad
    .catch Ljava/lang/InterruptedException; {:try_start_1a6 .. :try_end_1ad} :catch_1af
    .catchall {:try_start_1a6 .. :try_end_1ad} :catchall_1a3

    goto/16 :goto_11d

    .line 909
    :catch_1af
    move-exception v14

    .line 910
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_1b0
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1b3
    .catchall {:try_start_1b0 .. :try_end_1b3} :catchall_1a3

    goto/16 :goto_11d

    .line 920
    .end local v12    # "delay":J
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :catch_1b5
    move-exception v14

    .line 921
    .restart local v14    # "e":Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string v4, "error on saveShutdownLog"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16b

    .line 862
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v15    # "endShutTime":J
    .end local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :catch_1be
    move-exception v2

    goto/16 :goto_c9
.end method
