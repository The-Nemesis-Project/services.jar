.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$TimaServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field private static final PACKAGE_KNOX_AGENT:Ljava/lang/String; = "com.sec.knox.seandroid"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_DUMP_LOG_EXEC:Ljava/lang/String; = "/system/bin/tima_dump_log -s 20 -d 40 -o "

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0x493e0

    .line 177
    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    .line 180
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    .line 181
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "TimaService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 182
    .local v7, "timaThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 183
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 184
    .local v6, "timaLooper":Landroid/os/Looper;
    if-eqz v6, :cond_4f

    .line 185
    new-instance v0, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    .line 191
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimer:Ljava/util/Timer;

    .line 192
    new-instance v0, Lcom/android/server/TimaService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimerTask:Ljava/util/TimerTask;

    .line 200
    iget-object v0, p0, Lcom/android/server/TimaService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/TimaService;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 203
    invoke-virtual {p0}, Lcom/android/server/TimaService;->ccmLoadTZApp()I

    .line 205
    invoke-virtual {p0}, Lcom/android/server/TimaService;->ccmLoadServer()I

    .line 207
    const-string v0, "TimaService"

    const-string v1, "TIMA: Start TimaService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_4e
    return-void

    .line 187
    :cond_4f
    const-string v0, "TimaService"

    const-string v1, "Failed getting looper for TimaServiceHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method static synthetic access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TimaService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static native ccm_generate_csr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
.end method

