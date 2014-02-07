.class public Lcom/android/server/net/NetworkStatsDetailedMonitor;
.super Ljava/lang/Object;
.source "NetworkStatsDetailedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;,
        Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    }
.end annotation


# static fields
.field private static final CONTROLFILE_DIR:Ljava/lang/String; = "/data/monitor"

.field private static final CONTROLFILE_NAME1:Ljava/lang/String; = "network.1"

.field private static final CONTROLFILE_NAME2:Ljava/lang/String; = "monitor.1"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field private static DEBUG_LOG:Z = false

.field private static final PREFIX_DEV:Ljava/lang/String; = "ex_dev"

.field private static final PREFIX_EXPORT_DEV:Ljava/lang/String; = "netstats_dev."

.field private static final PREFIX_EXPORT_IF:Ljava/lang/String; = "netstats_if."

.field private static final PREFIX_EXPORT_UID:Ljava/lang/String; = "netstats_uids."

.field private static final PREFIX_EXPORT_UID_APP:Ljava/lang/String; = "netstats_uidapp."

.field private static final PREFIX_EXPORT_UID_TAG:Ljava/lang/String; = "netstats_uid_tag."

.field private static final PREFIX_EXPORT_XT:Ljava/lang/String; = "netstats_xt."

.field private static final PREFIX_IF:Ljava/lang/String; = "ex_if"

.field private static final PREFIX_UID:Ljava/lang/String; = "ex_uid"

.field private static final PREFIX_UID_APP:Ljava/lang/String; = "ex_uidapp"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "ex_uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "ex_xt"

.field private static final SETTING_END_TIME:Ljava/lang/String; = "monitor_network_usage_end_time"

.field private static final SETTING_INTENT:Ljava/lang/String; = "action.NETWORK_MONITOR"

.field private static final SETTING_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.AUTHORISED_FOR_NETWORK_WAKELOCK_MONITORING"

.field private static final SETTING_SAMPLING_RATE:Ljava/lang/String; = "monitor_network_usage_sampling_rate"

.field private static final SETTING_START_TIME:Ljava/lang/String; = "monitor_network_usage_start_time"

.field private static final TAG:Ljava/lang/String; = "NetworkStatsEx"

.field static enabled_by_file:Z

.field private static mConfigBucketSize:J

.field private static mConfigRemoveFileTime:J

.field private static mConfigRotateFileTime:J


# instance fields
.field private mBaseDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mLastPollTime:J

.field private mMonitorEndTime:J

.field private mMonitorStartTime:J

.field private mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollInterval:J

.field private mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

.field private final mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

.field private final mStatsLock:Ljava/lang/Object;

.field private mUidNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-wide/32 v3, 0x5265c00

    const/4 v2, 0x0

    .line 149
    sput-boolean v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    .line 151
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getDebugLevel()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 152
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    .line 398
    :goto_10
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    .line 399
    sput-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRotateFileTime:J

    .line 400
    sput-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRemoveFileTime:J

    .line 457
    sput-boolean v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    return-void

    .line 154
    :cond_1b
    sput-boolean v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    goto :goto_10
.end method

