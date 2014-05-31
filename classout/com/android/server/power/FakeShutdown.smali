.class public Lcom/android/server/power/FakeShutdown;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/FakeShutdown$SysSetting;,
        Lcom/android/server/power/FakeShutdown$Radio;
    }
.end annotation


# static fields
.field public static final ACTION_FAKE_SHUTDOWN:Ljava/lang/String; = "com.android.server.power.FakeShutdown"

.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x1

.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final AUTO_POWER_OFF_SOUND:Ljava/lang/String; = "//system/media/audio/ui/AutoPoweroff.ogg"

.field public static final BLACK_BLANK_ACTIVITY:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_FAKE_SHUTDOWN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON:I = 0x1

.field private static final CAMERA_APP_NAME:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final CAMERA_COMPONENT_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field private static final CPU_BOOSTING_TIMEOUT:I = 0xbb8

.field public static final DOWN_LOWLV:I = 0x2

.field public static final DOWN_START:I = 0x1

.field public static final NOTHING:I = 0x0

.field private static final PHONE_OFF_TIMEOUT:I = 0xa

.field private static final SETTING_DONT_CARE:I = -0x1

.field private static final SETTING_DONT_CARE_STRING:Ljava/lang/String; = "DONT CARE"

.field private static final SYS_PROP_FAKESTATE:Ljava/lang/String; = "sys.fakeShutdown.state"

.field private static final SYS_SETTING_OLD_AIRPLANE:Ljava/lang/String; = "oldAirplaneStatus"

.field private static final SYS_SETTING_OLD_LOCK_SOUND:Ljava/lang/String; = "oldLockScreenSoundStatus"

.field private static final SYS_SETTING_OLD_PEN_DETACHEMENT_OPTION:Ljava/lang/String; = "oldSPenDetatchmentOption"

.field private static final SYS_SETTING_OLD_PEN_NOTIFICATION:Ljava/lang/String; = "oldSPenNotification"

.field private static final TAG:Ljava/lang/String; = "FakeShutdown"

.field public static final UP_START:I = 0x3

.field private static final VIBE_NOWAIT:Z = false

.field private static final VIBE_WAIT:Z = true

.field private static final WARMBOOT_ANIM_PATH:Ljava/lang/String; = "/system/media/warmboot.qmg"

.field private static mAutoPowerOff:Z

.field private static mContext:Landroid/content/Context;

.field private static sFakeState:I

.field private static sFakeStateGuard:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/power/FakeShutdown;


# instance fields
.field private activitiesDoneSync:Ljava/lang/Object;

.field private autoPowerOffObserver:Landroid/os/UEventObserver;

.field private dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private mp:Landroid/media/MediaPlayer;

.field private soundThread:Ljava/lang/Thread;

.field private wakeupSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 98
    sput v1, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    .line 102
    sput-boolean v1, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlg"    # Lcom/android/server/power/ShutdownDialog;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->activitiesDoneSync:Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->wakeupSync:Ljava/lang/Object;

    .line 750
    new-instance v0, Lcom/android/server/power/FakeShutdown$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/FakeShutdown$1;-><init>(Lcom/android/server/power/FakeShutdown;)V

    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    .line 111
    sput-object p1, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    .line 112
    if-eqz p2, :cond_15

    .line 113
    iput-object p2, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 114
    :cond_15
    const-string v0, "AutoPowerOff"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    .line 115
    sput-object p0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    .line 116
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/FakeShutdown;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/FakeShutdown;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private bookSilentShutdownAfterHours(I)V
    .registers 6
    .param p1, "hours"    # I

    .prologue
    .line 592
    const-string v2, "FakeShutdown"

    const-string v3, "!@startObserving PMEVENT=AutoPowerOff"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v2, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    const-string v3, "PMEVENT=AutoPowerOff"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 594
    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 597
    .local v0, "alarmManager":Landroid/app/IAlarmManager;
    const/4 v2, 0x1

    mul-int/lit8 v3, p1, 0x3c

    :try_start_1b
    invoke-interface {v0, v2, v3}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 601
    :goto_1e
    return-void

    .line 598
    :catch_1f
    move-exception v1

    .line 599
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1e
.end method

