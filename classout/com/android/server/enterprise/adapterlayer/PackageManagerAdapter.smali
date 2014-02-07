.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private mBackupReturnCode:I

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private final mProcessStats:Lcom/android/internal/os/ProcessStats;

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v1, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v1, v3}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    .line 104
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    .line 105
    iput-boolean v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 110
    iput-object v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 113
    iput-object v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

    .line 117
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreReturnCode:I

    return p1
.end method

.method private enforceBackupAppPermission()I
    .registers 4

    .prologue
    .line 676
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 678
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const-string v1, "android.permission.sec.MDM_APP_BACKUP"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 134
    const-class v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-nez v0, :cond_1c

    .line 135
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 137
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 141
    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .registers 7
    .param p0, "packageURI"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 398
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "archiveFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 402
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 403
    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 405
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_20

    .line 406
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 410
    :cond_20
    const/4 v2, 0x0

    .line 411
    return-object v3
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 126
    if-nez p0, :cond_4

    .line 130
    :cond_3
    :goto_3
    return-object v1

    .line 126
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 127
    :catch_10
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 23
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->enforceBackupAppPermission()I

    .line 740
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 741
    .local v18, "validPkgName":Ljava/lang/String;
    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1b

    if-eqz p2, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 743
    :cond_1b
    const/4 v2, -0x2

    .line 796
    :goto_1c
    return v2

    .line 744
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 747
    :cond_3b
    const/4 v2, -0x3

    goto :goto_1c

    .line 750
    :cond_3d
    :try_start_3d
    new-instance v15, Ljava/lang/SecurityManager;

    invoke-direct {v15}, Ljava/lang/SecurityManager;-><init>()V

    .line 751
    .local v15, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_49} :catch_8f

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 757
    :try_start_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_8c

    move-result-wide v16

    .line 759
    .local v16, "token":J
    :try_start_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_99

    .line 760
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_99

    .line 763
    const-string v2, "PackageManagerAdapter"

    const-string v3, "failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_75} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_75} :catch_139
    .catchall {:try_start_54 .. :try_end_75} :catchall_159

    .line 764
    const/4 v2, -0x2

    .line 790
    const/4 v3, 0x0

    :try_start_77
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 792
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v12, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 764
    monitor-exit v19

    goto :goto_1c

    .line 797
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v16    # "token":J
    :catchall_8c
    move-exception v2

    monitor-exit v19
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_8c

    throw v2

    .line 752
    .end local v15    # "sm":Ljava/lang/SecurityManager;
    :catch_8f
    move-exception v11

    .line 753
    .local v11, "ex":Ljava/lang/SecurityException;
    const-string v2, "PackageManagerAdapter"

    const-string v3, "can\'t write to file descriptor"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/4 v2, -0x2

    goto :goto_1c

    .line 768
    .end local v11    # "ex":Ljava/lang/SecurityException;
    .restart local v15    # "sm":Ljava/lang/SecurityManager;
    .restart local v16    # "token":J
    :cond_99
    :try_start_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;)Z
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_a3} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a3} :catch_139
    .catchall {:try_start_99 .. :try_end_a3} :catchall_159

    move-result v2

    if-nez v2, :cond_be

    .line 769
    const/4 v2, -0x3

    .line 790
    const/4 v3, 0x0

    :try_start_a8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 792
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    monitor-exit v19
    :try_end_bc
    .catchall {:try_start_a8 .. :try_end_bc} :catchall_8c

    goto/16 :goto_1c

    .line 771
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_be
    const/4 v2, 0x1

    :try_start_bf
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 772
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupReturnCode:I

    .line 773
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    .line 774
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v14, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .line 776
    .local v13, "packArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_fe
    .catch Ljava/lang/InterruptedException; {:try_start_bf .. :try_end_fe} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_fe} :catch_139
    .catchall {:try_start_bf .. :try_end_fe} :catchall_159

    .line 790
    const/4 v2, 0x0

    :try_start_ff
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 792
    new-instance v12, Landroid/content/Intent;

    const-string v2, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupReturnCode:I

    monitor-exit v19
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_8c

    goto/16 :goto_1c

    .line 782
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "packArray":[Ljava/lang/String;
    .end local v14    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_119
    move-exception v10

    .line 783
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_11a
    const-string v2, "PackageManagerAdapter"

    const-string v3, "backupApplicationData interrupted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_159

    .line 784
    const/4 v2, -0x2

    .line 790
    const/4 v3, 0x0

    :try_start_123
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 792
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 784
    monitor-exit v19
    :try_end_137
    .catchall {:try_start_123 .. :try_end_137} :catchall_8c

    goto/16 :goto_1c

    .line 785
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "intent":Landroid/content/Intent;
    :catch_139
    move-exception v11

    .line 786
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_13a
    const-string v2, "PackageManagerAdapter"

    const-string v3, "Failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_159

    .line 787
    const/4 v2, -0x2

    .line 790
    const/4 v3, 0x0

    :try_start_143
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 792
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 787
    monitor-exit v19

    goto/16 :goto_1c

    .line 790
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "intent":Landroid/content/Intent;
    :catchall_159
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    .line 792
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 790
    throw v2
    :try_end_16f
    .catchall {:try_start_143 .. :try_end_16f} :catchall_8c
.end method

.method public clearApplicationCacheFiles(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    if-eqz p1, :cond_2c

    .line 162
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .line 164
    .local v0, "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :try_start_d
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v0}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 166
    monitor-enter v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_32

    .line 167
    :goto_13
    :try_start_13
    iget-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_2f

    if-nez v3, :cond_1d

    .line 169
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2f

    goto :goto_13

    .line 170
    :catch_1b
    move-exception v3

    goto :goto_13

    .line 173
    :cond_1d
    const/4 v3, 0x1

    :try_start_1e
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2d

    iget-object v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 175
    const/4 v2, 0x1

    .line 179
    :goto_2b
    monitor-exit v0

    .line 185
    .end local v0    # "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :cond_2c
    :goto_2c
    return v2

    .line 177
    .restart local v0    # "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :cond_2d
    const/4 v2, 0x0

    goto :goto_2b

    .line 179
    :catchall_2f
    move-exception v3

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    .line 180
    :catch_32
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 182
    const-string v3, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public clearUserData(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    if-eqz p1, :cond_35

    .line 207
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .line 209
    .local v1, "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :try_start_d
    sget-object v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 211
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .line 212
    .local v3, "res":Z
    if-nez v3, :cond_36

    .line 215
    const-string v5, "PackageManagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t clear application user data for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .end local v3    # "res":Z
    :cond_35
    :goto_35
    return v4

    .line 217
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .restart local v3    # "res":Z
    :cond_36
    monitor-enter v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_54

    .line 218
    :goto_37
    :try_start_37
    iget-boolean v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_51

    if-nez v5, :cond_41

    .line 220
    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_51

    goto :goto_37

    .line 221
    :catch_3f
    move-exception v5

    goto :goto_37

    .line 224
    :cond_41
    const/4 v5, 0x1

    :try_start_42
    iget-boolean v6, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_60

    iget-object v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 226
    const/4 v4, 0x1

    .line 230
    :goto_4f
    monitor-exit v1

    goto :goto_35

    :catchall_51
    move-exception v5

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_51

    :try_start_53
    throw v5
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_54} :catch_54

    .line 232
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "res":Z
    :catch_54
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 234
    const-string v5, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "res":Z
    :cond_60
    const/4 v4, 0x0

    goto :goto_4f
.end method

.method public deletePackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uninstallFlags"    # I

    .prologue
    .line 305
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 307
    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 309
    monitor-enter v0

    .line 310
    :goto_f
    :try_start_f
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1d

    if-nez v1, :cond_19

    .line 312
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    goto :goto_f

    .line 313
    :catch_17
    move-exception v1

    goto :goto_f

    .line 316
    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1d

    .line 318
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z

    return v1

    .line 316
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    .line 652
    .local v0, "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v0, :cond_11

    .line 653
    invoke-interface {v0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 655
    :cond_11
    return-object v1
.end method

.method public getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUri"    # Landroid/net/Uri;

    .prologue
    .line 349
    new-instance v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;

    invoke-direct {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;-><init>()V

    .line 351
    .local v4, "pkg":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    if-eqz p2, :cond_5b

    .line 353
    :try_start_7
    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 354
    .local v6, "pkgInst":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_37

    if-eqz v6, :cond_37

    .line 355
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 356
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v8, :cond_1b

    .line 357
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 359
    :cond_1b
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_37

    .line 360
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_23
    if-ge v2, v3, :cond_33

    aget-object v7, v0, v2

    .line 361
    .local v7, "sig":Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 363
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_33
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signaturesArray:[Landroid/content/pm/Signature;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    .line 394
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "pkgInst":Landroid/content/pm/PackageParser$Package;
    :cond_37
    :goto_37
    return-object v4

    .line 366
    :catch_38
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5b
    if-nez p1, :cond_99

    const-string p1, ""

    .line 372
    :goto_5f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_37

    .line 374
    :try_start_65
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x1040

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 376
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_37

    .line 377
    iput-object p1, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 378
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v8, :cond_81

    .line 379
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 381
    :cond_81
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_37

    .line 382
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_89
    if-ge v2, v3, :cond_37

    aget-object v7, v0, v2

    .line 383
    .restart local v7    # "sig":Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_96} :catch_9e

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 371
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    .line 387
    :catch_9e
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37
.end method

.method public getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "pkgst":Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 494
    if-eqz p1, :cond_2e

    .line 495
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 496
    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 498
    .local v2, "token":J
    :try_start_10
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 499
    monitor-enter v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_32

    .line 500
    :goto_1a
    :try_start_1a
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_2f

    if-nez v4, :cond_24

    .line 502
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    goto :goto_1a

    .line 503
    :catch_22
    move-exception v4

    goto :goto_1a

    .line 506
    :cond_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_2f

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_2e

    .line 510
    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 514
    .end local v0    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .end local v2    # "token":J
    :cond_2e
    return-object v1

    .line 506
    .restart local v0    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .restart local v2    # "token":J
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 508
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    iget-boolean v5, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_3c

    .line 510
    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 508
    :cond_3c
    throw v4
.end method

.method public getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledWidgetProviders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    .line 639
    .local v0, "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v0, :cond_1b

    .line 640
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v1

    .line 644
    :goto_1a
    return-object v1

    .line 642
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 663
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 664
    if-eqz p1, :cond_13

    .line 666
    :try_start_7
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_14

    move-result-object v1

    .line 672
    :cond_13
    :goto_13
    return-object v1

    .line 668
    :catch_14
    move-exception v0

    .line 669
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public getProcessCpuUsage(I)J
    .registers 11
    .param p1, "pid"    # I

    .prologue
    const-wide/16 v5, 0x0

    .line 419
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 421
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    .line 422
    .local v0, "count":I
    const/4 v2, 0x0

    .line 423
    .local v2, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1b

    .line 424
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7, v1}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v2

    .line 425
    iget v7, v2, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v7, p1, :cond_1e

    .line 430
    :cond_1b
    if-nez v2, :cond_21

    .line 441
    :goto_1d
    return-wide v5

    .line 423
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 434
    :cond_21
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v3, v7

    .line 437
    .local v3, "totalCPUTime":J
    cmp-long v5, v3, v5

    if-nez v5, :cond_43

    .line 438
    const-wide/16 v3, 0x1

    .line 441
    :cond_43
    iget v5, v2, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v6, v2, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    div-long/2addr v5, v3

    goto :goto_1d
.end method

.method public getTopCpuUsageProcesses(IZ)Ljava/util/List;
    .registers 16
    .param p1, "aAppCount"    # I
    .param p2, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 447
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v2

    .line 449
    .local v2, "count":I
    if-lez p1, :cond_f

    if-ge v2, p1, :cond_10

    .line 450
    :cond_f
    move p1, v2

    .line 453
    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v9, v11

    .line 458
    .local v9, "totalCPUTime":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_39

    .line 459
    const-wide/16 v9, 0x1

    .line 462
    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v1, "appPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p2, :cond_68

    .line 464
    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 466
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 468
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 469
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 473
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_68
    const/4 v8, 0x0

    .line 475
    .local v8, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6a
    if-ge v3, p1, :cond_9d

    .line 476
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11, v3}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v8

    .line 478
    if-eqz v8, :cond_9a

    if-nez p2, :cond_82

    iget v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 479
    :cond_82
    new-instance v5, Landroid/app/enterprise/AppInfo;

    invoke-direct {v5}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 480
    .local v5, "info":Landroid/app/enterprise/AppInfo;
    iget-object v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    iput-object v11, v5, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 481
    iget v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v12, v8, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x64

    int-to-long v11, v11

    div-long/2addr v11, v9

    long-to-double v11, v11

    iput-wide v11, v5, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 482
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v5    # "info":Landroid/app/enterprise/AppInfo;
    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 485
    :cond_9d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a4

    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :goto_a3
    return-object v7

    .restart local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_a4
    const/4 v7, 0x0

    goto :goto_a3
.end method

.method public initProcessStats()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    .line 416
    return-void
.end method

.method public installPackage(Ljava/io/File;I)Ljava/lang/String;
    .registers 7
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "installFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 256
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 257
    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2, v1}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 259
    monitor-enter v0

    .line 260
    :goto_14
    :try_start_14
    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->finished:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_29

    if-nez v2, :cond_1e

    .line 262
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_29

    goto :goto_14

    .line 263
    :catch_1c
    move-exception v2

    goto :goto_14

    .line 266
    :cond_1e
    :try_start_1e
    iget v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 267
    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->pkgName:Ljava/lang/String;

    monitor-exit v0

    .line 269
    :goto_26
    return-object v1

    :cond_27
    monitor-exit v0

    goto :goto_26

    .line 271
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public installPackage(Ljava/io/File;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;I)V
    .registers 8
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "icb"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;
    .param p3, "installFlags"    # I

    .prologue
    .line 294
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 302
    return-void
.end method

.method public isBackupEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1d

    .line 826
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 828
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1d

    .line 829
    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v0, 0x1

    .line 834
    :goto_1c
    return v0

    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    goto :goto_1c
.end method

.method public readAppSizeInfo()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    const-string v11, "PackageManagerAdapter"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 598
    .local v3, "lPkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v6, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 601
    .local v9, "token":J
    :try_start_1b
    new-instance v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 602
    .local v5, "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 603
    .local v2, "lPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 604
    .local v4, "lPkgName":Ljava/lang/String;
    if-eqz v4, :cond_24

    .line 605
    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 606
    monitor-enter v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_69
    .catchall {:try_start_1b .. :try_end_3e} :catchall_81

    .line 607
    :goto_3e
    :try_start_3e
    iget-boolean v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_7e

    if-nez v11, :cond_48

    .line 609
    :try_start_42
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_7e

    goto :goto_3e

    .line 610
    :catch_46
    move-exception v11

    goto :goto_3e

    .line 613
    :cond_48
    :try_start_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_7e

    .line 614
    :try_start_49
    iget-boolean v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_24

    .line 615
    iget-object v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_24

    .line 616
    iget-object v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    .line 620
    .local v7, "lTotalSize":J
    new-instance v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    invoke-direct {v11, v4, v7, v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_68} :catch_69
    .catchall {:try_start_49 .. :try_end_68} :catchall_81

    goto :goto_24

    .line 625
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lPkgName":Ljava/lang/String;
    .end local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .end local v7    # "lTotalSize":J
    :catch_69
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string v11, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_81

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_73
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    const-string v11, "PackageManagerAdapter"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-object v6

    .line 613
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "lPkgName":Ljava/lang/String;
    .restart local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :catchall_7e
    move-exception v11

    :try_start_7f
    monitor-exit v5
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v11
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_81} :catch_69
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    .line 628
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lPkgName":Ljava/lang/String;
    .end local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :catchall_81
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v8, -0x3

    const/4 v7, -0x2

    .line 683
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->enforceBackupAppPermission()I

    .line 684
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "validPkgName":Ljava/lang/String;
    if-eqz v6, :cond_19

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    if-nez v9, :cond_1a

    .line 734
    :cond_19
    :goto_19
    return v7

    .line 688
    :cond_1a
    iget-boolean v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    if-nez v9, :cond_2e

    iget-boolean v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    :cond_2e
    move v7, v8

    .line 691
    goto :goto_19

    .line 694
    :cond_30
    :try_start_30
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    .line 695
    .local v3, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_3c} :catch_78

    .line 701
    iget-object v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v9

    .line 702
    :try_start_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_75

    move-result-wide v4

    .line 705
    .local v4, "token":J
    const/4 v10, -0x2

    :try_start_44
    iput v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreReturnCode:I

    .line 706
    iget-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    .line 707
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 709
    iget-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    .line 710
    const-string v8, "PackageManagerAdapter"

    const-string v10, "failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_61} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_61} :catch_df
    .catchall {:try_start_44 .. :try_end_61} :catchall_fc

    .line 728
    const/4 v8, 0x0

    :try_start_62
    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 730
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v2, "intent":Landroid/content/Intent;
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    monitor-exit v9

    goto :goto_19

    .line 735
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catchall_75
    move-exception v7

    monitor-exit v9
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_75

    throw v7

    .line 696
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_78
    move-exception v1

    .line 697
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v8, "PackageManagerAdapter"

    const-string v9, "can\'t read from file descriptor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 714
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    .restart local v4    # "token":J
    :cond_81
    :try_start_81
    iget-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v6}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;)Z
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_87} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_87} :catch_df
    .catchall {:try_start_81 .. :try_end_87} :catchall_fc

    move-result v10

    if-nez v10, :cond_a0

    .line 728
    const/4 v7, 0x0

    :try_start_8b
    iput-boolean v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 730
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_75

    move v7, v8

    goto/16 :goto_19

    .line 718
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a0
    const/4 v8, 0x1

    :try_start_a1
    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 719
    iput-object v6, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

    .line 720
    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, p2}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 721
    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_b2} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b2} :catch_df
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_fc

    .line 728
    const/4 v7, 0x0

    :try_start_b3
    iput-boolean v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 730
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    iget v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreReturnCode:I

    monitor-exit v9

    goto/16 :goto_19

    .line 722
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_c9
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 730
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_b3 .. :try_end_dd} :catchall_75

    goto/16 :goto_19

    .line 724
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_df
    move-exception v1

    .line 725
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_e0
    const-string v8, "PackageManagerAdapter"

    const-string v10, "Failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_fc

    .line 728
    const/4 v8, 0x0

    :try_start_e8
    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 730
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    monitor-exit v9

    goto/16 :goto_19

    .line 728
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_fc
    move-exception v7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    .line 730
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    throw v7
    :try_end_110
    .catchall {:try_start_e8 .. :try_end_110} :catchall_75
.end method

.method public revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 852
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setBackupEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1c

    .line 839
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 841
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1c

    .line 842
    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_1b
    return-void

    .line 847
    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    goto :goto_1b
.end method

.method public setLicensePermissions(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 856
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