.method public constructor <init>(Lcom/android/server/net/NetworkStatsService;Landroid/content/Context;Landroid/os/INetworkManagementService;Ljava/lang/Object;Landroid/os/PowerManager$WakeLock;Landroid/net/NetworkStats$NonMonotonicObserver;)V
    .registers 12
    .param p1, "serviceNetStats"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p4, "statsLock"    # Ljava/lang/Object;
    .param p5, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p6, "nonMonotonicObserver"    # Landroid/net/NetworkStats$NonMonotonicObserver;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 443
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    .line 394
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    .line 396
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    .line 397
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPollInterval:J

    .line 402
    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    .line 403
    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    .line 404
    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    .line 406
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    .line 408
    new-instance v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    .line 444
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> NetworkStatsDetailedMonitor: Begin..."

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    .line 446
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    .line 447
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 448
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    .line 449
    iput-object p5, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 450
    iput-object p6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 452
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateMonitorDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    .line 454
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> NetworkStatsDetailedMonitor: End!"

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private static LogI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    if-eqz v0, :cond_7

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsDetailedMonitor;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsDetailedMonitor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsDetailedMonitor;

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsDetailedMonitor;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsDetailedMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPoll(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsDetailedMonitor;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkShipAndDebugLevel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsDetailedMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsDetailedMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsDetailedMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setSamplingRateFromSetting(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsDetailedMonitor;JZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsDetailedMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    return-void
.end method

.method private buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 15
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "includeTags"    # Z

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/DropBoxManager;

    .line 601
    .local v10, "dropBox":Landroid/os/DropBoxManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v9

    .line 602
    .local v9, "config":Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    new-instance v11, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v0, Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    iget-wide v3, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v5, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-wide v6, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v1, v11

    move-object v2, v0

    move-object v4, v10

    move-object v5, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v11
.end method

.method private checkControlFile()Z
    .registers 6

    .prologue
    .line 473
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/monitor"

    const-string v3, "network.1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 475
    .local v0, "exist":Z
    const-string v2, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> checkControlFile: file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-nez v0, :cond_68

    .line 477
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    const-string v2, "/data/monitor"

    const-string v3, "monitor.1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 479
    const-string v2, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> checkControlFile: file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_68
    return v0
.end method

.method private checkShipAndDebugLevel()Z
    .registers 7

    .prologue
    .line 460
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    .line 461
    .local v2, "ship":I
    invoke-static {}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getDebugLevel()I

    move-result v0

    .line 462
    .local v0, "level":I
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkControlFile()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    .line 463
    sget-boolean v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    if-ltz v0, :cond_17

    :cond_17
    const/4 v1, 0x0

    .line 464
    .local v1, "ok":Z
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> checkShipAndDebugLevel: enabled_by_file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ship="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SecProductFeature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ok="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v1
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 14
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;

    .prologue
    .line 552
    const/4 v7, 0x1

    .line 553
    .local v7, "ret":Z
    const/4 v2, 0x0

    .line 554
    .local v2, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 559
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_85
    .catchall {:try_start_3 .. :try_end_8} :catchall_66

    .line 560
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_8
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_87
    .catchall {:try_start_8 .. :try_end_d} :catchall_7e

    .line 561
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_f
    new-array v0, v8, [B

    .line 563
    .local v0, "buf":[B
    :goto_11
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_58

    .line 564
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c
    .catchall {:try_start_f .. :try_end_1b} :catchall_81

    goto :goto_11

    .line 566
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    :catch_1c
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 568
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "ex":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1f
    :try_start_1f
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> copyFile: Error-> failed to copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_66

    .line 570
    const/4 v7, 0x0

    .line 572
    if-eqz v5, :cond_52

    .line 573
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_76

    .line 574
    :cond_52
    :goto_52
    if-eqz v2, :cond_57

    .line 575
    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_78

    .line 577
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return v7

    .line 565
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_58
    const/4 v7, 0x1

    .line 572
    if-eqz v6, :cond_5e

    .line 573
    :try_start_5b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_7a

    .line 574
    :cond_5e
    :goto_5e
    if-eqz v3, :cond_63

    .line 575
    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_7c

    :cond_63
    :goto_63
    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 576
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_57

    .line 572
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    :catchall_66
    move-exception v8

    :goto_67
    if-eqz v5, :cond_6c

    .line 573
    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_72

    .line 574
    :cond_6c
    :goto_6c
    if-eqz v2, :cond_71

    .line 575
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_74

    .line 572
    :cond_71
    :goto_71
    throw v8

    .line 573
    :catch_72
    move-exception v9

    goto :goto_6c

    .line 575
    :catch_74
    move-exception v9

    goto :goto_71

    .line 573
    .restart local v1    # "ex":Ljava/lang/Exception;
    :catch_76
    move-exception v8

    goto :goto_52

    .line 575
    :catch_78
    move-exception v8

    goto :goto_57

    .line 573
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_7a
    move-exception v8

    goto :goto_5e

    .line 575
    :catch_7c
    move-exception v8

    goto :goto_63

    .line 572
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_7e
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_67

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_81
    move-exception v8

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_67

    .line 566
    :catch_85
    move-exception v1

    goto :goto_1f

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_87
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1f
.end method

.method private deleteData()V
    .registers 11

    .prologue
    .line 1265
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1266
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v4, :cond_89

    aget-object v1, v0, v3

    .line 1267
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1268
    .local v5, "name":Ljava/lang/String;
    const-string v7, "ex_if"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_dev"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_xt"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_uid"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_uid_tag"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_uidapp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 1274
    :cond_41
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    .line 1275
    .local v6, "ret":Z
    if-eqz v6, :cond_66

    .line 1276
    const-string v7, "NetworkStatsEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(xxxz) NSS>> deleteData: deleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    .end local v6    # "ret":Z
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1278
    .restart local v6    # "ret":Z
    :cond_66
    const-string v7, "NetworkStatsEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(xxxz) NSS>> deleteData: failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 1281
    .end local v1    # "f":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "ret":Z
    :cond_89
    return-void
.end method

.method private deleteExportData()V
    .registers 12

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateExportDir()Ljava/io/File;

    move-result-object v1

    .line 1284
    .local v1, "exportDir":Ljava/io/File;
    if-nez v1, :cond_e

    .line 1285
    const-string v8, "NetworkStatsEx"

    const-string v9, "(xxxz) NSS>> deleteExportData: Warning-> failed to get the export dir!"

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_d
    return-void

    .line 1289
    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1290
    .local v3, "files":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_15
    if-ge v4, v5, :cond_d

    aget-object v2, v0, v4

    .line 1291
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1292
    .local v6, "name":Ljava/lang/String;
    const-string v8, "netstats_if."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_dev."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_xt."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_uids."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_uid_tag."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_uidapp."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 1298
    :cond_4d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    .line 1299
    .local v7, "ret":Z
    if-eqz v7, :cond_72

    .line 1300
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> deleteExportData: deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    .end local v7    # "ret":Z
    :cond_6f
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1302
    .restart local v7    # "ret":Z
    :cond_72
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> deleteExportData: failed to delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f
.end method

.method private declared-synchronized disable(Z)V
    .registers 8
    .param p1, "fromShutdown"    # Z

    .prologue
    .line 964
    monitor-enter p0

    :try_start_1
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> disable: Begin..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d0

    .line 967
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v1

    if-nez v1, :cond_36

    .line 968
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> disable: Warning-> monitoring is not even started yet! start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_34} :catch_f1
    .catchall {:try_start_8 .. :try_end_34} :catchall_d0

    .line 1036
    :goto_34
    monitor-exit p0

    return-void

    .line 972
    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    if-eqz v1, :cond_46

    .line 973
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> disable: stopping monitor thread..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->setStop()V

    .line 994
    :cond_46
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_49} :catch_f1
    .catchall {:try_start_36 .. :try_end_49} :catchall_d0

    .line 995
    const/4 v1, 0x0

    :try_start_4a
    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    .line 997
    if-nez p1, :cond_d3

    .line 998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    .line 999
    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setEndTimeToSetting(J)V

    .line 1000
    const-string v1, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> disable: start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :goto_7f
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_8a

    .line 1006
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1008
    :cond_8a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_95

    .line 1009
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1011
    :cond_95
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_a0

    .line 1012
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1014
    :cond_a0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_ab

    .line 1015
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1017
    :cond_ab
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap(Z)V

    .line 1018
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->saveIf()V

    .line 1022
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 1023
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 1024
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 1025
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 1026
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1027
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    .line 1028
    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_4a .. :try_end_c7} :catchall_ee

    .line 1035
    :goto_c7
    :try_start_c7
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> disable: End!"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_d0

    goto/16 :goto_34

    .line 964
    :catchall_d0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1002
    :cond_d3
    :try_start_d3
    const-string v1, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> disable: called from shutdown. don\'t set the end time! start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 1028
    :catchall_ee
    move-exception v1

    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_d3 .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw v1
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f1} :catch_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_d0

    .line 1030
    :catch_f1
    move-exception v0

    .line 1031
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_f2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1032
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxze) NSS>> disable: Warning! SHOULD NOT BE HERE!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_f2 .. :try_end_111} :catchall_d0

    goto :goto_c7
.end method

.method private dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "recorder"    # Lcom/android/server/net/NetworkStatsRecorder;

    .prologue
    .line 1235
    const-string v0, "Dev stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1237
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1238
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1239
    return-void
.end method

