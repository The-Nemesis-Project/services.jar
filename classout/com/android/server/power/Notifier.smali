.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FORCE_RELEASE_SCREEN_ON_BLOCKER_TIMEOUT:I = 0x5dc

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_FORCE_RELEASE_SCREEN_ON_BLOCKER:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final POWER_STATE_ASLEEP:I = 0x2

.field private static final POWER_STATE_AWAKE:I = 0x1

.field private static final POWER_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private mActualPowerState:I

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedPowerState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private mLastGoToSleepReason:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingWakeUpBroadcast:Z

.field private mPersona:Landroid/os/PersonaManager;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

.field private mScreenOnBlockerAcquired:Z

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V
    .registers 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "screenOnBlocker"    # Lcom/android/server/power/ScreenOnBlocker;
    .param p7, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/high16 v2, 0x50000000

    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    .line 495
    new-instance v0, Lcom/android/server/power/Notifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 517
    new-instance v0, Lcom/android/server/power/Notifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 573
    new-instance v0, Lcom/android/server/power/Notifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 124
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 125
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 126
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 127
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    .line 128
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 130
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 140
    const-string v0, "PowerManagerNotifier"

    const-string v1, "mBroadcastedPowerState = POWER_STATE_AWAKE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/power/Notifier;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)Lcom/android/server/power/ScreenOnBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->forceReleaseScreenOnBlocker()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 405
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 406
    return-void
.end method

.method private forceReleaseScreenOnBlocker()V
    .registers 3

    .prologue
    .line 601
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending wakeup broadcast is delayed, screen on blocker is released by force!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_a
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    if-eqz v0, :cond_16

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    .line 605
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->release()V

    .line 607
    :cond_16
    monitor-exit v1

    .line 608
    return-void

    .line 607
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private static getBatteryStatsWakeLockMonitorType(I)I
    .registers 2
    .param p0, "flags"    # I

    .prologue
    .line 212
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_c

    .line 217
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 215
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 212
    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x20 -> :sswitch_9
    .end sparse-switch
.end method

.method private playWirelessChargingStartedSound()V
    .registers 6

    .prologue
    .line 583
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wireless_charging_started_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "soundPath":Ljava/lang/String;
    if-eqz v1, :cond_37

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 587
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_37

    .line 588
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 589
    .local v0, "sfx":Landroid/media/Ringtone;
    if-eqz v0, :cond_37

    .line 590
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 591
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 596
    .end local v0    # "sfx":Landroid/media/Ringtone;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_37
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 597
    return-void
.end method

.method private sendGoToSleepBroadcast(I)V
    .registers 12
    .param p1, "reason"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 531
    const/4 v9, 0x2

    .line 532
    .local v9, "why":I
    packed-switch p1, :pswitch_data_78

    .line 546
    :goto_9
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 548
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, v9}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 551
    const/16 v0, 0xaa5

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 555
    :try_start_35
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->goingToSleep()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_76

    .line 561
    :goto_3c
    const/16 v0, 0xaa5

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 564
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 565
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 571
    :goto_58
    return-void

    .line 534
    :pswitch_59
    const/4 v9, 0x1

    .line 535
    goto :goto_9

    .line 537
    :pswitch_5b
    const/4 v9, 0x3

    .line 538
    goto :goto_9

    .line 541
    :pswitch_5d
    const/4 v9, 0x4

    goto :goto_9

    .line 568
    :cond_5f
    const/16 v0, 0xaa7

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 569
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_58

    .line 556
    :catch_76
    move-exception v0

    goto :goto_3c

    .line 532
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_59
        :pswitch_5b
        :pswitch_5d
    .end packed-switch
.end method

