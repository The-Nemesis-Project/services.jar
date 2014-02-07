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

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final POWER_STATE_ASLEEP:I = 0x2

.field private static final POWER_STATE_AWAKE:I = 0x1

.field private static final POWER_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private mActualPowerState:I

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
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V
    .registers 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p5, "screenOnBlocker"    # Lcom/android/server/power/ScreenOnBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/high16 v2, 0x50000000

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 487
    new-instance v0, Lcom/android/server/power/Notifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 504
    new-instance v0, Lcom/android/server/power/Notifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 560
    new-instance v0, Lcom/android/server/power/Notifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 112
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 113
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    .line 114
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 116
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 126
    const-string v0, "PowerManagerNotifier"

    const-string v1, "mBroadcastedPowerState = POWER_STATE_AWAKE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/Notifier;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/power/ScreenOnBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 397
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 398
    return-void
.end method

.method private static getBatteryStatsWakeLockMonitorType(I)I
    .registers 2
    .param p0, "flags"    # I

    .prologue
    .line 210
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_c

    .line 215
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 213
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 210
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
    .line 570
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wireless_charging_started_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "soundPath":Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 573
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

    .line 574
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_36

    .line 575
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 576
    .local v0, "sfx":Landroid/media/Ringtone;
    if-eqz v0, :cond_36

    .line 577
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 578
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 583
    .end local v0    # "sfx":Landroid/media/Ringtone;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_36
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 584
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

    .line 518
    const/4 v9, 0x2

    .line 519
    .local v9, "why":I
    packed-switch p1, :pswitch_data_78

    .line 533
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

    .line 535
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, v9}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 538
    const/16 v0, 0xaa5

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 542
    :try_start_35
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->goingToSleep()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_76

    .line 548
    :goto_3c
    const/16 v0, 0xaa5

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 551
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 552
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 558
    :goto_58
    return-void

    .line 521
    :pswitch_59
    const/4 v9, 0x1

    .line 522
    goto :goto_9

    .line 524
    :pswitch_5b
    const/4 v9, 0x3

    .line 525
    goto :goto_9

    .line 528
    :pswitch_5d
    const/4 v9, 0x4

    goto :goto_9

    .line 555
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

    .line 556
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_58

    .line 543
    :catch_76
    move-exception v0

    goto :goto_3c

    .line 519
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

    .line 414
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 415
    :try_start_5
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-nez v2, :cond_25

    .line 417
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 418
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 441
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 442
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 443
    .local v1, "powerState":I
    iget v0, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 444
    .local v0, "goToSleepReason":I
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_3c

    .line 446
    const/16 v2, 0xaa5

    invoke-static {v2, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 448
    if-ne v1, v6, :cond_5c

    .line 449
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 453
    .end local v0    # "goToSleepReason":I
    .end local v1    # "powerState":I
    :goto_24
    return-void

    .line 419
    :cond_25
    :try_start_25
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-ne v2, v6, :cond_44

    .line 421
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_35

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_35

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v4, :cond_3f

    .line 423
    :cond_35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 424
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_f

    .line 444
    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3c

    throw v2

    .line 426
    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 427
    monitor-exit v3

    goto :goto_24

    .line 431
    :cond_44
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_50

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_50

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v6, :cond_57

    .line 433
    :cond_50
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 434
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_f

    .line 436
    :cond_57
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 437
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_3c

    goto :goto_24

    .line 451
    .restart local v0    # "goToSleepReason":I
    .restart local v1    # "powerState":I
    :cond_5c
    invoke-direct {p0, v0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast(I)V

    goto :goto_24
.end method

.method private sendUserActivity()V
    .registers 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_9

    .line 403
    monitor-exit v1

    .line 409
    :goto_8
    return-void

    .line 405
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 406
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 408
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_8

    .line 406
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

    .line 460
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

    .line 462
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 465
    const/16 v0, 0x3f3

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 469
    :try_start_33
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3a} :catch_6c

    .line 475
    :goto_3a
    const/16 v0, 0x3f4

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 478
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 479
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 485
    :goto_54
    return-void

    .line 482
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

    .line 483
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_54

    .line 470
    :catch_6c
    move-exception v0

    goto :goto_3a
.end method

.method private updatePendingBroadcastLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 375
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

    .line 379
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 380
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 381
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 383
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2d
    return-void

    .line 386
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

    .line 323
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_4
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_1e

    .line 325
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 327
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v0, :cond_1b

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 329
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 331
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 333
    :cond_1e
    monitor-exit v1

    .line 334
    return-void

    .line 333
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
    .line 304
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_3
    iput p1, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
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
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 262
    :goto_5
    return-void

    .line 259
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onScreenOff()V
    .registers 2

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 247
    :goto_5
    return-void

    .line 244
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onScreenOn()V
    .registers 2

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 232
    :goto_5
    return-void

    .line 229
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onUserActivity(II)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_24

    .line 350
    :goto_5
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_1f

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 353
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1f
    monitor-exit v2

    .line 358
    return-void

    .line 357
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1

    .line 346
    :catch_24
    move-exception v1

    goto :goto_5
.end method

.method public onWakeLockAcquired(ILjava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Z)V
    .registers 15
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "flag"    # Z

    .prologue
    .line 149
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v4

    .line 150
    .local v4, "monitorType":I
    if-eqz p5, :cond_11

    .line 152
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p5

    move v2, p4

    move-object v3, p2

    move-object v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 168
    .end local v4    # "monitorType":I
    :goto_10
    return-void

    .line 159
    .restart local v4    # "monitorType":I
    :cond_11
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p3

    move v2, p4

    move-object v3, p2

    move-object v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_10

    .line 165
    .end local v4    # "monitorType":I
    :catch_1c
    move-exception v0

    goto :goto_10
.end method

.method public onWakeLockReleased(ILjava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Z)V
    .registers 15
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "flag"    # Z

    .prologue
    .line 188
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v4

    .line 189
    .local v4, "monitorType":I
    if-eqz p5, :cond_11

    .line 191
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p5

    move v2, p4

    move-object v3, p2

    move-object v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 207
    .end local v4    # "monitorType":I
    :goto_10
    return-void

    .line 198
    .restart local v4    # "monitorType":I
    :cond_11
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p3

    move v2, p4

    move-object v3, p2

    move-object v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_10

    .line 204
    .end local v4    # "monitorType":I
    :catch_1c
    move-exception v0

    goto :goto_10
.end method

.method public onWakeUpFinished()V
    .registers 1

    .prologue
    .line 294
    return-void
.end method

.method public onWakeUpStarted()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_4
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_1d

    .line 275
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 277
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    if-nez v0, :cond_1a

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    .line 279
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->acquire()V

    .line 281
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 283
    :cond_1d
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onWirelessChargingStarted()V
    .registers 4

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 369
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    return-void
.end method