.method private dumpIf(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1224
    const-string v4, "Active interfaces:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1226
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v0

    .line 1227
    .local v0, "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1228
    .local v3, "iface":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 1229
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    const-string v4, "iface="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    const-string v4, " ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    .line 1232
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v3    # "iface":Ljava/lang/String;
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1233
    return-void
.end method

.method private dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "recorder"    # Lcom/android/server/net/NetworkStatsRecorder;

    .prologue
    .line 1247
    const-string v0, "UID stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1249
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1250
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1251
    return-void
.end method

.method private dumpUidNameMap(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1259
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1260
    .local v2, "o":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    .line 1261
    .local v0, "detail":Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->toFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 1263
    .end local v0    # "detail":Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    .end local v2    # "o":Ljava/lang/Integer;
    :cond_26
    return-void
.end method

.method private dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "recorder"    # Lcom/android/server/net/NetworkStatsRecorder;

    .prologue
    .line 1253
    const-string v0, "UID tag stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1255
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1256
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1257
    return-void
.end method

.method private dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "recorder"    # Lcom/android/server/net/NetworkStatsRecorder;

    .prologue
    .line 1241
    const-string v0, "Xt stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1243
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1244
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1245
    return-void
.end method

.method private declared-synchronized enable(JZ)V
    .registers 11
    .param p1, "bucketSize"    # J
    .param p3, "fromSystemReady"    # Z

    .prologue
    const-wide/16 v5, 0x3e8

    .line 912
    monitor-enter p0

    :try_start_3
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: Begin..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b2

    .line 915
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 916
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: End! already monitoring"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_17} :catch_d7
    .catchall {:try_start_a .. :try_end_17} :catchall_b2

    .line 962
    :goto_17
    monitor-exit p0

    return-void

    .line 923
    :cond_19
    if-nez p3, :cond_b5

    .line 924
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    .line 925
    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setStartTimeToSetting(J)V

    .line 928
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteData()V

    .line 934
    :goto_29
    cmp-long v1, p1, v5

    if-ltz v1, :cond_f8

    .line 935
    sput-wide p1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    .line 938
    :goto_2f
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> enable: bucket size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: creating recorders..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v1, "ex_dev"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 942
    const-string v1, "ex_xt"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 943
    const-string v1, "ex_uid"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 944
    const-string v1, "ex_uid_tag"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 946
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 947
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 948
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 949
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 951
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    .line 953
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: creating thread..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    new-instance v1, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    .line 955
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->start()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_a9} :catch_d7
    .catchall {:try_start_1b .. :try_end_a9} :catchall_b2

    .line 961
    :goto_a9
    :try_start_a9
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: End!"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b2

    goto/16 :goto_17

    .line 912
    :catchall_b2
    move-exception v1

    monitor-exit p0

    throw v1

    .line 930
    :cond_b5
    :try_start_b5
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getStartTimeFromSetting()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    .line 931
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> enable: monitoring started before the boot. start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_d5} :catch_d7
    .catchall {:try_start_b5 .. :try_end_d5} :catchall_b2

    goto/16 :goto_29

    .line 956
    :catch_d7
    move-exception v0

    .line 957
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_d8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 958
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxze) NSS>> enable: Warning! SHOULD NOT BE HERE!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_d8 .. :try_end_f7} :catchall_b2

    goto :goto_a9

    .line 937
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_f8
    const-wide/16 v1, 0x3e8

    :try_start_fa
    sput-wide v1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_fc} :catch_d7
    .catchall {:try_start_fa .. :try_end_fc} :catchall_b2

    goto/16 :goto_2f
.end method