.method static native ccm_install_object(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
.end method

.method static native ccm_load_tz_app()I
.end method

.method static native ccm_register_for_default_cert(ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private enforcePermission()Z
    .registers 3

    .prologue
    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 523
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    .line 524
    const/4 v1, 0x1

    .line 527
    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private initCCMDatabase()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 550
    const-string v3, "TimaService"

    const-string v4, "TIMA: in initCCMDatabase"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/misc/tz_ccm"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "dbDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    .line 555
    const-string v3, "TimaService"

    const-string v4, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 557
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 558
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 562
    :cond_29
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/misc/tz_ccm/key_db"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v1, "dbFile":Ljava/io/File;
    const-string v3, "TimaService"

    const-string v4, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 566
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3f} :catch_40

    .line 572
    .end local v0    # "dbDir":Ljava/io/File;
    .end local v1    # "dbFile":Ljava/io/File;
    :goto_3f
    return v5

    .line 567
    :catch_40
    move-exception v2

    .line 568
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "TimaService"

    const-string v4, "Exception in initCCMDatabase"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f
.end method

.method static native timaAttestation([B)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private validateRequest(II)Z
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "subCode"    # I

    .prologue
    .line 211
    const/4 v0, 0x1

    .line 212
    .local v0, "ret":Z
    const v1, 0xc350

    if-eq p1, v1, :cond_b

    const v1, 0xc351

    if-ne p1, v1, :cond_13

    :cond_b
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_14

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_14

    .line 216
    :cond_13
    const/4 v0, 0x0

    .line 218
    :cond_14
    return v0
.end method


# virtual methods
.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 367
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 370
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 364
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 334
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 337
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 340
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 334
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 347
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result-object v0

    .line 350
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 344
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 354
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 357
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d

    move-result-wide v0

    .line 360
    :goto_18
    monitor-exit p0

    return-wide v0

    :cond_1a
    const-wide/16 v0, -0x1

    goto :goto_18

    .line 354
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_init()I
    .registers 3

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 318
    invoke-static {}, Lcom/android/server/TimaService;->tima_KeyStore3_init()I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 321
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_18

    .line 315
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    .line 325
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 328
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 330
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_18

    .line 325
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_saw"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 377
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_2d

    .line 379
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2f

    .line 382
    .end local v0    # "tmp":[Ljava/lang/Object;
    :goto_2b
    monitor-exit p0

    return-object v1

    :cond_2d
    const/4 v1, 0x0

    goto :goto_2b

    .line 374
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attestation([B)[B
    .registers 4
    .param p1, "nonce"    # [B

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: attestation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p1}, Lcom/android/server/TimaService;->timaAttestation([B)[B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 303
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ccmGenerateCSR(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 8
    .param p1, "uid"    # I
    .param p2, "tok_name"    # Ljava/lang/String;
    .param p3, "tok_pwd"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "isTrustedBootRequired"    # Z

    .prologue
    .line 577
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: in ccmGenerateCSR"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    .line 581
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 582
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/TimaService;->ccm_generate_csr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 585
    :goto_1b
    monitor-exit p0

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 577
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ccmInstallObject(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .registers 11
    .param p1, "uid"    # I
    .param p2, "tokenName"    # Ljava/lang/String;
    .param p3, "tokenPassword"    # Ljava/lang/String;
    .param p4, "objAlias"    # Ljava/lang/String;
    .param p5, "objType"    # I
    .param p6, "objData"    # [B
    .param p7, "objPassword"    # Ljava/lang/String;
    .param p8, "isTrustedBootRequired"    # Z

    .prologue
    .line 626
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: in ccmInstallObject"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    .line 630
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 631
    invoke-static/range {p1 .. p8}, Lcom/android/server/TimaService;->ccm_install_object(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    move-result v0

    .line 636
    :goto_1b
    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1b

    .line 626
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ccmLoadServer()I
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 650
    monitor-enter p0

    :try_start_2
    const-string v3, "TimaService"

    const-string v4, "TIMA3: in ccmLoadServer"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 654
    const-string v3, "CCM"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 655
    .local v0, "ccmBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_26

    .line 656
    const-string v3, "TimaService"

    const-string v4, "TIMA3: tlc_server already loaded"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_38

    .line 669
    .end local v0    # "ccmBinder":Landroid/os/IBinder;
    :cond_24
    :goto_24
    monitor-exit p0

    return v2

    .line 662
    .restart local v0    # "ccmBinder":Landroid/os/IBinder;
    :cond_26
    :try_start_26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/bin/tlc_server"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_31
    .catchall {:try_start_26 .. :try_end_2f} :catchall_38

    .line 666
    const/4 v2, 0x0

    goto :goto_24

    .line 663
    :catch_31
    move-exception v1

    .line 664
    .local v1, "e":Ljava/io/IOException;
    :try_start_32
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_38

    .line 650
    .end local v0    # "ccmBinder":Landroid/os/IBinder;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized ccmLoadTZApp()I
    .registers 3

    .prologue
    .line 640
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: in ccmLoadTZApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 643
    invoke-static {}, Lcom/android/server/TimaService;->ccm_load_tz_app()I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result v0

    .line 646
    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_18

    .line 640
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 11
    .param p1, "uid"    # I
    .param p2, "regPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "isTrustedBootRequired"    # Z

    .prologue
    .line 592
    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    const-string v2, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_11

    .line 596
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 598
    :cond_11
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "tima"

    const-string v5, "ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_73

    .line 601
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ccmRegisterForDefaultCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tima"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_70

    .line 592
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_70
    move-exception v1

    monitor-exit p0

    throw v1

    .line 612
    :cond_73
    :try_start_73
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    .line 614
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 615
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->ccm_register_for_default_cert(ILjava/lang/String;Ljava/lang/String;Z)I
    :try_end_85
    .catchall {:try_start_73 .. :try_end_85} :catchall_70

    move-result v1

    .line 619
    :goto_86
    monitor-exit p0

    return v1

    :cond_88
    const/4 v1, -0x1

    goto :goto_86
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .registers 7
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkEvent, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/TimaService;->mPowerManager:Landroid/os/PowerManager;

    .line 226
    iget-object v1, p0, Lcom/android/server/TimaService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "TimaService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->validateRequest(II)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_55

    move-result v1

    if-nez v1, :cond_43

    const/4 v0, 0x0

    .line 236
    :goto_41
    monitor-exit p0

    return-object v0

    .line 230
    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 231
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaCheckEvent(II)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "timaResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/server/TimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_55

    goto :goto_41

    .line 222
    .end local v0    # "timaResult":Ljava/lang/String;
    :catchall_55
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .registers 7
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 240
    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkHistory, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->validateRequest(II)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    move-result v1

    if-nez v1, :cond_2c

    .line 244
    const/4 v0, 0x0

    .line 249
    :goto_2a
    monitor-exit p0

    return-object v0

    .line 247
    :cond_2c
    :try_start_2c
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaCheckHistory(II)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "timaResult":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/TimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_2a

    .line 240
    .end local v0    # "timaResult":Ljava/lang/String;
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public displayEvent(Ljava/lang/String;)V
    .registers 24
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-nez p1, :cond_1f

    .line 515
    :goto_1e
    return-void

    .line 395
    :cond_1f
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    sget v20, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_32

    .line 396
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 400
    :cond_32
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4e

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    .line 402
    const-string v19, "TimaService"

    const-string v20, "Reporting violation to ISL"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4e} :catch_be

    .line 409
    :cond_4e
    :goto_4e
    const-string v18, " "

    .line 411
    .local v18, "time":Ljava/lang/String;
    :try_start_50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5b} :catch_c7

    move-result-object v18

    .line 415
    :goto_5c
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v19, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 419
    .local v15, "statusIdx":I
    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 420
    .local v14, "sepIdx":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_a0

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_d1

    .line 421
    :cond_a0
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 404
    .end local v14    # "sepIdx":I
    .end local v15    # "statusIdx":I
    .end local v18    # "time":Ljava/lang/String;
    :catch_be
    move-exception v8

    .line 405
    .local v8, "e":Landroid/os/RemoteException;
    const-string v19, "TimaService"

    const-string v20, "Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 412
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v18    # "time":Ljava/lang/String;
    :catch_c7
    move-exception v8

    .line 413
    .local v8, "e":Ljava/lang/Exception;
    const-string v19, "TimaService"

    const-string/jumbo v20, "toLocalString() exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 426
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v14    # "sepIdx":I
    .restart local v15    # "statusIdx":I
    :cond_d1
    const-string v19, "0"

    const-string v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_107

    .line 427
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 429
    :cond_107
    const-string v19, "1"

    const-string v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13d

    .line 430
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA Internal Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 435
    :cond_13d
    const-string v19, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 436
    .local v13, "msgIdx":I
    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 437
    const-string v12, ""

    .line 438
    .local v12, "msg":Ljava/lang/String;
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_15f

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_17d

    .line 439
    :cond_15f
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 443
    :cond_17d
    new-instance v3, Landroid/content/Intent;

    const-string v19, "android.intent.action.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v3, "TimaEventIntent":Landroid/content/Intent;
    const-string v19, "MSG="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v13

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 448
    const-string v19, "lkm_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ec

    .line 449
    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    :goto_1ab
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyyMMddHHmmss"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 462
    .local v6, "dateFormat":Ljava/text/DateFormat;
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "date":Ljava/lang/String;
    :try_start_1c0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string v20, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1c9} :catch_238

    .line 471
    :goto_1c9
    :try_start_1c9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string v20, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1d2} :catch_241

    .line 477
    :goto_1d2
    :try_start_1d2
    new-instance v7, Ljava/io/File;

    const-string v19, "/data/misc/tima"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v7, "delAllTimaLogFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 480
    .local v9, "files":[Ljava/io/File;
    move-object v4, v9

    .local v4, "arr$":[Ljava/io/File;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1e2
    if-ge v10, v11, :cond_24e

    aget-object v17, v4, v10

    .line 481
    .local v17, "timafile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1e9} :catch_24a

    .line 480
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e2

    .line 450
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v5    # "date":Ljava/lang/String;
    .end local v6    # "dateFormat":Ljava/text/DateFormat;
    .end local v7    # "delAllTimaLogFile":Ljava/io/File;
    .end local v9    # "files":[Ljava/io/File;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v17    # "timafile":Ljava/io/File;
    :cond_1ec
    const-string v19, "seandroid_off"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_202

    .line 451
    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1ab

    .line 452
    :cond_202
    const-string v19, "kern_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_218

    .line 453
    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1ab

    .line 454
    :cond_218
    const-string v19, "kern_metadata_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22f

    .line 455
    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1ab

    .line 457
    :cond_22f
    const-string v19, "TimaService"

    const-string v20, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 466
    .restart local v5    # "date":Ljava/lang/String;
    .restart local v6    # "dateFormat":Ljava/text/DateFormat;
    :catch_238
    move-exception v8

    .line 467
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "TimaService"

    const-string v20, "Failed to create /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c9

    .line 472
    .end local v8    # "e":Ljava/io/IOException;
    :catch_241
    move-exception v8

    .line 473
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v19, "TimaService"

    const-string v20, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d2

    .line 484
    .end local v8    # "e":Ljava/io/IOException;
    :catch_24a
    move-exception v8

    .line 485
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_24e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/misc/tima/tima.log."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 491
    .local v16, "tima_log_file":Ljava/lang/String;
    :try_start_263
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_281
    .catch Ljava/io/IOException; {:try_start_263 .. :try_end_281} :catch_2ac

    .line 497
    :goto_281
    :try_start_281
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "chmod 640 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_29f
    .catch Ljava/io/IOException; {:try_start_281 .. :try_end_29f} :catch_2ca

    .line 502
    :goto_29f
    sget-boolean v19, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v19, :cond_2e8

    .line 503
    const-string v19, "TimaService"

    const-string v20, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 492
    :catch_2ac
    move-exception v8

    .line 493
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to execute: /system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_281

    .line 498
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2ca
    move-exception v8

    .line 499
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to change permissions of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29f

    .line 506
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2e8
    const-string v19, "com.sec.knox.seandroid"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v19, "TIMA_LOG_FILE"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 510
    new-instance v2, Landroid/content/Intent;

    const-string v19, "android.intent.action.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v2, "TimaEventEsdkElmIntent":Landroid/content/Intent;
    const-string v19, "TIMA_LOG_FILE"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v19, "com.sec.knox.seandroid"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public declared-synchronized getDeviceID()[B
    .registers 3

    .prologue
    .line 309
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: getDeviceID"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 309
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .param p1, "subject"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 542
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: in getTimaVersion"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lcom/android/server/TimaService;->get_tima_Version()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 542
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreInit()I
    .registers 3

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreInit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 256
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 257
    :cond_26
    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreInit()I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    move-result v0

    .line 262
    :goto_2a
    monitor-exit p0

    return v0

    .line 259
    :cond_2c
    const/4 v0, -0x1

    goto :goto_2a

    .line 262
    :cond_2e
    const/16 v0, 0x64

    goto :goto_2a

    .line 253
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .registers 5
    .param p1, "ID"    # I
    .param p2, "key"    # [B

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreInstallKey"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 268
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 269
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaKeystoreInstallKey(I[B)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_25

    move-result v0

    .line 274
    :goto_1e
    monitor-exit p0

    return v0

    .line 271
    :cond_20
    const/4 v0, -0x1

    goto :goto_1e

    .line 274
    :cond_22
    const/16 v0, 0x64

    goto :goto_1e

    .line 266
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .registers 5
    .param p1, "ID"    # I

    .prologue
    const/4 v0, 0x0

    .line 278
    monitor-enter p0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA: keystoreRetrieveKey"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 281
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 282
    :cond_27
    invoke-static {p1}, Lcom/android/server/TimaService;->timaKeystoreRetrieveKey(I)[B
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2d

    move-result-object v0

    .line 287
    :cond_2b
    monitor-exit p0

    return-object v0

    .line 278
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .registers 3

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 293
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 294
    :cond_26
    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreShutdown()I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    move-result v0

    .line 299
    :goto_2a
    monitor-exit p0

    return v0

    .line 296
    :cond_2c
    const/4 v0, -0x1

    goto :goto_2a

    .line 299
    :cond_2e
    const/16 v0, 0x64

    goto :goto_2a

    .line 291
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .registers 4
    .param p1, "timaISLClbk"    # Landroid/service/tima/ITimaISLCallback;

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 538
    monitor-exit p0

    return-void

    .line 534
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