.method private sendNextBroadcast()V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 422
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 423
    :try_start_5
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-nez v2, :cond_25

    .line 425
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 426
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 449
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 450
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 451
    .local v1, "powerState":I
    iget v0, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 452
    .local v0, "goToSleepReason":I
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_3c

    .line 454
    const/16 v2, 0xaa5

    invoke-static {v2, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 456
    if-ne v1, v6, :cond_5c

    .line 457
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 461
    .end local v0    # "goToSleepReason":I
    .end local v1    # "powerState":I
    :goto_24
    return-void

    .line 427
    :cond_25
    :try_start_25
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-ne v2, v6, :cond_44

    .line 429
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_35

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_35

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v4, :cond_3f

    .line 431
    :cond_35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 432
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_f

    .line 452
    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3c

    throw v2

    .line 434
    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 435
    monitor-exit v3

    goto :goto_24

    .line 439
    :cond_44
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_50

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_50

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v6, :cond_57

    .line 441
    :cond_50
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 442
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_f

    .line 444
    :cond_57
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 445
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_3c

    goto :goto_24

    .line 459
    .restart local v0    # "goToSleepReason":I
    .restart local v1    # "powerState":I
    :cond_5c
    invoke-direct {p0, v0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast(I)V

    goto :goto_24
.end method

.method private sendUserActivity()V
    .registers 3

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_9

    .line 411
    monitor-exit v1

    .line 417
    :goto_8
    return-void

    .line 413
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 414
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 416
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_8

    .line 414
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .registers 10

    .prologue
    const/16 v8, 0xaa5

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 468
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 470
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 473
    const/16 v0, 0x3f3

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 477
    :try_start_33
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3a} :catch_6c

    .line 483
    :goto_3a
    const/16 v0, 0x3f4

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 486
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 487
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 493
    :goto_54
    return-void

    .line 490
    :cond_55
    const/16 v0, 0xaa7

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 491
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_54

    .line 478
    :catch_6c
    move-exception v0

    goto :goto_3a
.end method

.method private updatePendingBroadcastLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 383
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v1, :cond_2e

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_17

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-eq v1, v2, :cond_2e

    .line 387
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 388
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 389
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 390
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2d
    return-void

    .line 394
    :cond_2e
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastInProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mActualPowerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mPendingWakeUpBroadcast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mPendingGoToSleepBroadcast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mBroadcastedPowerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method


# virtual methods
.method public onGoToSleepFinished()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 331
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_4
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_1e

    .line 333
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 335
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v0, :cond_1b

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 337
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 339
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 341
    :cond_1e
    monitor-exit v1

    .line 342
    return-void

    .line 341
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public onGoToSleepStarted(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_3
    iput p1, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 314
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public onScreenBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 264
    :goto_5
    return-void

    .line 261
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onScreenOff()V
    .registers 2

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 249
    :goto_5
    return-void

    .line 246
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onScreenOn()V
    .registers 2

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 234
    :goto_5
    return-void

    .line 231
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onUserActivity(II)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_24

    .line 358
    :goto_5
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_1f

    .line 360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 361
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 363
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1f
    monitor-exit v2

    .line 366
    return-void

    .line 365
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1

    .line 354
    :catch_24
    move-exception v1

    goto :goto_5
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    .line 162
    .local v6, "monitorType":I
    if-eqz p6, :cond_1a

    .line 163
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p6, p5, p2, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 171
    :goto_b
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    if-eqz v0, :cond_19

    .line 172
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    const/4 v1, 0x1

    move v2, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V

    .line 178
    .end local v6    # "monitorType":I
    :cond_19
    :goto_19
    return-void

    .line 165
    .restart local v6    # "monitorType":I
    :cond_1a
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p4, p5, p2, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_b

    .line 175
    .end local v6    # "monitorType":I
    :catch_2d
    move-exception v0

    goto :goto_19
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 193
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    .line 194
    .local v6, "monitorType":I
    if-eqz p6, :cond_1a

    .line 195
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p6, p5, p2, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 202
    :goto_b
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    if-eqz v0, :cond_19

    .line 203
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    const/4 v1, 0x0

    move v2, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V

    .line 209
    .end local v6    # "monitorType":I
    :cond_19
    :goto_19
    return-void

    .line 197
    .restart local v6    # "monitorType":I
    :cond_1a
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p4, p5, p2, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V

    .line 198
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_b

    .line 206
    .end local v6    # "monitorType":I
    :catch_2d
    move-exception v0

    goto :goto_19
.end method

.method public onWakeUpFinished()V
    .registers 1

    .prologue
    .line 302
    return-void
.end method

.method public onWakeUpStarted()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 275
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_4
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_25

    .line 277
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 279
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    if-nez v0, :cond_1a

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    .line 281
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->acquire()V

    .line 285
    :cond_1a
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 291
    :cond_25
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public onWirelessChargingStarted()V
    .registers 4

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 377
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void
.end method