.method private exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 37
    .param p1, "deleteRaw"    # Z
    .param p2, "pw_adb"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1041
    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Begin..."

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v30

    if-eqz v30, :cond_22

    .line 1044
    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Error-> not support to export data during monitoring!"

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    if-eqz p2, :cond_1f

    const-string v30, "Still in monitoring, no data is exported!"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    :cond_1f
    const/16 v30, 0x0

    .line 1221
    :goto_21
    return v30

    .line 1049
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1051
    .local v18, "now":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getStartTimeFromSetting()J

    move-result-wide v14

    .line 1052
    .local v14, "lastStartTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getEndTimeFromSetting()J

    move-result-wide v12

    .line 1070
    .local v12, "lastEndTime":J
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: time start="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", end="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    cmp-long v30, v14, v12

    if-ltz v30, :cond_b8

    .line 1072
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: End! no data for this time period ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    if-eqz p2, :cond_b4

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no data for this time period ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    :cond_b4
    const/16 v30, 0x0

    goto/16 :goto_21

    .line 1078
    :cond_b8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteExportData()V

    .line 1081
    const-string v30, "ex_dev"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v5

    .line 1082
    .local v5, "devRecorder":Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 1083
    const-string v30, "ex_xt"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v29

    .line 1084
    .local v29, "xtRecorder":Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 1085
    const-string v30, "ex_uid"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v25

    .line 1086
    .local v25, "uidRecorder":Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 1087
    const-string v30, "ex_uid_tag"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v26

    .line 1088
    .local v26, "uidTagRecorder":Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 1091
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1100
    .local v24, "suffix":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateExportDir()Ljava/io/File;

    move-result-object v7

    .line 1101
    .local v7, "exportDir":Ljava/io/File;
    if-nez v7, :cond_12b

    .line 1102
    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Error-> failed to get the export dir!"

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const/16 v30, 0x0

    goto/16 :goto_21

    .line 1107
    :cond_12b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1108
    .local v20, "now0":J
    new-instance v9, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_dev."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1109
    .local v9, "file":Ljava/io/File;
    const/16 v27, 0x0

    .line 1110
    .local v27, "writer":Ljava/io/PrintWriter;
    const/16 v22, 0x0

    .line 1112
    .local v22, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_151
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    new-instance v28, Ljava/io/PrintWriter;

    move-object/from16 v0, v28

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_17a} :catch_436
    .catchall {:try_start_151 .. :try_end_17a} :catchall_48f

    .line 1114
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .local v28, "writer":Ljava/io/PrintWriter;
    :try_start_17a
    new-instance v23, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_187} :catch_69b
    .catchall {:try_start_17a .. :try_end_187} :catchall_68f

    .line 1115
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .local v23, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_187
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18e} :catch_6a0
    .catchall {:try_start_187 .. :try_end_18e} :catchall_694

    .line 1122
    if-eqz v28, :cond_193

    .line 1123
    :try_start_190
    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintWriter;->close()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_642

    .line 1124
    :cond_193
    :goto_193
    const/16 v28, 0x0

    .line 1125
    const/16 v23, 0x0

    .line 1127
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1130
    new-instance v9, Ljava/io/File;

    .end local v9    # "file":Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_xt."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1132
    .restart local v9    # "file":Ljava/io/File;
    :try_start_1e5
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_20e} :catch_49a
    .catchall {:try_start_1e5 .. :try_end_20e} :catchall_4f7

    .line 1134
    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :try_start_20e
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_21b} :catch_687
    .catchall {:try_start_20e .. :try_end_21b} :catchall_67f

    .line 1135
    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_21b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_224} :catch_68c
    .catchall {:try_start_21b .. :try_end_224} :catchall_684

    .line 1142
    if-eqz v27, :cond_229

    .line 1143
    :try_start_226
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_229} :catch_64b

    .line 1144
    :cond_229
    :goto_229
    const/16 v28, 0x0

    .line 1145
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    const/16 v23, 0x0

    .line 1147
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1150
    new-instance v9, Ljava/io/File;

    .end local v9    # "file":Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uids."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1152
    .restart local v9    # "file":Ljava/io/File;
    :try_start_27b
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_2a4} :catch_506
    .catchall {:try_start_27b .. :try_end_2a4} :catchall_563

    .line 1154
    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :try_start_2a4
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2b1} :catch_677
    .catchall {:try_start_2a4 .. :try_end_2b1} :catchall_66f

    .line 1155
    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_2b1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2ba} :catch_67c
    .catchall {:try_start_2b1 .. :try_end_2ba} :catchall_674

    .line 1162
    if-eqz v27, :cond_2bf

    .line 1163
    :try_start_2bc
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2bf} :catch_654

    .line 1164
    :cond_2bf
    :goto_2bf
    const/16 v28, 0x0

    .line 1165
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    const/16 v23, 0x0

    .line 1167
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1170
    new-instance v9, Ljava/io/File;

    .end local v9    # "file":Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uid_tag."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1172
    .restart local v9    # "file":Ljava/io/File;
    :try_start_311
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_311 .. :try_end_33a} :catch_572
    .catchall {:try_start_311 .. :try_end_33a} :catchall_5cf

    .line 1174
    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :try_start_33a
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_33a .. :try_end_347} :catch_667
    .catchall {:try_start_33a .. :try_end_347} :catchall_65f

    .line 1175
    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_347
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_350} :catch_66c
    .catchall {:try_start_347 .. :try_end_350} :catchall_664

    .line 1182
    if-eqz v27, :cond_355

    .line 1183
    :try_start_352
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_355} :catch_65c

    .line 1184
    :cond_355
    :goto_355
    const/16 v27, 0x0

    .line 1185
    const/16 v22, 0x0

    .line 1187
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 1191
    .local v10, "files":[Ljava/io/File;
    move-object v3, v10

    .local v3, "arr$":[Ljava/io/File;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_394
    move/from16 v0, v16

    if-ge v11, v0, :cond_5de

    aget-object v8, v3, v11

    .line 1192
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1193
    .local v17, "name":Ljava/lang/String;
    const-string v30, "ex_if"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3b6

    const-string v30, "ex_uidapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_432

    .line 1197
    :cond_3b6
    const-string v30, "ex_if"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3d9

    .line 1198
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_if."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1199
    :cond_3d9
    const-string v30, "ex_uidapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3fc

    .line 1200
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uidapp."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1202
    :cond_3fc
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v4, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1205
    .local v4, "dest":Ljava/io/File;
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: copying "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1191
    .end local v4    # "dest":Ljava/io/File;
    :cond_432
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_394

    .line 1116
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "name":Ljava/lang/String;
    :catch_436
    move-exception v6

    .line 1117
    .local v6, "ex":Ljava/lang/Exception;
    :goto_437
    :try_start_437
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1119
    if-eqz p2, :cond_482

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_482
    .catchall {:try_start_437 .. :try_end_482} :catchall_48f

    .line 1120
    :cond_482
    const/16 v30, 0x0

    .line 1122
    if-eqz v27, :cond_489

    .line 1123
    :try_start_486
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_489
    .catch Ljava/lang/Exception; {:try_start_486 .. :try_end_489} :catch_63f

    .line 1124
    :cond_489
    :goto_489
    const/16 v27, 0x0

    .line 1125
    const/16 v22, 0x0

    goto/16 :goto_21

    .line 1122
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_48f
    move-exception v30

    :goto_490
    if-eqz v27, :cond_495

    .line 1123
    :try_start_492
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_495
    .catch Ljava/lang/Exception; {:try_start_492 .. :try_end_495} :catch_63c

    .line 1124
    :cond_495
    :goto_495
    const/16 v27, 0x0

    .line 1125
    const/16 v22, 0x0

    .line 1122
    throw v30

    .line 1136
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catch_49a
    move-exception v6

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .line 1137
    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v6    # "ex":Ljava/lang/Exception;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :goto_49f
    :try_start_49f
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1139
    if-eqz p2, :cond_4ea

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4ea
    .catchall {:try_start_49f .. :try_end_4ea} :catchall_684

    .line 1140
    :cond_4ea
    const/16 v30, 0x0

    .line 1142
    if-eqz v27, :cond_4f1

    .line 1143
    :try_start_4ee
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_4f1
    .catch Ljava/lang/Exception; {:try_start_4ee .. :try_end_4f1} :catch_648

    .line 1144
    :cond_4f1
    :goto_4f1
    const/16 v27, 0x0

    .line 1145
    const/16 v22, 0x0

    goto/16 :goto_21

    .line 1142
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catchall_4f7
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :goto_4fc
    if-eqz v27, :cond_501

    .line 1143
    :try_start_4fe
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_501
    .catch Ljava/lang/Exception; {:try_start_4fe .. :try_end_501} :catch_645

    .line 1144
    :cond_501
    :goto_501
    const/16 v27, 0x0

    .line 1145
    const/16 v22, 0x0

    .line 1142
    throw v30

    .line 1156
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catch_506
    move-exception v6

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .line 1157
    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v6    # "ex":Ljava/lang/Exception;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :goto_50b
    :try_start_50b
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1159
    if-eqz p2, :cond_556

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_556
    .catchall {:try_start_50b .. :try_end_556} :catchall_674

    .line 1160
    :cond_556
    const/16 v30, 0x0

    .line 1162
    if-eqz v27, :cond_55d

    .line 1163
    :try_start_55a
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_55d
    .catch Ljava/lang/Exception; {:try_start_55a .. :try_end_55d} :catch_651

    .line 1164
    :cond_55d
    :goto_55d
    const/16 v27, 0x0

    .line 1165
    const/16 v22, 0x0

    goto/16 :goto_21

    .line 1162
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catchall_563
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :goto_568
    if-eqz v27, :cond_56d

    .line 1163
    :try_start_56a
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_56d
    .catch Ljava/lang/Exception; {:try_start_56a .. :try_end_56d} :catch_64e

    .line 1164
    :cond_56d
    :goto_56d
    const/16 v27, 0x0

    .line 1165
    const/16 v22, 0x0

    .line 1162
    throw v30

    .line 1176
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catch_572
    move-exception v6

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .line 1177
    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v6    # "ex":Ljava/lang/Exception;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :goto_577
    :try_start_577
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1179
    if-eqz p2, :cond_5c2

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5c2
    .catchall {:try_start_577 .. :try_end_5c2} :catchall_664

    .line 1180
    :cond_5c2
    const/16 v30, 0x0

    .line 1182
    if-eqz v27, :cond_5c9

    .line 1183
    :try_start_5c6
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_5c9
    .catch Ljava/lang/Exception; {:try_start_5c6 .. :try_end_5c9} :catch_659

    .line 1184
    :cond_5c9
    :goto_5c9
    const/16 v27, 0x0

    .line 1185
    const/16 v22, 0x0

    goto/16 :goto_21

    .line 1182
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catchall_5cf
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :goto_5d4
    if-eqz v27, :cond_5d9

    .line 1183
    :try_start_5d6
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_5d9
    .catch Ljava/lang/Exception; {:try_start_5d6 .. :try_end_5d9} :catch_657

    .line 1184
    :cond_5d9
    :goto_5d9
    const/16 v27, 0x0

    .line 1185
    const/16 v22, 0x0

    .line 1182
    throw v30

    .line 1214
    .restart local v3    # "arr$":[Ljava/io/File;
    .restart local v10    # "files":[Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v16    # "len$":I
    :cond_5de
    if-eqz p1, :cond_5ea

    .line 1215
    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: deleting raw data..."

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteData()V

    .line 1219
    :cond_5ea
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: End! duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v18

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    if-eqz p2, :cond_638

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "export is done ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v18

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms)! dir="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    :cond_638
    const/16 v30, 0x1

    goto/16 :goto_21

    .line 1123
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    :catch_63c
    move-exception v31

    goto/16 :goto_495

    .restart local v6    # "ex":Ljava/lang/Exception;
    :catch_63f
    move-exception v31

    goto/16 :goto_489

    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catch_642
    move-exception v30

    goto/16 :goto_193

    .line 1143
    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    :catch_645
    move-exception v31

    goto/16 :goto_501

    .restart local v6    # "ex":Ljava/lang/Exception;
    :catch_648
    move-exception v31

    goto/16 :goto_4f1

    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_64b
    move-exception v30

    goto/16 :goto_229

    .line 1163
    :catch_64e
    move-exception v31

    goto/16 :goto_56d

    .restart local v6    # "ex":Ljava/lang/Exception;
    :catch_651
    move-exception v31

    goto/16 :goto_55d

    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_654
    move-exception v30

    goto/16 :goto_2bf

    .line 1183
    :catch_657
    move-exception v31

    goto :goto_5d9

    .restart local v6    # "ex":Ljava/lang/Exception;
    :catch_659
    move-exception v31

    goto/16 :goto_5c9

    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_65c
    move-exception v30

    goto/16 :goto_355

    .line 1182
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_65f
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_5d4

    :catchall_664
    move-exception v30

    goto/16 :goto_5d4

    .line 1176
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catch_667
    move-exception v6

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_577

    :catch_66c
    move-exception v6

    goto/16 :goto_577

    .line 1162
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_66f
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_568

    :catchall_674
    move-exception v30

    goto/16 :goto_568

    .line 1156
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catch_677
    move-exception v6

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_50b

    :catch_67c
    move-exception v6

    goto/16 :goto_50b

    .line 1142
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_67f
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_4fc

    :catchall_684
    move-exception v30

    goto/16 :goto_4fc

    .line 1136
    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catch_687
    move-exception v6

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_49f

    :catch_68c
    move-exception v6

    goto/16 :goto_49f

    .line 1122
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catchall_68f
    move-exception v30

    move-object/from16 v27, v28

    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    goto/16 :goto_490

    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catchall_694
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    goto/16 :goto_490

    .line 1116
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catch_69b
    move-exception v6

    move-object/from16 v27, v28

    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    goto/16 :goto_437

    .end local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28    # "writer":Ljava/io/PrintWriter;
    :catch_6a0
    move-exception v6

    move-object/from16 v22, v23

    .end local v23    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28    # "writer":Ljava/io/PrintWriter;
    .restart local v27    # "writer":Ljava/io/PrintWriter;
    goto/16 :goto_437
.end method

.method private getConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 8

    .prologue
    .line 593
    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    sget-wide v1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    sget-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRotateFileTime:J

    sget-wide v5, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRemoveFileTime:J

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method private static getDebugLevel()I
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 487
    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 490
    .local v0, "debugLevel":I
    const-string v5, "NetworkStatsEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDebugLevel  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 492
    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 0 - unknown state"

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_32
    return v3

    .line 496
    :cond_33
    const/4 v5, 0x2

    :try_start_34
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3d} :catch_4a

    move-result v0

    .line 502
    const/16 v5, 0x4f4c

    if-ne v0, v5, :cond_6a

    .line 503
    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 0 - low"

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 497
    :catch_4a
    move-exception v1

    .line 498
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NSS>> getDebugLevel: 0 - state ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 505
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_6a
    const/16 v5, 0x494d

    if-ne v0, v5, :cond_77

    .line 506
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> getDebugLevel: 1 - mid"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v3, 0x1

    goto :goto_32

    .line 508
    :cond_77
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_84

    .line 509
    const-string v3, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 2 - high"

    invoke-static {v3, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 510
    goto :goto_32

    .line 512
    :cond_84
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NSS>> getDebugLevel: 0 - level ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private getEndTimeFromSetting()J
    .registers 5

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_end_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateExportDir()Ljava/io/File;
    .registers 5

    .prologue
    .line 609
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/netstats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    .line 611
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_30

    .line 612
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> getOrCreateExportDir: Error-> failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x0

    .line 616
    .end local v0    # "dir":Ljava/io/File;
    :cond_30
    return-object v0
.end method

.method private getOrCreateMonitorDir()Ljava/io/File;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x1f8

    const/4 v5, -0x1

    .line 619
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "monitor"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 620
    .local v0, "monitorDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_39

    .line 621
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_39

    .line 622
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> getOrCreateMonitorDir: Error-> failed to create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 642
    :goto_38
    return-object v1

    .line 626
    :cond_39
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 631
    new-instance v1, Ljava/io/File;

    const-string v3, "netstats"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 632
    .local v1, "netstatsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_71

    .line 633
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_71

    .line 634
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> getOrCreateMonitorDir: Error-> failed to create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 635
    goto :goto_38

    .line 638
    :cond_71
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_38
.end method

.method private getSamplingRateFromSetting()I
    .registers 4

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_sampling_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getStartTimeFromSetting()J
    .registers 5

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_start_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isInMonitoring()Z
    .registers 6

    .prologue
    .line 902
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_36

    const/4 v0, 0x1

    .line 903
    .local v0, "started":Z
    :goto_5
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> isInMonitoring: start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", started="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return v0

    .line 902
    .end local v0    # "started":Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private performPoll(IZ)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 678
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> performPoll: Begin..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :try_start_7
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_37

    .line 681
    if-eqz p2, :cond_11

    .line 682
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_34

    .line 685
    :cond_11
    :try_start_11
    const-string v1, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> performPoll: performPollLocked..."

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPollLocked(I)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2b

    .line 688
    if-eqz p2, :cond_22

    .line 689
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 691
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_34

    .line 696
    :goto_23
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> performPoll: End!"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void

    .line 688
    :catchall_2b
    move-exception v1

    if-eqz p2, :cond_33

    .line 689
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 688
    :cond_33
    throw v1

    .line 691
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_37

    .line 692
    :catch_37
    move-exception v0

    .line 693
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 694
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxze) NSS>> performPoll: Warning! SHOULD NOT BE HERE!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private performPollLocked(I)V
    .registers 24
    .param p1, "flags"    # I

    .prologue
    .line 700
    const-string v18, "NetworkStatsEx"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(xxxz) NSS>> performPollLocked: Begin... flags=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService;->isSystemReady()Z

    move-result v18

    if-nez v18, :cond_36

    .line 702
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: End! System NOT ready!"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_35
    return-void

    .line 706
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    if-nez v18, :cond_46

    .line 707
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: End! Disabled!"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 711
    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    .line 713
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_14b

    const/4 v11, 0x1

    .line 714
    .local v11, "persistNetwork":Z
    :goto_55
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_14e

    const/4 v12, 0x1

    .line 715
    .local v12, "persistUid":Z
    :goto_5a
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_151

    const/4 v10, 0x1

    .line 717
    .local v10, "persistForce":Z
    :goto_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 720
    .local v4, "currentTime":J
    :try_start_67
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: recording..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/16 v17, 0x0

    .line 724
    .local v17, "xtSnapshot":Landroid/net/NetworkStats;
    const/4 v15, 0x3

    .line 725
    .local v15, "try_sleep":I
    const/4 v14, 0x3

    .line 726
    .local v14, "try_max":I
    const/4 v13, 0x0

    .line 728
    .local v13, "try_count":I
    :goto_73
    add-int/lit8 v13, v13, 0x1

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v17

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->checkDataIntegrityInSnapshot(Landroid/net/NetworkStats;J)Z

    move-result v18

    if-eqz v18, :cond_154

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v16

    .line 752
    .local v16, "uidSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v6

    .line 754
    .local v6, "devSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v3

    .line 755
    .local v3, "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 760
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap(Z)V
    :try_end_e8
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_e8} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_e8} :catch_17f

    .line 774
    if-eqz v10, :cond_18c

    .line 775
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: persistForce"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 793
    :cond_11d
    :goto_11d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    move-wide/from16 v20, v0

    sub-long v7, v18, v20

    .line 794
    .local v7, "duration":J
    const-string v18, "NetworkStatsEx"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(xxxz) NSS>> performPollLocked: End! duration="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 713
    .end local v3    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v4    # "currentTime":J
    .end local v6    # "devSnapshot":Landroid/net/NetworkStats;
    .end local v7    # "duration":J
    .end local v10    # "persistForce":Z
    .end local v11    # "persistNetwork":Z
    .end local v12    # "persistUid":Z
    .end local v13    # "try_count":I
    .end local v14    # "try_max":I
    .end local v15    # "try_sleep":I
    .end local v16    # "uidSnapshot":Landroid/net/NetworkStats;
    .end local v17    # "xtSnapshot":Landroid/net/NetworkStats;
    :cond_14b
    const/4 v11, 0x0

    goto/16 :goto_55

    .line 714
    .restart local v11    # "persistNetwork":Z
    :cond_14e
    const/4 v12, 0x0

    goto/16 :goto_5a

    .line 715
    .restart local v12    # "persistUid":Z
    :cond_151
    const/4 v10, 0x0

    goto/16 :goto_63

    .line 736
    .restart local v4    # "currentTime":J
    .restart local v10    # "persistForce":Z
    .restart local v13    # "try_count":I
    .restart local v14    # "try_max":I
    .restart local v15    # "try_sleep":I
    .restart local v17    # "xtSnapshot":Landroid/net/NetworkStats;
    :cond_154
    if-ge v13, v14, :cond_169

    .line 737
    :try_start_156
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxzt) NSS>> performPollLocked: xtSnapshot has data integrity problem. try next again..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/IllegalStateException; {:try_start_156 .. :try_end_15d} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_15d} :catch_17f

    .line 739
    int-to-long v0, v15

    move-wide/from16 v18, v0

    :try_start_160
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_1cc
    .catch Ljava/lang/IllegalStateException; {:try_start_160 .. :try_end_163} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_163} :catch_17f

    .line 742
    :goto_163
    :try_start_163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 743
    goto/16 :goto_73

    .line 747
    :cond_169
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxzt) NSS>> performPollLocked: xtSnapshot has data integrity problem. try next poll..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/lang/IllegalStateException; {:try_start_163 .. :try_end_170} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_163 .. :try_end_170} :catch_17f

    goto/16 :goto_35

    .line 762
    .end local v13    # "try_count":I
    .end local v14    # "try_max":I
    .end local v15    # "try_sleep":I
    .end local v17    # "xtSnapshot":Landroid/net/NetworkStats;
    :catch_172
    move-exception v9

    .line 763
    .local v9, "e":Ljava/lang/IllegalStateException;
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: Error-> problem reading network stats"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_35

    .line 766
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catch_17f
    move-exception v9

    .line 767
    .local v9, "e":Landroid/os/RemoteException;
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: Error-> RemoteException!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_35

    .line 781
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v3    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .restart local v6    # "devSnapshot":Landroid/net/NetworkStats;
    .restart local v13    # "try_count":I
    .restart local v14    # "try_max":I
    .restart local v15    # "try_sleep":I
    .restart local v16    # "uidSnapshot":Landroid/net/NetworkStats;
    .restart local v17    # "xtSnapshot":Landroid/net/NetworkStats;
    :cond_18c
    if-eqz v11, :cond_1ab

    .line 782
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: persistNetwork"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 786
    :cond_1ab
    if-eqz v12, :cond_11d

    .line 787
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: persistUid"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto/16 :goto_11d

    .line 740
    .end local v3    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v6    # "devSnapshot":Landroid/net/NetworkStats;
    .end local v16    # "uidSnapshot":Landroid/net/NetworkStats;
    :catch_1cc
    move-exception v18

    goto :goto_163