.method private boostCpu()V
    .registers 8

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "cpuBooster":Landroid/os/DVFSHelper;
    new-instance v0, Landroid/os/DVFSHelper;

    .end local v0    # "cpuBooster":Landroid/os/DVFSHelper;
    sget-object v1, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v2, "AMS_CAMERA_LAUNCH_BOOST"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 397
    .restart local v0    # "cpuBooster":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 398
    .local v6, "coreTable":[I
    if-eqz v6, :cond_25

    .line 399
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 403
    :goto_1d
    if-eqz v0, :cond_24

    .line 404
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 406
    :cond_24
    return-void

    .line 401
    :cond_25
    const-string v1, "FakeShutdown"

    const-string v2, "coreTable is null"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public static bootup()Ljava/lang/Boolean;
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 135
    const-string v0, "FakeShutdown"

    const-string v1, "!@beginFastboot FAKE_STATE = UP_START"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_c
    sget-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    if-eqz v0, :cond_44

    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_44

    .line 138
    const/4 v0, 0x3

    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    .line 143
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_52

    .line 145
    sget-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    invoke-virtual {v0}, Lcom/android/server/power/FakeShutdown;->startBootup()V

    .line 148
    const-string v0, "FakeShutdown"

    const-string v1, "!@FAKE_STATE = NOTHING"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    const/4 v0, 0x0

    :try_start_29
    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    .line 151
    const-string/jumbo v0, "sys.fakeShutdown.state"

    const-string v2, "power_on"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_55

    .line 154
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    .line 155
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->cancelHandler()V

    .line 156
    sput-object v4, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    .line 157
    sput-object v4, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_43
    return-object v0

    .line 140
    :cond_44
    :try_start_44
    const-string v0, "FakeShutdown"

    const-string v2, "!@+++++++ duplicate fake bootup ++++++"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_43

    .line 143
    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_52

    throw v0

    .line 152
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method

.method private cancelSilentShutdown()V
    .registers 5

    .prologue
    .line 606
    :try_start_0
    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 608
    .local v0, "alarmManager":Landroid/app/IAlarmManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_15

    .line 612
    .end local v0    # "alarmManager":Landroid/app/IAlarmManager;
    :goto_f
    iget-object v2, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    invoke-virtual {v2}, Landroid/os/UEventObserver;->stopObserving()V

    .line 613
    return-void

    .line 609
    :catch_15
    move-exception v1

    .line 610
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_f
.end method

.method private checkCameraMode()Z
    .registers 9

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "cameraMode":Z
    :try_start_1
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.factory"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 433
    .local v3, "myContext":Landroid/content/Context;
    const-string v5, "di_test_prefs"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 436
    .local v2, "mPrefs":Landroid/content/SharedPreferences;
    const-string v5, "camera_auto_start_key"

    const-string v6, "ON"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "valueCameraAutoStartKey":Ljava/lang/String;
    const-string v5, "ON"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1e} :catch_2e

    move-result v5

    if-eqz v5, :cond_23

    .line 439
    const/4 v0, 0x1

    .line 448
    .end local v2    # "mPrefs":Landroid/content/SharedPreferences;
    .end local v3    # "myContext":Landroid/content/Context;
    .end local v4    # "valueCameraAutoStartKey":Ljava/lang/String;
    :goto_22
    return v0

    .line 441
    .restart local v2    # "mPrefs":Landroid/content/SharedPreferences;
    .restart local v3    # "myContext":Landroid/content/Context;
    .restart local v4    # "valueCameraAutoStartKey":Ljava/lang/String;
    :cond_23
    const/4 v0, 0x0

    goto :goto_22

    .line 443
    .end local v2    # "mPrefs":Landroid/content/SharedPreferences;
    .end local v3    # "myContext":Landroid/content/Context;
    .end local v4    # "valueCameraAutoStartKey":Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 444
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FakeShutdown"

    const-string v6, "checkCameraMode error"

    invoke-static {v5, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_22

    .line 445
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2e
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "FakeShutdown"

    const-string v6, "checkCameraMode error"

    invoke-static {v5, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_22
.end method

.method public static fakeState()I
    .registers 1

    .prologue
    .line 409
    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    return v0
.end method

.method private forceStopPackages()V
    .registers 11

    .prologue
    .line 491
    const-string v7, "FakeShutdown"

    const-string v8, "!@killRunningActivities"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v7, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 494
    .local v1, "am":Landroid/app/ActivityManager;
    const/16 v7, 0x64

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 495
    .local v4, "runningTaskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v0, "android"

    .line 496
    .local v0, "ANDROID_PACKAGE_NAME":Ljava/lang/String;
    if-eqz v4, :cond_cd

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, "baseActivityName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 499
    .local v6, "topActivityName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 500
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v5, :cond_23

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v7, :cond_23

    .line 503
    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 504
    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 505
    if-eqz v2, :cond_23

    if-eqz v6, :cond_23

    .line 509
    iget-boolean v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    if-nez v7, :cond_74

    const-string v7, "android"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 518
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 519
    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "topActivityName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_23

    .line 513
    :cond_74
    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip force stop package :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 522
    :cond_8e
    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "topActivityName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 524
    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "baseActivityName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 529
    .end local v2    # "baseActivityName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "topActivityName":Ljava/lang/String;
    :cond_cd
    return-void
.end method

.method private makeFrontAppIntent(Z)Landroid/content/Intent;
    .registers 6
    .param p1, "cameraMode"    # Z

    .prologue
    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    if-eqz p1, :cond_33

    .line 456
    const-string v2, "FakeShutdown"

    const-string v3, "!@launch camera"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v1, "mNewComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    const-string v2, "from-am"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    .end local v1    # "mNewComponent":Landroid/content/ComponentName;
    :goto_32
    return-object v0

    .line 463
    :cond_33
    const-string v2, "FakeShutdown"

    const-string v3, "!@launch home"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_32
.end method

.method private pauseAllActivities()V
    .registers 5

    .prologue
    .line 470
    const-string v2, "FakeShutdown"

    const-string v3, "!@am.goingToSleep"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    .line 473
    .local v1, "iam":Landroid/app/IActivityManager;
    if-eqz v1, :cond_18

    .line 475
    const/16 v2, 0x2710

    :try_start_15
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->fakeShutdown(I)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 480
    :cond_18
    :goto_18
    return-void

    .line 476
    :catch_19
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_18
.end method

.method private playAutoPowerOffSound()V
    .registers 2

    .prologue
    .line 785
    sget-boolean v0, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 786
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 788
    :cond_d
    return-void
.end method

.method private powerManagerFakeShutdown()V
    .registers 5

    .prologue
    .line 617
    const-string v2, "FakeShutdown"

    const-string v3, "!@powerManagerService.forceDisableWakeLock"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 621
    .local v1, "powerManagerService":Landroid/os/IPowerManager;
    const/4 v2, 0x1

    :try_start_12
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 625
    :goto_15
    return-void

    .line 622
    :catch_16
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15
.end method

.method private prepareAutoPowerOffSound()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 791
    new-instance v2, Ljava/io/File;

    const-string v6, "//system/media/audio/ui/AutoPoweroff.ogg"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    .local v2, "f":Ljava/io/File;
    sget-boolean v6, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-eqz v6, :cond_2b

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 793
    sget-object v6, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 795
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 796
    .local v5, "volume":I
    if-gez v5, :cond_2c

    .line 797
    const-string v6, "FakeShutdown"

    const-string v7, "!@Volume is not enough"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v5    # "volume":I
    :cond_2b
    :goto_2b
    return-void

    .line 801
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v5    # "volume":I
    :cond_2c
    const/4 v3, 0x0

    .line 803
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2d
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    .line 804
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_39} :catch_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_39} :catch_7e
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_39} :catch_93
    .catchall {:try_start_2d .. :try_end_39} :catchall_a8

    .line 805
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_39
    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 806
    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 807
    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 808
    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_53} :catch_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_53} :catch_c9
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_53} :catch_c6
    .catchall {:try_start_39 .. :try_end_53} :catchall_c3

    .line 818
    if-eqz v4, :cond_58

    .line 819
    :try_start_55
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_b9

    :cond_58
    :goto_58
    move-object v3, v4

    .line 825
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_59
    :goto_59
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/power/FakeShutdown$2;

    invoke-direct {v7, p0}, Lcom/android/server/power/FakeShutdown$2;-><init>(Lcom/android/server/power/FakeShutdown;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    goto :goto_2b

    .line 809
    :catch_66
    move-exception v1

    .line 810
    .local v1, "e":Ljava/io/IOException;
    :goto_67
    :try_start_67
    const-string v6, "FakeShutdown"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_a8

    .line 818
    if-eqz v3, :cond_59

    .line 819
    :try_start_70
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_59

    .line 820
    :catch_74
    move-exception v1

    .line 821
    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    :goto_7a
    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_59

    .line 811
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v1

    .line 812
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_7f
    :try_start_7f
    const-string v6, "FakeShutdown"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_a8

    .line 818
    if-eqz v3, :cond_59

    .line 819
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_59

    .line 820
    :catch_8c
    move-exception v1

    .line 821
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    goto :goto_7a

    .line 813
    .end local v1    # "e":Ljava/io/IOException;
    :catch_93
    move-exception v1

    .line 814
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_94
    :try_start_94
    const-string v6, "FakeShutdown"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_a8

    .line 818
    if-eqz v3, :cond_59

    .line 819
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_59

    .line 820
    :catch_a1
    move-exception v1

    .line 821
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    goto :goto_7a

    .line 817
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_a8
    move-exception v6

    .line 818
    :goto_a9
    if-eqz v3, :cond_ae

    .line 819
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 817
    :cond_ae
    :goto_ae
    throw v6

    .line 820
    :catch_af
    move-exception v1

    .line 821
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "FakeShutdown"

    const-string/jumbo v8, "sound file.close"

    invoke-static {v7, v8, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_ae

    .line 820
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_b9
    move-exception v1

    .line 821
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_58

    .line 817
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_c3
    move-exception v6

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_a9

    .line 813
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_c6
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_94

    .line 811
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_c9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_7f

    .line 809
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_cc
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_67
.end method

.method private removeRecentTask()V
    .registers 13

    .prologue
    .line 533
    const-string v9, "FakeShutdown"

    const-string v10, "!@RemoveRecentTasks"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v9, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 536
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v9, 0x14

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v8

    .line 538
    .local v8, "recentTasksList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v8, :cond_a4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_a4

    .line 539
    sget-object v9, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 540
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 545
    .local v2, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .line 546
    .local v6, "recentPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 547
    .local v5, "recentComponentName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 549
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 550
    .local v7, "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 552
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 553
    if-eqz v2, :cond_75

    iget-object v9, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    iget-object v9, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 556
    const-string v9, "FakeShutdown"

    const-string v10, "Don\'t remove homeActivity"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 557
    :cond_75
    const-string v9, "android"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 560
    const-string v9, "FakeShutdown"

    const-string v10, "Don\'t remove camera activity"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 563
    :cond_85
    const-string v9, "FakeShutdown"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoveRecentTasks +"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_41

    .line 569
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "recentComponentName":Ljava/lang/String;
    .end local v6    # "recentPackageName":Ljava/lang/String;
    .end local v7    # "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_a4
    return-void
.end method

.method public static restoreSuddenShutdown(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 379
    const-string v1, "FakeShutdown"

    const-string v2, "!@restoreAirplaneMode"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oldAirplaneStatus"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 383
    .local v0, "oldAirplaneStatus":I
    if-eq v0, v3, :cond_20

    .line 384
    invoke-static {p0, v0}, Lcom/android/server/power/FakeShutdown$Radio;->changeAirplaneMode(Landroid/content/Context;I)V

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oldAirplaneStatus"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    :cond_20
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreAll(Landroid/content/Context;)V

    .line 390
    return v0
.end method

.method public static shutdown(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dlg"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "FakeShutdown"

    const-string v1, "!@beginFakeShutdown, FAKE_STATE = DOWN_START"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    const/4 v0, 0x1

    :try_start_b
    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    .line 122
    const-string/jumbo v0, "sys.fakeShutdown.state"

    const-string v2, "power_off"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_31

    .line 125
    new-instance v0, Lcom/android/server/power/FakeShutdown;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/power/FakeShutdown;-><init>(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    .line 126
    sget-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    invoke-virtual {v0}, Lcom/android/server/power/FakeShutdown;->start()V

    .line 128
    const-string v0, "FakeShutdown"

    const-string v1, "!@FAKE_STATE = DOWN_LOWLV"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    const/4 v0, 0x2

    :try_start_2d
    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    .line 131
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_34

    .line 132
    return-void

    .line 123
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 131
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private startBlackBlankTopActivity()V
    .registers 4

    .prologue
    .line 483
    const-string v1, "FakeShutdown"

    const-string v2, "create fakeActivity"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_FAKE_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fake"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 487
    sget-object v1, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method private vibrate(IZ)V
    .registers 6
    .param p1, "milisec"    # I
    .param p2, "wait"    # Z

    .prologue
    .line 572
    if-gez p1, :cond_a

    .line 573
    const-string v1, "FakeShutdown"

    const-string v2, "!@vibe time under 0"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_9
    :goto_9
    return-void

    .line 578
    :cond_a
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    .line 579
    .local v0, "vibrator":Landroid/os/Vibrator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 581
    if-eqz p2, :cond_9

    .line 583
    int-to-long v1, p1

    :try_start_16
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_9

    .line 584
    :catch_1a
    move-exception v1

    goto :goto_9
.end method

.method private waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V
    .registers 6
    .param p1, "dlg"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 413
    const-string v2, "FakeShutdown"

    const-string v3, "!@start wait for shutdown anim, maximum 2 sec"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/16 v2, 0x14

    if-ge v0, v2, :cond_14

    .line 415
    invoke-virtual {p1}, Lcom/android/server/power/ShutdownDialog;->drawState()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1c

    .line 424
    :cond_14
    const-string v2, "FakeShutdown"

    const-string v3, "!@finish wait for shutdown anim"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 419
    :cond_1c
    const-wide/16 v2, 0x64

    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_24

    .line 414
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 420
    :catch_24
    move-exception v1

    .line 421
    .local v1, "unused":Ljava/lang/InterruptedException;
    const-string v2, "FakeShutdown"

    const-string/jumbo v3, "waitForAnimStart sleep error"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private waitForCamera()V
    .registers 9

    .prologue
    .line 628
    sget-object v6, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 630
    .local v0, "actM":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 631
    .local v3, "success":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const/16 v6, 0xc

    if-ge v1, v6, :cond_35

    .line 632
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 633
    .local v2, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 634
    .local v4, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, "topActivityName":Ljava/lang/String;
    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 636
    const-string v6, "FakeShutdown"

    const-string v7, "!@camera started"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v3, 0x1

    .line 647
    .end local v2    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    .end local v5    # "topActivityName":Ljava/lang/String;
    :cond_35
    if-nez v3, :cond_3e

    .line 648
    const-string v6, "FakeShutdown"

    const-string v7, "!@fail to launch camera"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3e
    return-void

    .line 640
    .restart local v2    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v4    # "topActivity":Landroid/content/ComponentName;
    .restart local v5    # "topActivityName":Ljava/lang/String;
    :cond_3f
    const-string v6, "FakeShutdown"

    const-string v7, "!@not yet"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-wide/16 v6, 0x1f4

    :try_start_48
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4e

    .line 631
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 643
    :catch_4e
    move-exception v6

    goto :goto_4b
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/server/power/FakeShutdown;->startShutdown()V

    .line 235
    return-void
.end method

.method public startBootup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 163
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 166
    .local v4, "powerManagerService":Landroid/os/IPowerManager;
    const/4 v5, 0x0

    :try_start_c
    invoke-interface {v4, v5}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_8f

    .line 172
    :goto_16
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/power/FakeShutdown$SysSetting;->prepareFakeShutdown(Landroid/content/Context;)V

    .line 175
    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->boostCpu()V

    .line 180
    const-string v5, "FakeShutdown"

    const-string v6, "playBootAnim"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownDialog;->prepareBootup()V

    .line 182
    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownDialog;->start()V

    .line 185
    const/16 v5, 0x1f4

    invoke-direct {p0, v5, v7}, Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V

    .line 188
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.power.FakeShutdown"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    :try_start_40
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_47} :catch_94

    .line 198
    :goto_47
    const/4 v1, 0x0

    .line 202
    .local v1, "cameraMode":Z
    invoke-direct {p0, v1}, Lcom/android/server/power/FakeShutdown;->makeFrontAppIntent(Z)Landroid/content/Intent;

    move-result-object v3

    .line 203
    .local v3, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/power/FakeShutdown$Radio;->on(Landroid/content/Context;)V

    .line 207
    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v5, :cond_61

    .line 209
    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 216
    :cond_61
    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v5, :cond_71

    .line 217
    const-string v5, "FakeShutdown"

    const-string v6, "!@anim dlg cancel"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownDialog;->cancel()V

    .line 221
    :cond_71
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->releaseWakeLocks()V

    .line 222
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreAll(Landroid/content/Context;)V

    .line 224
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 226
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string/jumbo v5, "shutdown"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->cancelSilentShutdown()V

    .line 229
    return-void

    .line 168
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "cameraMode":Z
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_8f
    move-exception v2

    .line 169
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16

    .line 194
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_94
    move-exception v2

    .line 195
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "FakeShutdown"

    const-string v6, "!@is service dead?"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_47
.end method

.method public startShutdown()V
    .registers 4

    .prologue
    .line 242
    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupAll(Landroid/content/Context;)V

    .line 243
    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->prepareFakeShutdown(Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0, v0}, Lcom/android/server/power/FakeShutdown;->waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V

    .line 247
    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->pauseAllActivities()V

    .line 248
    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->startBlackBlankTopActivity()V

    .line 249
    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->forceStopPackages()V

    .line 250
    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->removeRecentTask()V

    .line 252
    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/FakeShutdown$Radio;->off(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 259
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V

    .line 262
    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.power.FakeShutdown"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    const/16 v0, 0x960

    invoke-direct {p0, v0}, Lcom/android/server/power/FakeShutdown;->bookSilentShutdownAfterHours(I)V

    .line 270
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->stopState()V

    .line 271
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->enableShutdownAgain()V

    .line 273
    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->powerManagerFakeShutdown()V

    .line 274
    const-string v0, "FakeShutdown"

    const-string v1, "!@shutdown finished"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method