.end method

.method private saveIf()V
    .registers 18

    .prologue
    .line 797
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> saveIf: Begin..."

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v13

    if-nez v13, :cond_15

    .line 799
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> saveIf: End! not in monitoring."

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :goto_14
    return-void

    .line 803
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 804
    .local v7, "now":J
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ex_if-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    .local v3, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 806
    .local v11, "writer":Ljava/io/PrintWriter;
    const/4 v9, 0x0

    .line 808
    .local v9, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_41
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: writing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_68} :catch_129
    .catchall {:try_start_41 .. :try_end_68} :catchall_114

    .line 810
    .end local v11    # "writer":Ljava/io/PrintWriter;
    .local v12, "writer":Ljava/io/PrintWriter;
    :try_start_68
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "  "

    invoke-direct {v10, v12, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_12b
    .catchall {:try_start_68 .. :try_end_6f} :catchall_122

    .line 811
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_6f
    const-string v13, "Active interfaces:"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 813
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v1

    .line 814
    .local v1, "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_87
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_109

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 815
    .local v6, "iface":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkIdentitySet;

    .line 816
    .local v5, "ident":Lcom/android/server/net/NetworkIdentitySet;
    const-string v13, "iface="

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 817
    const-string v13, " ident="

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_ad} :catch_ae
    .catchall {:try_start_6f .. :try_end_ad} :catchall_125

    goto :goto_87

    .line 820
    .end local v1    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v6    # "iface":Ljava/lang/String;
    :catch_ae
    move-exception v2

    move-object v9, v10

    .end local v10    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object v11, v12

    .line 821
    .end local v12    # "writer":Ljava/io/PrintWriter;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v11    # "writer":Ljava/io/PrintWriter;
    :goto_b1
    :try_start_b1
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: Error-> failed to write "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_b1 .. :try_end_d6} :catchall_114

    .line 824
    if-eqz v11, :cond_db

    .line 825
    :try_start_d8
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_11e

    .line 826
    :cond_db
    :goto_db
    const/4 v11, 0x0

    .line 828
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_dc
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: End! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " duration="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v7

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 819
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v11    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v10    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v12    # "writer":Ljava/io/PrintWriter;
    :cond_109
    :try_start_109
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_ae
    .catchall {:try_start_109 .. :try_end_10c} :catchall_125

    .line 824
    if-eqz v12, :cond_111

    .line 825
    :try_start_10e
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_111} :catch_120

    .line 826
    :cond_111
    :goto_111
    const/4 v11, 0x0

    .end local v12    # "writer":Ljava/io/PrintWriter;
    .restart local v11    # "writer":Ljava/io/PrintWriter;
    move-object v9, v10

    .line 827
    .end local v10    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto :goto_dc

    .line 824
    .end local v1    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_114
    move-exception v13

    :goto_115
    if-eqz v11, :cond_11a

    .line 825
    :try_start_117
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11c

    .line 826
    :cond_11a
    :goto_11a
    const/4 v11, 0x0

    .line 824
    throw v13

    .line 825
    :catch_11c
    move-exception v14

    goto :goto_11a

    .restart local v2    # "ex":Ljava/lang/Exception;
    :catch_11e
    move-exception v13

    goto :goto_db

    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v11    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v10    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v12    # "writer":Ljava/io/PrintWriter;
    :catch_120
    move-exception v13

    goto :goto_111

    .line 824
    .end local v1    # "activeIfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v10    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_122
    move-exception v13

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/PrintWriter;
    .restart local v11    # "writer":Ljava/io/PrintWriter;
    goto :goto_115

    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v11    # "writer":Ljava/io/PrintWriter;
    .restart local v10    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v12    # "writer":Ljava/io/PrintWriter;
    :catchall_125
    move-exception v13

    move-object v9, v10

    .end local v10    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object v11, v12

    .end local v12    # "writer":Ljava/io/PrintWriter;
    .restart local v11    # "writer":Ljava/io/PrintWriter;
    goto :goto_115

    .line 820
    :catch_129
    move-exception v2

    goto :goto_b1

    .end local v11    # "writer":Ljava/io/PrintWriter;
    .restart local v12    # "writer":Ljava/io/PrintWriter;
    :catch_12b
    move-exception v2

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/PrintWriter;
    .restart local v11    # "writer":Ljava/io/PrintWriter;
    goto :goto_b1
.end method

.method private saveUidNameMap()V
    .registers 11

    .prologue
    .line 831
    const-string v6, "NetworkStatsEx"

    const-string v7, "(xxxz) NSS>> saveUidNameMap: Begin..."

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 834
    .local v2, "now":J
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ex_uidapp-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 835
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 837
    .local v4, "writer":Ljava/io/PrintWriter;
    :try_start_2e
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_55} :catch_8a
    .catchall {:try_start_2e .. :try_end_55} :catchall_b8

    .line 839
    .end local v4    # "writer":Ljava/io/PrintWriter;
    .local v5, "writer":Ljava/io/PrintWriter;
    :try_start_55
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidNameMap(Ljava/io/PrintWriter;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_c7
    .catchall {:try_start_55 .. :try_end_58} :catchall_c4

    .line 844
    if-eqz v5, :cond_5d

    .line 845
    :try_start_5a
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_c2

    .line 846
    .end local v5    # "writer":Ljava/io/PrintWriter;
    :cond_5d
    :goto_5d
    const/4 v4, 0x0

    .line 848
    .restart local v4    # "writer":Ljava/io/PrintWriter;
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: End! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void

    .line 840
    :catch_8a
    move-exception v0

    .line 841
    .local v0, "ex":Ljava/lang/Exception;
    :goto_8b
    :try_start_8b
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: Error-> failed to write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_b8

    .line 844
    if-eqz v4, :cond_5d

    .line 845
    :try_start_b2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_5d

    :catch_b6
    move-exception v6

    goto :goto_5d

    .line 844
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_b8
    move-exception v6

    :goto_b9
    if-eqz v4, :cond_be

    .line 845
    :try_start_bb
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c0

    .line 846
    :cond_be
    :goto_be
    const/4 v4, 0x0

    .line 844
    throw v6

    .line 845
    :catch_c0
    move-exception v7

    goto :goto_be

    .end local v4    # "writer":Ljava/io/PrintWriter;
    .restart local v5    # "writer":Ljava/io/PrintWriter;
    :catch_c2
    move-exception v6

    goto :goto_5d

    .line 844
    :catchall_c4
    move-exception v6

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/PrintWriter;
    .restart local v4    # "writer":Ljava/io/PrintWriter;
    goto :goto_b9

    .line 840
    .end local v4    # "writer":Ljava/io/PrintWriter;
    .restart local v5    # "writer":Ljava/io/PrintWriter;
    :catch_c7
    move-exception v0

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/PrintWriter;
    .restart local v4    # "writer":Ljava/io/PrintWriter;
    goto :goto_8b
.end method

.method private setEndTimeToSetting(J)V
    .registers 5
    .param p1, "time"    # J

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_end_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 667
    return-void
.end method

.method private setSamplingRateFromSetting(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_sampling_rate"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    return-void
.end method

.method private setStartTimeToSetting(J)V
    .registers 5
    .param p1, "time"    # J

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_start_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 673
    return-void
.end method

.method private test(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1310
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> test: Begin..."

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> test: End!"

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    return-void
.end method

.method private updateUidNameMap(Z)V
    .registers 9
    .param p1, "save"    # Z

    .prologue
    .line 851
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> updateUidNameMap: Begin..."

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    if-nez v3, :cond_13

    .line 854
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> updateUidNameMap: End! (null)"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :goto_12
    return-void

    .line 858
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 861
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v0

    .line 863
    .local v0, "new_uid":Z
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 864
    const/4 v0, 0x1

    .line 866
    :cond_2e
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 867
    const/4 v0, 0x1

    .line 869
    :cond_3b
    if-eqz p1, :cond_42

    if-eqz v0, :cond_42

    .line 870
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->saveUidNameMap()V

    .line 871
    :cond_42
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> updateUidNameMap: End! duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private updateUidNameMap([I)Z
    .registers 8
    .param p1, "uids"    # [I

    .prologue
    .line 874
    const/4 v2, 0x0

    .line 876
    .local v2, "new_uid":Z
    if-eqz p1, :cond_7

    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_10

    .line 877
    :cond_7
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> undateUidNameMap: End! no uids"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const/4 v3, 0x0

    .line 896
    :goto_f
    return v3

    .line 881
    :cond_10
    const/4 v0, 0x0

    .line 882
    .local v0, "detail":Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v3, p1

    if-ge v1, v3, :cond_55

    .line 883
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "detail":Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    check-cast v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    .line 884
    .restart local v0    # "detail":Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    if-nez v0, :cond_52

    .line 885
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> undateUidNameMap: add uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    .end local v0    # "detail":Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    aget v3, p1, v1

    invoke-direct {v0, p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V

    .line 887
    .restart local v0    # "detail":Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const/4 v2, 0x1

    .line 882
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_55
    move v3, v2

    .line 896
    goto :goto_f
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/HashSet;)Z
    .registers 16
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "argSet"    # Ljava/util/HashSet;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1323
    const-string v8, "--enablex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1324
    .local v1, "enablex":Z
    const-string v8, "--disablex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1325
    .local v0, "disablex":Z
    const-string v8, "--fullex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "fullex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    :cond_1e
    move v4, v7

    .line 1326
    .local v4, "fullex":Z
    :goto_1f
    const-string v8, "--exportex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-string v8, "exportex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-string v8, "--export"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-string v8, "--export"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    :cond_3f
    move v2, v7

    .line 1328
    .local v2, "exportex":Z
    :goto_40
    const-string v8, "--exportexx"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    const-string v8, "exportexx"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76

    :cond_50
    move v3, v7

    .line 1329
    .local v3, "exportexx":Z
    :goto_51
    const-string v8, "--testex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    const-string v8, "testex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    :cond_61
    move v5, v7

    .line 1331
    .local v5, "testex":Z
    :goto_62
    if-eqz v5, :cond_7a

    .line 1332
    const-string v6, "=== testex ===================================="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->test(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1334
    const-string v6, "=== testex ===================================="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    :goto_71
    return v7

    .end local v2    # "exportex":Z
    .end local v3    # "exportexx":Z
    .end local v4    # "fullex":Z
    .end local v5    # "testex":Z
    :cond_72
    move v4, v6

    .line 1325
    goto :goto_1f

    .restart local v4    # "fullex":Z
    :cond_74
    move v2, v6

    .line 1326
    goto :goto_40

    .restart local v2    # "exportex":Z
    :cond_76
    move v3, v6

    .line 1328
    goto :goto_51

    .restart local v3    # "exportexx":Z
    :cond_78
    move v5, v6

    .line 1329
    goto :goto_62

    .line 1337
    .restart local v5    # "testex":Z
    :cond_7a
    if-eqz v3, :cond_85

    .line 1338
    const-string v8, "Exporting detailed network stats monitoring data... (keep raw data)"

    invoke-virtual {p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    invoke-direct {p0, v6, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z

    goto :goto_71

    .line 1343
    :cond_85
    if-eqz v2, :cond_90

    .line 1344
    const-string v6, "Export detailed network stats monitoring data..."

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    invoke-direct {p0, v7, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z

    goto :goto_71

    .line 1349
    :cond_90
    if-eqz v0, :cond_9b

    .line 1350
    const-string v8, "Disable detailed network stats monitoring"

    invoke-virtual {p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    goto :goto_71

    .line 1355
    :cond_9b
    if-eqz v1, :cond_a8

    .line 1356
    const-string v8, "Enable detailed network stats monitoring"

    invoke-virtual {p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    goto :goto_71

    .line 1360
    :cond_a8
    if-eqz v4, :cond_102

    .line 1361
    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    cmp-long v6, v8, v10

    if-gtz v6, :cond_d7

    .line 1362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Monitoring is stopped! last start="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", end="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    .line 1366
    :cond_d7
    const-string v6, "netstats: begin ==="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpIf(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1368
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1369
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1370
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1371
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1372
    const-string v6, "UID-Name Mapping:"

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidNameMap(Ljava/io/PrintWriter;)V

    .line 1374
    const-string v6, "netstats: end ==="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_71

    :cond_102
    move v7, v6

    .line 1378
    goto/16 :goto_71
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 543
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> reset: Begin..."

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    .line 546
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> reset: End!"

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public systemReady()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 517
    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: Begin..."

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action.NETWORK_MONITOR"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "intentSetting":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.android.permission.AUTHORISED_FOR_NETWORK_WAKELOCK_MONITORING"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 526
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkShipAndDebugLevel()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 527
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.monitor_network"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 528
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getSamplingRateFromSetting()I

    move-result v1

    .line 529
    .local v1, "rate":I
    if-ge v1, v6, :cond_33

    .line 530
    const/4 v1, 0x1

    .line 531
    :cond_33
    const-string v2, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> systemReady: rate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    int-to-long v2, v1

    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    .line 533
    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: End!"

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .end local v1    # "rate":I
    :goto_56
    return-void

    .line 536
    :cond_57
    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: ship or debug is low. disable the monitoring!"

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.monitor_network"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    goto :goto_56
.end method
