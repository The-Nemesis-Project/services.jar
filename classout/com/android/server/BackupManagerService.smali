.class Lcom/android/server/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$3;,
        Lcom/android/server/BackupManagerService$EdmFullObserver;,
        Lcom/android/server/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/BackupManagerService$PerformClearTask;,
        Lcom/android/server/BackupManagerService$PerformRestoreTask;,
        Lcom/android/server/BackupManagerService$RestoreState;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask;,
        Lcom/android/server/BackupManagerService$RestorePolicy;,
        Lcom/android/server/BackupManagerService$FileMetadata;,
        Lcom/android/server/BackupManagerService$PerformFullBackupTask;,
        Lcom/android/server/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/BackupManagerService$ObbServiceClient;,
        Lcom/android/server/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/BackupManagerService$BackupState;,
        Lcom/android/server/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/BackupManagerService$TransportConnection;,
        Lcom/android/server/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/BackupManagerService$BackupHandler;,
        Lcom/android/server/BackupManagerService$Operation;,
        Lcom/android/server/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/BackupManagerService$FullBackupParams;,
        Lcom/android/server/BackupManagerService$FullParams;,
        Lcom/android/server/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/BackupManagerService$ClearParams;,
        Lcom/android/server/BackupManagerService$RestoreParams;,
        Lcom/android/server/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/BackupManagerService$BackupRequest;
    }
.end annotation


# static fields
.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x1

.field private static final BACKUP_INTERVAL:J = 0x36ee80L

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field private static final FIRST_BACKUP_INTERVAL:J = 0x2932e00L

.field private static final FUZZ_MILLIS:I = 0x493e0

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field private static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_BACKUP:I = 0x2

.field private static final MSG_RUN_FULL_RESTORE:I = 0xa

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_CLEAR_ACTION:Ljava/lang/String; = "android.app.backup.intent.CLEAR"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static final sFullBackupExceptionPackages:[Ljava/lang/String;


# instance fields
.field isEdmBackupFail:Z

.field isEdmBackupRequest:Z

.field isEdmRestoreFail:Z

.field isEdmRestoreRequest:Z

.field mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEdmBackupAppPkgName:Ljava/lang/String;

.field mEdmFullObserver:Lcom/android/server/BackupManagerService$EdmFullObserver;

.field mEdmRestoreAppPkgName:Ljava/lang/String;

.field mEdmUserId:I

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mExceptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field private mMountService:Landroid/os/storage/IMountService;

.field volatile mNextBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransportConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$TransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;

.field needUpdateBackupAlarm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 242
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.sharedstoragebackup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BackupManagerService;->sFullBackupExceptionPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 813
    invoke-direct/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 231
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    .line 232
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    .line 233
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->needUpdateBackupAlarm:Z

    .line 234
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    .line 235
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->isEdmRestoreFail:Z

    .line 236
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    .line 237
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    .line 239
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/BackupManagerService;->mEdmUserId:I

    .line 247
    new-instance v24, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/server/BackupManagerService;->sFullBackupExceptionPackages:[Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mExceptionList:Ljava/util/List;

    .line 252
    new-instance v24, Landroid/util/SparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 267
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 274
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 280
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 289
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    .line 292
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 296
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    .line 298
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    .line 300
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransportConnections:Ljava/util/ArrayList;

    .line 466
    new-instance v24, Landroid/util/SparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 467
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 468
    new-instance v24, Ljava/util/Random;

    invoke-direct/range {v24 .. v24}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 470
    new-instance v24, Landroid/util/SparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    .line 484
    new-instance v24, Ljava/security/SecureRandom;

    invoke-direct/range {v24 .. v24}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 499
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 503
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 504
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 505
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 509
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    .line 1482
    new-instance v24, Lcom/android/server/BackupManagerService$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$1;-><init>(Lcom/android/server/BackupManagerService;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 814
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 816
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 817
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 819
    const-string v24, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/AlarmManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 820
    const-string v24, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PowerManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 821
    const-string v24, "mount"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/BackupManagerService;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 826
    new-instance v24, Landroid/os/HandlerThread;

    const-string v25, "backup"

    const/16 v26, 0xa

    invoke-direct/range {v24 .. v26}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->start()V

    .line 828
    new-instance v24, Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 832
    .local v19, "resolver":Landroid/content/ContentResolver;
    const-string v24, "backup_enabled"

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_50f

    const/4 v4, 0x1

    .line 834
    .local v4, "areEnabled":Z
    :goto_1d9
    const-string v24, "device_provisioned"

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_512

    const/16 v24, 0x1

    :goto_1eb
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 836
    const-string v24, "backup_auto_restore"

    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_516

    const/16 v24, 0x1

    :goto_203
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 839
    new-instance v24, Lcom/android/server/BackupManagerService$ProvisionedObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    .line 840
    const-string v24, "device_provisioned"

    invoke-static/range {v24 .. v24}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 846
    new-instance v24, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v25

    const-string v26, "backup"

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v24

    if-nez v24, :cond_27d

    .line 849
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELinux restorecon failed on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_27d
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 853
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v25, v0

    const-string v26, "pwhash"

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_2ec

    .line 855
    const/4 v9, 0x0

    .line 856
    .local v9, "fin":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 858
    .local v13, "in":Ljava/io/DataInputStream;
    :try_start_2a8
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2a8 .. :try_end_2b5} :catch_51a
    .catchall {:try_start_2a8 .. :try_end_2b5} :catchall_538

    .line 859
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .local v10, "fin":Ljava/io/FileInputStream;
    :try_start_2b5
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v24, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_2b5 .. :try_end_2c3} :catch_5c2
    .catchall {:try_start_2b5 .. :try_end_2c3} :catchall_5b9

    .line 862
    .end local v13    # "in":Ljava/io/DataInputStream;
    .local v14, "in":Ljava/io/DataInputStream;
    :try_start_2c3
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 863
    .local v21, "saltLen":I
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 864
    .local v20, "salt":[B
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 865
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 866
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_2e2
    .catch Ljava/io/IOException; {:try_start_2c3 .. :try_end_2e2} :catch_5c6
    .catchall {:try_start_2c3 .. :try_end_2e2} :catchall_5bd

    .line 871
    if-eqz v14, :cond_2e7

    :try_start_2e4
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 872
    :cond_2e7
    if-eqz v10, :cond_2ec

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2ec
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2ec} :catch_5b2

    .line 880
    .end local v10    # "fin":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .end local v20    # "salt":[B
    .end local v21    # "saltLen":I
    :cond_2ec
    :goto_2ec
    new-instance v24, Lcom/android/server/BackupManagerService$RunBackupReceiver;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 882
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v24, "android.app.backup.intent.RUN"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v24, v0

    const-string v25, "android.permission.BACKUP"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 886
    new-instance v24, Lcom/android/server/BackupManagerService$RunInitializeReceiver;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 887
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 888
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string v24, "android.app.backup.intent.INIT"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v24, v0

    const-string v25, "android.permission.BACKUP"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 893
    new-instance v24, Lcom/android/server/BackupManagerService$EdmFullObserver;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$EdmFullObserver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEdmFullObserver:Lcom/android/server/BackupManagerService$EdmFullObserver;

    .line 896
    new-instance v5, Landroid/content/Intent;

    const-string v24, "android.app.backup.intent.RUN"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v5, "backupIntent":Landroid/content/Intent;
    const/high16 v24, 0x40000000

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 898
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 900
    new-instance v16, Landroid/content/Intent;

    const-string v24, "android.app.backup.intent.INIT"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v16, "initIntent":Landroid/content/Intent;
    const/high16 v24, 0x40000000

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 902
    const/16 v24, 0x5

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 905
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v25, v0

    const-string v26, "pending"

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 907
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->initPackageTracking()V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 916
    const/16 v24, 0x0

    :try_start_3e3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 917
    monitor-exit v25
    :try_end_3eb
    .catchall {:try_start_3e3 .. :try_end_3eb} :catchall_544

    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "backup_transport"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 923
    const-string v24, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_411

    .line 924
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 926
    :cond_411
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Starting with transport "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.backup.TRANSPORT_HOST"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v23, "transportServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 933
    .local v11, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v25, "BackupManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Found transports: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-nez v11, :cond_547

    const-string v24, "null"

    :goto_461
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    if-eqz v11, :cond_58c

    .line 942
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_477
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_58c

    .line 944
    :try_start_47f
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 945
    .local v15, "info":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    iget-object v0, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 946
    .local v18, "packInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    and-int v24, v24, v25

    if-eqz v24, :cond_551

    .line 947
    new-instance v22, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v15, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .local v22, "svcName":Landroid/content/ComponentName;
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Binding to transport host "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 952
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 953
    new-instance v6, Lcom/android/server/BackupManagerService$TransportConnection;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 954
    .local v6, "connection":Lcom/android/server/BackupManagerService$TransportConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mTransportConnections:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    const/16 v24, 0x1

    sget-object v25, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_50b
    .catch Ljava/lang/Exception; {:try_start_47f .. :try_end_50b} :catch_56e

    .line 942
    .end local v6    # "connection":Lcom/android/server/BackupManagerService$TransportConnection;
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "svcName":Landroid/content/ComponentName;
    :goto_50b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_477

    .line 832
    .end local v4    # "areEnabled":Z
    .end local v5    # "backupIntent":Landroid/content/Intent;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "i":I
    .end local v16    # "initIntent":Landroid/content/Intent;
    .end local v23    # "transportServiceIntent":Landroid/content/Intent;
    :cond_50f
    const/4 v4, 0x0

    goto/16 :goto_1d9

    .line 834
    .restart local v4    # "areEnabled":Z
    :cond_512
    const/16 v24, 0x0

    goto/16 :goto_1eb

    .line 836
    :cond_516
    const/16 v24, 0x0

    goto/16 :goto_203

    .line 867
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catch_51a
    move-exception v7

    .line 868
    .local v7, "e":Ljava/io/IOException;
    :goto_51b
    :try_start_51b
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to read saved backup pw hash"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_522
    .catchall {:try_start_51b .. :try_end_522} :catchall_538

    .line 871
    if-eqz v13, :cond_527

    :try_start_524
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    .line 872
    :cond_527
    if-eqz v9, :cond_2ec

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_52c
    .catch Ljava/io/IOException; {:try_start_524 .. :try_end_52c} :catch_52e

    goto/16 :goto_2ec

    .line 873
    :catch_52e
    move-exception v7

    .line 874
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to close streams"

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_533
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ec

    .line 870
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catchall_538
    move-exception v24

    .line 871
    :goto_539
    if-eqz v13, :cond_53e

    :try_start_53b
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    .line 872
    :cond_53e
    if-eqz v9, :cond_543

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_543
    .catch Ljava/io/IOException; {:try_start_53b .. :try_end_543} :catch_5a9

    .line 870
    :cond_543
    :goto_543
    throw v24

    .line 917
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "backupIntent":Landroid/content/Intent;
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    .restart local v16    # "initIntent":Landroid/content/Intent;
    :catchall_544
    move-exception v24

    :try_start_545
    monitor-exit v25
    :try_end_546
    .catchall {:try_start_545 .. :try_end_546} :catchall_544

    throw v24

    .line 933
    .restart local v11    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "transportServiceIntent":Landroid/content/Intent;
    :cond_547
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    goto/16 :goto_461

    .line 959
    .restart local v12    # "i":I
    .restart local v15    # "info":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_551
    :try_start_551
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Transport package not privileged: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56d
    .catch Ljava/lang/Exception; {:try_start_551 .. :try_end_56d} :catch_56e

    goto :goto_50b

    .line 961
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v18    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_56e
    move-exception v7

    .line 962
    .local v7, "e":Ljava/lang/Exception;
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Problem resolving transport service: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50b

    .line 969
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "i":I
    :cond_58c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->parseLeftoverJournals()V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const-string v26, "*backup*"

    invoke-virtual/range {v24 .. v26}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 975
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService;->setBackupEnabled(Z)V

    .line 976
    return-void

    .line 873
    .end local v5    # "backupIntent":Landroid/content/Intent;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "initIntent":Landroid/content/Intent;
    .end local v23    # "transportServiceIntent":Landroid/content/Intent;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catch_5a9
    move-exception v7

    .line 874
    .local v7, "e":Ljava/io/IOException;
    const-string v25, "BackupManagerService"

    const-string v26, "Unable to close streams"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_543

    .line 873
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "salt":[B
    .restart local v21    # "saltLen":I
    :catch_5b2
    move-exception v7

    .line 874
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to close streams"

    goto/16 :goto_533

    .line 870
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .end local v20    # "salt":[B
    .end local v21    # "saltLen":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    :catchall_5b9
    move-exception v24

    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_539

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :catchall_5bd
    move-exception v24

    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_539

    .line 867
    .end local v9    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    :catch_5c2
    move-exception v7

    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_51b

    .end local v9    # "fin":Ljava/io/FileInputStream;
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :catch_5c6
    move-exception v7

    move-object v13, v14

    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_51b
.end method

.method static synthetic access$000(Lcom/android/server/BackupManagerService;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/BackupManagerService;I)[B
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/BackupManagerService;[B[BI)[B
    .registers 5
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BackupManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->warnEdmAdminOperationCompleted()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;
    .param p2, "x2"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashSet;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/BackupManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/BackupManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1579
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1580
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1a

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1581
    :cond_1a
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1582
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1583
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_32

    .line 1584
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1585
    .restart local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1587
    :cond_32
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1591
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling backup for new app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4

    .line 1595
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uid":I
    :cond_57
    return-void
.end method

.method private buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;
    .registers 9
    .param p1, "pwArray"    # [C
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1172
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1173
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x100

    invoke-direct {v2, p1, p2, p3, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1174
    .local v2, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_10} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_1c

    move-result-object v3

    .line 1180
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "ks":Ljava/security/spec/KeySpec;
    :goto_11
    return-object v3

    .line 1175
    :catch_12
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "BackupManagerService"

    const-string v4, "Invalid key spec for PBKDF2!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :goto_1a
    const/4 v3, 0x0

    goto :goto_11

    .line 1177
    :catch_1c
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "BackupManagerService"

    const-string v4, "PBKDF2 unavailable!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 6
    .param p1, "pw"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1184
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1185
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_f

    .line 1186
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 1188
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "pw"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1167
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # [B

    .prologue
    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1193
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 1194
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1196
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5335
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 5336
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 5337
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5343
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v1, 0xb04

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5345
    if-nez p2, :cond_34

    .line 5346
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5375
    :goto_33
    return-void

    .line 5351
    :cond_34
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5353
    :try_start_37
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 5356
    new-instance v0, Lcom/android/server/BackupManagerService$BackupRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 5357
    .local v0, "req":Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_65

    .line 5358
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now staging backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5363
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 5374
    .end local v0    # "req":Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_65
    monitor-exit v2

    goto :goto_33

    :catchall_67
    move-exception v1

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_37 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5381
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 5383
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 5384
    :try_start_16
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    monitor-exit v5

    .line 5400
    :goto_23
    return-object v4

    .line 5385
    :catchall_24
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v4

    .line 5390
    :cond_27
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5391
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 5392
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5393
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    if-ge v1, v0, :cond_48

    .line 5394
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 5395
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_45

    .line 5396
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5393
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 5399
    .end local v2    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_48
    monitor-exit v5

    move-object v4, v3

    .line 5400
    goto :goto_23

    .line 5399
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_4b
    move-exception v4

    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4b

    throw v4
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 28
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 6474
    :try_start_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Backup Manager is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_226

    const-string v22, "enabled"

    :goto_20
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    move/from16 v22, v0

    if-nez v22, :cond_22a

    const-string v22, "not "

    :goto_3c
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "provisioned / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v22

    if-nez v22, :cond_22e

    const-string v22, "not "

    :goto_5c
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "pending init"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6477
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Auto-restore is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    move/from16 v22, v0

    if-eqz v22, :cond_232

    const-string v22, "enabled"

    :goto_92
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b6

    const-string v22, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6479
    :cond_b6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Last backup pass started: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " (now = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x29

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  next scheduled: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6483
    const-string v22, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6484
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_136
    if-ge v12, v13, :cond_26b

    aget-object v19, v5, v12

    .line 6485
    .local v19, "t":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_236

    const-string v22, "  * "

    :goto_151
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16c
    .catchall {:try_start_7 .. :try_end_16c} :catchall_2d0

    .line 6487
    :try_start_16c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v20

    .line 6488
    .local v20, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6489
    .local v7, "dir":Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       destination: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6490
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       intent: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6491
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, "arr$":[Ljava/io/File;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_1d9
    if-ge v11, v14, :cond_266

    aget-object v9, v6, v11

    .line 6492
    .local v9, "f":Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " - "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " state bytes"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_223} :catch_23a
    .catchall {:try_start_16c .. :try_end_223} :catchall_2d0

    .line 6491
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d9

    .line 6474
    .end local v6    # "arr$":[Ljava/io/File;
    .end local v7    # "dir":Ljava/io/File;
    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v19    # "t":Ljava/lang/String;
    .end local v20    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_226
    :try_start_226
    const-string v22, "disabled"

    goto/16 :goto_20

    :cond_22a
    const-string v22, ""

    goto/16 :goto_3c

    :cond_22e
    const-string v22, ""

    goto/16 :goto_5c

    .line 6477
    :cond_232
    const-string v22, "disabled"

    goto/16 :goto_92

    .line 6485
    .restart local v12    # "i$":I
    .restart local v19    # "t":Ljava/lang/String;
    :cond_236
    const-string v22, "    "

    goto/16 :goto_151

    .line 6494
    .end local v12    # "i$":I
    :catch_23a
    move-exception v8

    .line 6495
    .local v8, "e":Ljava/lang/Exception;
    const-string v22, "BackupManagerService"

    const-string v24, "Error in transport"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6496
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        Error: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6484
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_266
    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto/16 :goto_136

    .line 6500
    .end local v19    # "t":Ljava/lang/String;
    :cond_26b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending init: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12    # "i$":I
    .local v11, "i$":Ljava/util/Iterator;
    :goto_2a1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2d3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 6502
    .local v18, "s":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a1

    .line 6545
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "s":Ljava/lang/String;
    :catchall_2d0
    move-exception v22

    monitor-exit v23
    :try_end_2d2
    .catchall {:try_start_226 .. :try_end_2d2} :catchall_2d0

    throw v22

    .line 6506
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2d3
    :try_start_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_2da
    .catchall {:try_start_2d3 .. :try_end_2da} :catchall_2d0

    .line 6507
    :try_start_2da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_32b

    .line 6508
    const-string v22, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2f9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_32b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 6510
    .restart local v18    # "s":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "   "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f9

    .line 6513
    .end local v18    # "s":Ljava/lang/String;
    :catchall_328
    move-exception v22

    monitor-exit v24
    :try_end_32a
    .catchall {:try_start_2da .. :try_end_32a} :catchall_328

    :try_start_32a
    throw v22
    :try_end_32b
    .catchall {:try_start_32a .. :try_end_32b} :catchall_2d0

    :cond_32b
    :try_start_32b
    monitor-exit v24
    :try_end_32c
    .catchall {:try_start_32b .. :try_end_32c} :catchall_328

    .line 6516
    :try_start_32c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 6517
    .local v3, "N":I
    const-string v22, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6518
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_340
    if-ge v10, v3, :cond_3a0

    .line 6519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 6520
    .local v21, "uid":I
    const-string v22, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6521
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 6523
    .local v15, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_370
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_39d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6524
    .local v4, "app":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_370

    .line 6518
    .end local v4    # "app":Ljava/lang/String;
    :cond_39d
    add-int/lit8 v10, v10, 0x1

    goto :goto_340

    .line 6528
    .end local v15    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "uid":I
    :cond_3a0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ancestral packages: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-nez v22, :cond_40d

    const-string v22, "none"

    :goto_3b9
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-eqz v22, :cond_41c

    .line 6531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3de
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_41c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6532
    .local v16, "pkg":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3de

    .line 6528
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_40d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_3b9

    .line 6536
    :cond_41c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ever backed up: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_452
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_481

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6538
    .restart local v16    # "pkg":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_452

    .line 6541
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending backup: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4bb
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4ea

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 6543
    .local v17, "req":Lcom/android/server/BackupManagerService$BackupRequest;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4bb

    .line 6545
    .end local v17    # "req":Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_4ea
    monitor-exit v23
    :try_end_4eb
    .catchall {:try_start_32c .. :try_end_4eb} :catchall_2d0

    .line 6546
    return-void
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 1753
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 1754
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 1755
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_25

    .line 1756
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_25
    monitor-exit v2

    return-object v0

    .line 1759
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1201
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 1202
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1205
    :cond_16
    new-array v2, v0, [B

    .line 1206
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_33

    .line 1207
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1206
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 1209
    :cond_33
    return-object v2
.end method

.method private initPackageTracking()V
    .registers 23

    .prologue
    .line 1046
    const-string v19, "BackupManagerService"

    const-string v20, "Initializing package tracking"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "ancestral"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 1051
    :try_start_1a
    new-instance v17, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1052
    .local v17, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    .line 1053
    .local v18, "version":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_73

    .line 1054
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1055
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1057
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 1058
    .local v10, "numPackages":I
    if-ltz v10, :cond_73

    .line 1059
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1060
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5f
    if-ge v6, v10, :cond_73

    .line 1061
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 1062
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 1066
    .end local v6    # "i":I
    .end local v10    # "numPackages":I
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_73
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_76} :catch_f4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_76} :catch_fe

    .line 1077
    .end local v17    # "tf":Ljava/io/RandomAccessFile;
    .end local v18    # "version":I
    :goto_76
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "processed"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    .line 1078
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "processed.new"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1083
    .local v16, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_a5

    .line 1084
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 1089
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_153

    .line 1090
    const/4 v14, 0x0

    .line 1091
    .local v14, "temp":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 1094
    .local v7, "in":Ljava/io/RandomAccessFile;
    :try_start_b3
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v19, "rws"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/io/EOFException; {:try_start_b3 .. :try_end_be} :catch_10c
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_be} :catch_1a7
    .catchall {:try_start_b3 .. :try_end_be} :catchall_1c0

    .line 1095
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .local v15, "temp":Ljava/io/RandomAccessFile;
    :try_start_be
    new-instance v8, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/io/EOFException; {:try_start_be .. :try_end_cf} :catch_1e3
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_cf} :catch_1dc
    .catchall {:try_start_be .. :try_end_cf} :catchall_1d5

    .line 1099
    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .local v8, "in":Ljava/io/RandomAccessFile;
    :goto_cf
    :try_start_cf
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_d2
    .catch Ljava/io/EOFException; {:try_start_cf .. :try_end_d2} :catch_1e7
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_1df
    .catchall {:try_start_cf .. :try_end_d2} :catchall_1d8

    move-result-object v11

    .line 1101
    .local v11, "pkg":Ljava/lang/String;
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1102
    .local v9, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1103
    invoke-virtual {v15, v11}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_f1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d3 .. :try_end_f1} :catch_f2
    .catch Ljava/io/EOFException; {:try_start_d3 .. :try_end_f1} :catch_1e7
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_f1} :catch_1df
    .catchall {:try_start_d3 .. :try_end_f1} :catchall_1d8

    goto :goto_cf

    .line 1105
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :catch_f2
    move-exception v19

    goto :goto_cf

    .line 1067
    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .end local v16    # "tempProcessedFile":Ljava/io/File;
    :catch_f4
    move-exception v5

    .line 1069
    .local v5, "fnf":Ljava/io/FileNotFoundException;
    const-string v19, "BackupManagerService"

    const-string v20, "No ancestral data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 1070
    .end local v5    # "fnf":Ljava/io/FileNotFoundException;
    :catch_fe
    move-exception v3

    .line 1071
    .local v3, "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to read token file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_76

    .line 1110
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "tempProcessedFile":Ljava/io/File;
    :catch_10c
    move-exception v3

    .line 1113
    .local v3, "e":Ljava/io/EOFException;
    :goto_10d
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_149

    .line 1114
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error renaming "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_10d .. :try_end_149} :catchall_1c0

    .line 1119
    :cond_149
    if-eqz v14, :cond_14e

    :try_start_14b
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_1d0

    .line 1120
    :cond_14e
    :goto_14e
    if-eqz v7, :cond_153

    :try_start_150
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_1be

    .line 1126
    .end local v3    # "e":Ljava/io/EOFException;
    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    :cond_153
    :goto_153
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1127
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1128
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1132
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1133
    .local v13, "sdFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1134
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1136
    return-void

    .line 1116
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    :catch_1a7
    move-exception v3

    .line 1117
    .local v3, "e":Ljava/io/IOException;
    :goto_1a8
    :try_start_1a8
    const-string v19, "BackupManagerService"

    const-string v20, "Error in processed file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_1a8 .. :try_end_1b3} :catchall_1c0

    .line 1119
    if-eqz v14, :cond_1b8

    :try_start_1b5
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1d3

    .line 1120
    :cond_1b8
    :goto_1b8
    if-eqz v7, :cond_153

    :try_start_1ba
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1bd} :catch_1be

    goto :goto_153

    .end local v3    # "e":Ljava/io/IOException;
    :catch_1be
    move-exception v19

    goto :goto_153

    .line 1119
    :catchall_1c0
    move-exception v19

    :goto_1c1
    if-eqz v14, :cond_1c6

    :try_start_1c3
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1cc

    .line 1120
    :cond_1c6
    :goto_1c6
    if-eqz v7, :cond_1cb

    :try_start_1c8
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1ce

    .line 1119
    :cond_1cb
    :goto_1cb
    throw v19

    :catch_1cc
    move-exception v20

    goto :goto_1c6

    .line 1120
    :catch_1ce
    move-exception v20

    goto :goto_1cb

    .line 1119
    .local v3, "e":Ljava/io/EOFException;
    :catch_1d0
    move-exception v19

    goto/16 :goto_14e

    .local v3, "e":Ljava/io/IOException;
    :catch_1d3
    move-exception v19

    goto :goto_1b8

    .end local v3    # "e":Ljava/io/IOException;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catchall_1d5
    move-exception v19

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1c1

    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catchall_1d8
    move-exception v19

    move-object v7, v8

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1c1

    .line 1116
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_1dc
    move-exception v3

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1a8

    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_1df
    move-exception v3

    move-object v7, v8

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1a8

    .line 1110
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_1e3
    move-exception v3

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_10d

    .end local v7    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_1e7
    move-exception v3

    move-object v7, v8

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v7    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_10d
.end method

.method private makeKeyChecksum([B[BI)[B
    .registers 8
    .param p1, "pwBytes"    # [B
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 1213
    array-length v3, p1

    new-array v2, v3, [C

    .line 1214
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_f

    .line 1215
    aget-byte v3, p1, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1214
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1218
    :cond_f
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1219
    .local v0, "checksum":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .registers 12

    .prologue
    .line 1139
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v6, :cond_7f

    aget-object v2, v0, v3

    .line 1140
    .local v2, "f":Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v8

    if-eqz v8, :cond_51

    .line 1144
    :cond_18
    const/4 v4, 0x0

    .line 1146
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_19
    const-string v8, "BackupManagerService"

    const-string v9, "Found stale backup journal, scheduling"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_27} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_54
    .catchall {:try_start_19 .. :try_end_27} :catchall_75

    .line 1149
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_27
    :try_start_27
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 1150
    .local v7, "packageName":Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-direct {p0, v7}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_46} :catch_47
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_87
    .catchall {:try_start_27 .. :try_end_46} :catchall_84

    goto :goto_27

    .line 1153
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_47
    move-exception v8

    move-object v4, v5

    .line 1159
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :goto_49
    if-eqz v4, :cond_4e

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_80

    .line 1160
    :cond_4e
    :goto_4e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1139
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1155
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_54
    move-exception v1

    .line 1156
    .local v1, "e":Ljava/lang/Exception;
    :goto_55
    :try_start_55
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_75

    .line 1159
    if-eqz v4, :cond_4e

    :try_start_6f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_4e

    :catch_73
    move-exception v8

    goto :goto_4e

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v8

    :goto_76
    if-eqz v4, :cond_7b

    :try_start_78
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_82

    .line 1160
    :cond_7b
    :goto_7b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1159
    throw v8

    .line 1164
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_7f
    return-void

    .line 1159
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_80
    move-exception v8

    goto :goto_4e

    :catch_82
    move-exception v9

    goto :goto_7b

    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catchall_84
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_76

    .line 1155
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catch_87
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_55

    .line 1153
    :catch_8a
    move-exception v8

    goto :goto_49
.end method

.method private randomBytes(I)[B
    .registers 4
    .param p1, "bits"    # I

    .prologue
    .line 1224
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1225
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1226
    return-object v0
.end method

.method private registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1440
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v7

    .line 1441
    :try_start_3
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registering transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-eqz p3, :cond_71

    .line 1444
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v6, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_83

    .line 1458
    :try_start_3c
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 1459
    .local v5, "transportName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1460
    .local v4, "stateDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1462
    new-instance v3, Ljava/io/File;

    const-string v6, "_need_init_"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1463
    .local v3, "initSentinel":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1464
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_5a} :catch_89

    .line 1465
    :try_start_5a
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1468
    const-wide/32 v0, 0xea60

    .line 1469
    .local v0, "delay":J
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, v0

    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1471
    monitor-exit v7
    :try_end_70
    .catchall {:try_start_5a .. :try_end_70} :catchall_86

    .line 1479
    .end local v0    # "delay":J
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 1447
    :cond_71
    :try_start_71
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    monitor-exit v7

    goto :goto_70

    .line 1452
    :catchall_83
    move-exception v6

    monitor-exit v7
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_83

    throw v6

    .line 1471
    .restart local v3    # "initSentinel":Ljava/io/File;
    .restart local v4    # "stateDir":Ljava/io/File;
    .restart local v5    # "transportName":Ljava/lang/String;
    :catchall_86
    move-exception v6

    :try_start_87
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw v6
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_89} :catch_89

    .line 1473
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :catch_89
    move-exception v2

    .line 1475
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to register transport as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransportNames:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1621
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1629
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1630
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    :cond_e
    return-void
.end method

.method private resetEdmBackupTags(I)V
    .registers 6
    .param p1, "error"    # I

    .prologue
    const/4 v3, 0x0

    .line 6551
    iput-boolean v3, p0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    .line 6552
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    .line 6553
    iput-boolean v3, p0, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    .line 6554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.backup.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6555
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "backupResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6556
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6557
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService;->needUpdateBackupAlarm:Z

    if-eqz v1, :cond_24

    .line 6558
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 6559
    iput-boolean v3, p0, Lcom/android/server/BackupManagerService;->needUpdateBackupAlarm:Z

    .line 6561
    :cond_24
    iput v3, p0, Lcom/android/server/BackupManagerService;->mEdmUserId:I

    .line 6562
    return-void
.end method

.method private resetEdmRestoreTags(I)V
    .registers 6
    .param p1, "error"    # I

    .prologue
    const/4 v3, 0x0

    .line 6566
    iput-boolean v3, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    .line 6567
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    .line 6568
    iput-boolean v3, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreFail:Z

    .line 6569
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.restore.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6570
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "restoreResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6571
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6572
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService;->needUpdateBackupAlarm:Z

    if-eqz v1, :cond_24

    .line 6573
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 6574
    iput-boolean v3, p0, Lcom/android/server/BackupManagerService;->needUpdateBackupAlarm:Z

    .line 6576
    :cond_24
    iput v3, p0, Lcom/android/server/BackupManagerService;->mEdmUserId:I

    .line 6577
    return-void
.end method

.method private routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 11
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2686
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2687
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2689
    .local v2, "in":Ljava/io/DataInputStream;
    const v6, 0x8000

    new-array v0, v6, [B

    .line 2691
    .local v0, "buffer":[B
    :cond_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "chunkTotal":I
    if-lez v1, :cond_2b

    .line 2692
    :goto_1a
    if-lez v1, :cond_14

    .line 2693
    array-length v6, v0

    if-le v1, v6, :cond_29

    array-length v5, v0

    .line 2694
    .local v5, "toRead":I
    :goto_20
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 2695
    .local v3, "nRead":I
    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 2696
    sub-int/2addr v1, v3

    .line 2697
    goto :goto_1a

    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_29
    move v5, v1

    .line 2693
    goto :goto_20

    .line 2699
    :cond_2b
    return-void
.end method

.method private signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 13
    .param p1, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p2, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4558
    iget-object v8, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2b

    .line 4559
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - skipping sig check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    :cond_2a
    :goto_2a
    return v6

    .line 4565
    :cond_2b
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4568
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p1, :cond_32

    array-length v8, p1

    if-nez v8, :cond_37

    :cond_32
    if-eqz v0, :cond_2a

    array-length v8, v0

    if-eqz v8, :cond_2a

    .line 4572
    :cond_37
    if-eqz p1, :cond_3b

    if-nez v0, :cond_3d

    :cond_3b
    move v6, v7

    .line 4573
    goto :goto_2a

    .line 4579
    :cond_3d
    array-length v5, p1

    .line 4580
    .local v5, "nStored":I
    array-length v4, v0

    .line 4582
    .local v4, "nDevice":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v5, :cond_2a

    .line 4583
    const/4 v3, 0x0

    .line 4584
    .local v3, "match":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_44
    if-ge v2, v4, :cond_51

    .line 4585
    aget-object v8, p1, v1

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 4586
    const/4 v3, 0x1

    .line 4590
    :cond_51
    if-nez v3, :cond_58

    move v6, v7

    .line 4591
    goto :goto_2a

    .line 4584
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 4582
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method

.method private startBackupAlarmsLocked(J)V
    .registers 13
    .param p1, "delayBeforeFirstBackup"    # J

    .prologue
    const v6, 0x493e0

    .line 5893
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 5894
    .local v7, "random":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 5896
    .local v2, "when":J
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 5898
    iput-wide v2, p0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 5899
    return-void
.end method

.method private warnEdmAdminOperationCompleted()V
    .registers 3

    .prologue
    .line 6657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.backup.service.available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6658
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6659
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 5404
    const/4 v1, 0x0

    .line 5406
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_10

    const-string v3, "journal"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 5407
    :cond_10
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_2a
    .catchall {:try_start_1 .. :try_end_19} :catchall_54

    .line 5408
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5409
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_62
    .catchall {:try_start_19 .. :try_end_23} :catchall_5f

    .line 5414
    if-eqz v2, :cond_28

    :try_start_25
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_5d

    :cond_28
    :goto_28
    move-object v1, v2

    .line 5416
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_29
    :goto_29
    return-void

    .line 5410
    :catch_2a
    move-exception v0

    .line 5411
    .local v0, "e":Ljava/io/IOException;
    :goto_2b
    :try_start_2b
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5412
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_54

    .line 5414
    if-eqz v1, :cond_29

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_29

    :catch_52
    move-exception v3

    goto :goto_29

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_54
    move-exception v3

    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    throw v3

    :catch_5b
    move-exception v4

    goto :goto_5a

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_5d
    move-exception v3

    goto :goto_28

    :catchall_5f
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_55

    .line 5410
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_62
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2b
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 18
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 5746
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "acknowledgeFullBackupOrRestore : token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " allow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5752
    iget-boolean v8, p0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-nez v8, :cond_a1

    iget-boolean v8, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-nez v8, :cond_a1

    .line 5753
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BACKUP"

    const-string v10, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5759
    :goto_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5763
    .local v4, "oldId":J
    :try_start_37
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_cb

    .line 5764
    :try_start_3a
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$FullParams;

    .line 5765
    .local v6, "params":Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v6, :cond_d0

    .line 5766
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5767
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5769
    if-eqz p2, :cond_bd

    .line 5770
    instance-of v8, v6, Lcom/android/server/BackupManagerService$FullBackupParams;

    if-eqz v8, :cond_ab

    const/4 v7, 0x2

    .line 5774
    .local v7, "verb":I
    :goto_57
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 5775
    iput-object p3, v6, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_c8

    .line 5779
    :try_start_5d
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v8}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_ae

    const/4 v2, 0x1

    .line 5780
    .local v2, "isEncrypted":Z
    :goto_67
    if-eqz v2, :cond_70

    const-string v8, "BackupManagerService"

    const-string v10, "Device is encrypted; forcing enc password"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_70} :catch_b0
    .catchall {:try_start_5d .. :try_end_70} :catchall_c8

    .line 5786
    :cond_70
    :goto_70
    if-eqz v2, :cond_ba

    .end local p3    # "curPassword":Ljava/lang/String;
    :goto_72
    :try_start_72
    iput-object p3, v6, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 5788
    const-string v8, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending conf message with verb "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5790
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5791
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v8, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5800
    .end local v2    # "isEncrypted":Z
    .end local v3    # "msg":Landroid/os/Message;
    .end local v7    # "verb":I
    :goto_9c
    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_72 .. :try_end_9d} :catchall_c8

    .line 5802
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5804
    return-void

    .line 5755
    .end local v4    # "oldId":J
    .end local v6    # "params":Lcom/android/server/BackupManagerService$FullParams;
    .restart local p3    # "curPassword":Ljava/lang/String;
    :cond_a1
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BACKUP"

    const-string v10, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 5770
    .restart local v4    # "oldId":J
    .restart local v6    # "params":Lcom/android/server/BackupManagerService$FullParams;
    :cond_ab
    const/16 v7, 0xa

    goto :goto_57

    .line 5779
    .restart local v7    # "verb":I
    :cond_ae
    const/4 v2, 0x0

    goto :goto_67

    .line 5781
    :catch_b0
    move-exception v1

    .line 5783
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_b1
    const-string v8, "BackupManagerService"

    const-string v10, "Unable to contact mount service!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    const/4 v2, 0x1

    .restart local v2    # "isEncrypted":Z
    goto :goto_70

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_ba
    move-object/from16 p3, p4

    .line 5786
    goto :goto_72

    .line 5793
    .end local v2    # "isEncrypted":Z
    .end local v7    # "verb":I
    :cond_bd
    const-string v8, "BackupManagerService"

    const-string v10, "User rejected full backup/restore operation"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5795
    invoke-virtual {p0, v6}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    goto :goto_9c

    .line 5800
    .end local v6    # "params":Lcom/android/server/BackupManagerService$FullParams;
    .end local p3    # "curPassword":Ljava/lang/String;
    :catchall_c8
    move-exception v8

    monitor-exit v9
    :try_end_ca
    .catchall {:try_start_b1 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v8
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cb

    .line 5802
    :catchall_cb
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 5798
    .restart local v6    # "params":Lcom/android/server/BackupManagerService$FullParams;
    .restart local p3    # "curPassword":Ljava/lang/String;
    :cond_d0
    :try_start_d0
    const-string v8, "BackupManagerService"

    const-string v10, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_c8

    goto :goto_9c
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 798
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    monitor-exit v1

    .line 801
    return-void

    .line 799
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 10
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v4

    .line 1562
    .local v4, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_2c

    .line 1563
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackageParticipantsLocked: #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_22
    if-ge v1, v2, :cond_37

    aget-object v3, v0, v1

    .line 1565
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1564
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1568
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2c
    const-string v5, "BackupManagerService"

    const-string v6, "addPackageParticipantsLocked: all"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1571
    :cond_37
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .prologue
    .line 6008
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6009
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_3d

    .line 6010
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6011
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 6012
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 6013
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 6018
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_36
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6019
    monitor-exit v2

    .line 6020
    return-void

    .line 6015
    :cond_3d
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 6019
    :catchall_60
    move-exception v1

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6027
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6028
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_18

    .line 6029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 6030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 6035
    :goto_11
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6036
    monitor-exit v1

    .line 6037
    return-void

    .line 6032
    :cond_18
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 6036
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1637
    const/16 v4, 0x40

    .line 1638
    .local v4, "flags":I
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 1639
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1640
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_e
    if-ltz v1, :cond_40

    .line 1641
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 1643
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_16
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1644
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_24

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_2a

    .line 1646
    :cond_24
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1640
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1650
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1652
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_27

    .line 1654
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_3b
    move-exception v3

    .line 1655
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_27

    .line 1658
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_40
    return-object v5
.end method

.method public backupNow()V
    .registers 6

    .prologue
    .line 5505
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5507
    const-string v1, "BackupManagerService"

    const-string v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5512
    const-wide/32 v3, 0x36ee80

    :try_start_16
    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_29

    .line 5514
    :try_start_19
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_1e} :catch_20
    .catchall {:try_start_19 .. :try_end_1e} :catchall_29

    .line 5519
    :goto_1e
    :try_start_1e
    monitor-exit v2

    .line 5520
    return-void

    .line 5515
    :catch_20
    move-exception v0

    .line 5517
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "BackupManagerService"

    const-string v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 5519
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 6096
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6099
    const/4 v1, 0x1

    .line 6100
    .local v1, "needPermission":Z
    if-nez p2, :cond_3c

    .line 6101
    iget-object p2, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 6103
    if-eqz p1, :cond_3c

    .line 6104
    const/4 v0, 0x0

    .line 6106
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_30} :catch_6e

    move-result-object v0

    .line 6112
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 6116
    const/4 v1, 0x0

    .line 6121
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_3c
    if-eqz v1, :cond_a6

    .line 6122
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6128
    :goto_47
    monitor-enter p0

    .line 6130
    :try_start_48
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-nez v3, :cond_64

    iget-boolean v3, p0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_58
    iget-boolean v3, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 6134
    :cond_64
    const-string v3, "BackupManagerService"

    const-string v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6135
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_48 .. :try_end_6d} :catchall_c3

    .line 6140
    :goto_6d
    return-object v3

    .line 6107
    .restart local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_6e
    move-exception v2

    .line 6108
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6125
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a6
    const-string v3, "BackupManagerService"

    const-string v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 6137
    :cond_ae
    :try_start_ae
    new-instance v3, Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 6138
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6139
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_ae .. :try_end_c0} :catchall_c3

    .line 6140
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    goto :goto_6d

    .line 6139
    :catchall_c3
    move-exception v3

    :try_start_c4
    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 14
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1764
    const/4 v0, 0x0

    .line 1765
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1766
    const/4 v6, 0x1

    :try_start_7
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 1767
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_8f

    .line 1769
    :try_start_c
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 1770
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 1776
    .local v2, "timeoutMark":J
    :goto_34
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_6c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_b1
    .catchall {:try_start_c .. :try_end_3f} :catchall_8f

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_6c

    .line 1778
    :try_start_44
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4b} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_b1
    .catchall {:try_start_44 .. :try_end_4b} :catchall_8f

    goto :goto_34

    .line 1779
    :catch_4c
    move-exception v1

    .line 1781
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4d
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_6a} :catch_b1
    .catchall {:try_start_4d .. :try_end_6a} :catchall_8f

    .line 1783
    :try_start_6a
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_8f

    .line 1800
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "timeoutMark":J
    :goto_6b
    return-object v4

    .line 1788
    .restart local v2    # "timeoutMark":J
    :cond_6c
    :try_start_6c
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-ne v6, v10, :cond_92

    .line 1789
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_8d} :catch_b1
    .catchall {:try_start_6c .. :try_end_8d} :catchall_8f

    .line 1791
    :try_start_8d
    monitor-exit v5

    goto :goto_6b

    .line 1799
    .end local v2    # "timeoutMark":J
    :catchall_8f
    move-exception v4

    monitor-exit v5
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_8f

    throw v4

    .line 1793
    .restart local v2    # "timeoutMark":J
    :cond_92
    :try_start_92
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_ae} :catch_b1
    .catchall {:try_start_92 .. :try_end_ae} :catchall_8f

    .line 1799
    .end local v2    # "timeoutMark":J
    :cond_ae
    :goto_ae
    :try_start_ae
    monitor-exit v5
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_8f

    move-object v4, v0

    .line 1800
    goto :goto_6b

    .line 1796
    :catch_b1
    move-exception v4

    goto :goto_ae
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1808
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2} :catch_1f

    if-eqz v6, :cond_3f

    .line 1810
    :try_start_4
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/BackupManagerService;->mEdmUserId:I

    invoke-interface {v6, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_1f

    move-result-object v2

    .line 1818
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :goto_d
    :try_start_d
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_47

    .line 1853
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_15
    return-void

    .line 1811
    :catch_16
    move-exception v1

    .line 1812
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Fail to obtain package info at clear application data synchrounous"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_15

    .line 1823
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 1824
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tried to clear data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1816
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3f
    :try_start_3f
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_45} :catch_1f

    move-result-object v2

    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_d

    .line 1828
    :cond_47
    new-instance v3, Lcom/android/server/BackupManagerService$ClearDataObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 1830
    .local v3, "observer":Lcom/android/server/BackupManagerService$ClearDataObserver;
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1831
    const/4 v6, 0x1

    :try_start_50
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_7e

    .line 1833
    :try_start_52
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v6, :cond_81

    .line 1834
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v8, p0, Lcom/android/server/BackupManagerService;->mEdmUserId:I

    invoke-interface {v6, p1, v3, v8}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5d} :catch_88
    .catchall {:try_start_52 .. :try_end_5d} :catchall_7e

    .line 1843
    :goto_5d
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long v4, v8, v10

    .line 1844
    .local v4, "timeoutMark":J
    :goto_65
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    if-eqz v6, :cond_8a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_7e

    move-result-wide v8

    cmp-long v6, v8, v4

    if-gez v6, :cond_8a

    .line 1846
    :try_start_71
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_78} :catch_79
    .catchall {:try_start_71 .. :try_end_78} :catchall_7e

    goto :goto_65

    .line 1847
    :catch_79
    move-exception v0

    .line 1849
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    :try_start_7b
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    goto :goto_65

    .line 1852
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "timeoutMark":J
    :catchall_7e
    move-exception v6

    monitor-exit v7
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_7e

    throw v6

    .line 1836
    :cond_81
    :try_start_81
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v8, 0x0

    invoke-interface {v6, p1, v3, v8}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_87} :catch_88
    .catchall {:try_start_81 .. :try_end_87} :catchall_7e

    goto :goto_5d

    .line 1838
    :catch_88
    move-exception v6

    goto :goto_5d

    .line 1852
    .restart local v4    # "timeoutMark":J
    :cond_8a
    :try_start_8a
    monitor-exit v7
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_7e

    goto :goto_15
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5449
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clearBackupData() of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :try_start_26
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2f} :catch_85

    move-result-object v5

    .line 5461
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_a7

    .line 5463
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 5479
    .local v2, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4f
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_84

    .line 5481
    const-string v11, "BackupManagerService"

    const-string v12, "Found the app - running clear process"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 5483
    iget-object v12, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 5484
    :try_start_68
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v10

    .line 5485
    .local v10, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v10, :cond_cc

    .line 5487
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v13, 0xc

    new-instance v14, Lcom/android/server/BackupManagerService$ClearRetryParams;

    invoke-direct/range {v14 .. v17}, Lcom/android/server/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v13, v14}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 5489
    .local v6, "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v13, 0x36ee80

    invoke-virtual {v11, v6, v13, v14}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5490
    monitor-exit v12
    :try_end_84
    .catchall {:try_start_68 .. :try_end_84} :catchall_eb

    .line 5500
    .end local v2    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_84
    :goto_84
    return-void

    .line 5453
    :catch_85
    move-exception v3

    .line 5454
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No such package \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' - not clearing backup data"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 5467
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "info":Landroid/content/pm/PackageInfo;
    :cond_a7
    const-string v11, "BackupManagerService"

    const-string v12, "Privileged caller, allowing clear of other apps"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5468
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 5469
    .restart local v2    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5470
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ba
    if-ge v4, v1, :cond_4f

    .line 5471
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 5472
    .local v9, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v9, :cond_c9

    .line 5473
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5470
    :cond_c9
    add-int/lit8 v4, v4, 0x1

    goto :goto_ba

    .line 5492
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v9    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_cc
    :try_start_cc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5493
    .local v7, "oldId":J
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5494
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v13, 0x4

    new-instance v14, Lcom/android/server/BackupManagerService$ClearParams;

    invoke-direct {v14, p0, v10, v5}, Lcom/android/server/BackupManagerService$ClearParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v11, v13, v14}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 5496
    .restart local v6    # "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v11, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5497
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5498
    monitor-exit v12

    goto :goto_84

    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "oldId":J
    .end local v10    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_eb
    move-exception v11

    monitor-exit v12
    :try_end_ed
    .catchall {:try_start_cc .. :try_end_ed} :catchall_eb

    throw v11
.end method

.method clearBackupTrace()V
    .registers 3

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 806
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 807
    monitor-exit v1

    .line 809
    return-void

    .line 807
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .param p1, "currentSession"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 6144
    monitor-enter p0

    .line 6145
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_e

    .line 6146
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6155
    :goto_c
    monitor-exit p0

    .line 6156
    return-void

    .line 6148
    :cond_e
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 6151
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->warnEdmAdminOperationCompleted()V

    .line 6153
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    goto :goto_c

    .line 6155
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5421
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5422
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_7

    .line 5445
    :goto_6
    return-void

    .line 5433
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 5434
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_3a

    .line 5435
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5440
    :cond_3a
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/BackupManagerService$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/BackupManagerService$2;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method deviceIsProvisioned()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5523
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5524
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6462
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "BackupManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6466
    .local v0, "identityToken":J
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 6468
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6470
    return-void

    .line 6468
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doAllApps"    # Z
    .param p6, "includeSystem"    # Z
    .param p7, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 5534
    iget-boolean v2, p0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-nez v2, :cond_1b

    .line 5535
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "fullBackup"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5541
    :goto_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 5542
    .local v10, "callingUserHandle":I
    if-eqz v10, :cond_25

    .line 5543
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Backup supported only for the device owner"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5537
    .end local v10    # "callingUserHandle":I
    :cond_1b
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "fullBackup"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 5547
    .restart local v10    # "callingUserHandle":I
    :cond_25
    if-nez p5, :cond_38

    .line 5548
    if-nez p4, :cond_38

    .line 5552
    if-eqz p7, :cond_30

    move-object/from16 v0, p7

    array-length v2, v0

    if-nez v2, :cond_38

    .line 5553
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Backup requested but neither shared nor any apps named"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5559
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 5562
    .local v11, "oldId":J
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v2

    if-nez v2, :cond_57

    .line 5563
    const-string v2, "BackupManagerService"

    const-string v4, "Full backup not supported before setup"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_f6

    .line 5610
    :try_start_49
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_16e

    .line 5614
    :goto_4c
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5615
    const-string v2, "BackupManagerService"

    const-string v4, "Full backup processing complete."

    :goto_53
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5617
    return-void

    .line 5567
    :cond_57
    :try_start_57
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting full backup: apks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " obb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " all="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkgs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5570
    const-string v2, "BackupManagerService"

    const-string v4, "Beginning full backup..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    new-instance v1, Lcom/android/server/BackupManagerService$FullBackupParams;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V

    .line 5574
    .local v1, "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v3

    .line 5575
    .local v3, "token":I
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_bf
    .catchall {:try_start_57 .. :try_end_bf} :catchall_f6

    .line 5576
    :try_start_bf
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5577
    monitor-exit v4
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_f3

    .line 5580
    :try_start_c5
    iget-boolean v2, p0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v2, :cond_126

    .line 5581
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->access$2300(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e3

    :cond_df
    iget-boolean v2, p0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-eqz v2, :cond_105

    .line 5585
    :cond_e3
    const/4 v2, -0x3

    invoke-direct {p0, v2}, Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    :try_end_e7
    .catchall {:try_start_c5 .. :try_end_e7} :catchall_f6

    .line 5610
    :try_start_e7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_171

    .line 5614
    :goto_ea
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5615
    const-string v2, "BackupManagerService"

    const-string v4, "Full backup processing complete."

    goto/16 :goto_53

    .line 5577
    :catchall_f3
    move-exception v2

    :try_start_f4
    monitor-exit v4
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    :try_start_f5
    throw v2
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f6

    .line 5609
    .end local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v3    # "token":I
    :catchall_f6
    move-exception v2

    .line 5610
    :try_start_f7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_16c

    .line 5614
    :goto_fa
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5615
    const-string v4, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    throw v2

    .line 5588
    .restart local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v3    # "token":I
    :cond_105
    const/4 v4, 0x1

    :try_start_106
    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEdmFullObserver:Lcom/android/server/BackupManagerService$EdmFullObserver;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/BackupManagerService;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 5606
    :goto_110
    const-string v2, "BackupManagerService"

    const-string v4, "Waiting for full backup completion..."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5607
    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_11a
    .catchall {:try_start_106 .. :try_end_11a} :catchall_f6

    .line 5610
    :try_start_11a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_174

    .line 5614
    :goto_11d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5615
    const-string v2, "BackupManagerService"

    const-string v4, "Full backup processing complete."

    goto/16 :goto_53

    .line 5591
    :cond_126
    :try_start_126
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5592
    const-string v2, "fullback"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 5593
    const-string v2, "BackupManagerService"

    const-string v4, "Unable to launch full backup confirmation"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5594
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_152
    .catchall {:try_start_126 .. :try_end_152} :catchall_f6

    .line 5610
    :try_start_152
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_176

    .line 5614
    :goto_155
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5615
    const-string v2, "BackupManagerService"

    const-string v4, "Full backup processing complete."

    goto/16 :goto_53

    .line 5599
    :cond_15e
    :try_start_15e
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5602
    invoke-virtual {p0, v3, v1}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
    :try_end_16b
    .catchall {:try_start_15e .. :try_end_16b} :catchall_f6

    goto :goto_110

    .line 5611
    .end local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v3    # "token":I
    :catch_16c
    move-exception v4

    goto :goto_fa

    :catch_16e
    move-exception v2

    goto/16 :goto_4c

    .restart local v1    # "params":Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v3    # "token":I
    :catch_171
    move-exception v2

    goto/16 :goto_ea

    :catch_174
    move-exception v2

    goto :goto_11d

    :catch_176
    move-exception v2

    goto :goto_155
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5621
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-nez v0, :cond_1b

    .line 5622
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "fullRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5628
    :goto_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 5629
    .local v6, "callingUserHandle":I
    if-eqz v6, :cond_25

    .line 5630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5624
    .end local v6    # "callingUserHandle":I
    :cond_1b
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "fullRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 5633
    .restart local v6    # "callingUserHandle":I
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5638
    .local v8, "oldId":J
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    if-nez v0, :cond_44

    .line 5639
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore not permitted before setup"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_9b

    .line 5684
    :try_start_36
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_130

    .line 5688
    :goto_39
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5689
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    :goto_40
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    return-void

    .line 5643
    :cond_44
    :try_start_44
    const-string v0, "BackupManagerService"

    const-string v2, "Beginning full restore..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5645
    new-instance v10, Lcom/android/server/BackupManagerService$FullRestoreParams;

    invoke-direct {v10, p0, p1}, Lcom/android/server/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 5646
    .local v10, "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v1

    .line 5647
    .local v1, "token":I
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_9b

    .line 5648
    :try_start_57
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5649
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_98

    .line 5652
    :try_start_5d
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v0, :cond_cf

    .line 5653
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_9b

    .line 5654
    :try_start_64
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->access$2300(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    :cond_7a
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 5658
    :cond_88
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V

    .line 5659
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_64 .. :try_end_8d} :catchall_cc

    .line 5684
    :try_start_8d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_14b

    .line 5688
    :goto_90
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5689
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    goto :goto_40

    .line 5649
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    .line 5683
    .end local v1    # "token":I
    .end local v10    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    :catchall_9b
    move-exception v0

    .line 5684
    :try_start_9c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_115

    .line 5688
    :goto_9f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5689
    const-string v2, "BackupManagerService"

    const-string v3, "Full restore processing complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    throw v0

    .line 5661
    .restart local v1    # "token":I
    .restart local v10    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    :cond_aa
    :try_start_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_cc

    .line 5662
    const/4 v2, 0x1

    :try_start_ac
    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mEdmFullObserver:Lcom/android/server/BackupManagerService$EdmFullObserver;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/BackupManagerService;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 5680
    :goto_b6
    const-string v0, "BackupManagerService"

    const-string v2, "Waiting for full restore completion..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    invoke-virtual {p0, v10}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_c0
    .catchall {:try_start_ac .. :try_end_c0} :catchall_9b

    .line 5684
    :try_start_c0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_166

    .line 5688
    :goto_c3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5689
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    goto/16 :goto_40

    .line 5661
    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw v0

    .line 5665
    :cond_cf
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting restore confirmation UI, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    const-string v0, "fullrest"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 5667
    const-string v0, "BackupManagerService"

    const-string v2, "Unable to launch full restore confirmation"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_fb
    .catchall {:try_start_ce .. :try_end_fb} :catchall_9b

    .line 5684
    :try_start_fb
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_181

    .line 5688
    :goto_fe
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5689
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    goto/16 :goto_40

    .line 5673
    :cond_107
    :try_start_107
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5676
    invoke-virtual {p0, v1, v10}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
    :try_end_114
    .catchall {:try_start_107 .. :try_end_114} :catchall_9b

    goto :goto_b6

    .line 5685
    .end local v1    # "token":I
    .end local v10    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    :catch_115
    move-exception v7

    .line 5686
    .local v7, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to close fd after full restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 5685
    .end local v7    # "e":Ljava/io/IOException;
    :catch_130
    move-exception v7

    .line 5686
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 5685
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v1    # "token":I
    .restart local v10    # "params":Lcom/android/server/BackupManagerService$FullRestoreParams;
    :catch_14b
    move-exception v7

    .line 5686
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 5685
    .end local v7    # "e":Ljava/io/IOException;
    :catch_166
    move-exception v7

    .line 5686
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c3

    .line 5685
    .end local v7    # "e":Ljava/io/IOException;
    :catch_181
    move-exception v7

    .line 5686
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe
.end method

.method generateToken()I
    .registers 4

    .prologue
    .line 515
    :cond_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 516
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 517
    .local v0, "token":I
    monitor-exit v2

    .line 518
    if-ltz v0, :cond_0

    .line 519
    return v0

    .line 517
    .end local v0    # "token":I
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1867
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1868
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1869
    :try_start_5
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1870
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1872
    :cond_f
    monitor-exit v3

    .line 1873
    return-wide v0

    .line 1872
    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 5960
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5963
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5964
    :try_start_c
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 5965
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 5967
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 5970
    .local v0, "intent":Landroid/content/Intent;
    :try_start_1a
    monitor-exit v3

    .line 5977
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1b
    return-object v0

    .line 5971
    :catch_1c
    move-exception v2

    .line 5975
    :cond_1d
    monitor-exit v3

    .line 5977
    const/4 v0, 0x0

    goto :goto_1b

    .line 5975
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5909
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5912
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 5986
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getDestinationString"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5989
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5990
    :try_start_c
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 5991
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 5993
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 5995
    .local v0, "text":Ljava/lang/String;
    :try_start_1a
    monitor-exit v3

    .line 6002
    .end local v0    # "text":Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 5996
    :catch_1c
    move-exception v2

    .line 6000
    :cond_1d
    monitor-exit v3

    .line 6002
    const/4 v0, 0x0

    goto :goto_1b

    .line 6000
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x1

    .line 1936
    const/4 v1, 0x0

    .line 1937
    .local v1, "op":Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1938
    :try_start_5
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v1, v0

    .line 1943
    if-eqz v1, :cond_13

    iget v2, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1944
    .local v2, "state":I
    :cond_13
    if-nez v2, :cond_39

    .line 1945
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMEOUT: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1947
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1949
    :cond_39
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1950
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_4b

    .line 1953
    if-eqz v1, :cond_4a

    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_4a

    .line 1954
    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 1956
    :cond_4a
    return-void

    .line 1950
    .end local v2    # "state":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3
.end method

.method public hasBackupPassword()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1340
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "hasBackupPassword"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :try_start_a
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-ne v2, v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_21

    move-result v2

    if-lez v2, :cond_1f

    .line 1349
    :cond_1e
    :goto_1e
    return v1

    .line 1344
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e

    .line 1346
    :catch_21
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1e
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 5903
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5904
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 5917
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5919
    const/4 v3, 0x0

    .line 5920
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5921
    .local v2, "known":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5922
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 5923
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 5927
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_42

    .line 5928
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 5929
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5931
    :cond_42
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1664
    const-string v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1680
    :goto_8
    return-void

    .line 1666
    :cond_9
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 1667
    :try_start_c
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    monitor-exit v4

    goto :goto_8

    .line 1679
    :catchall_16
    move-exception v3

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v3

    .line 1669
    :cond_19
    const/4 v1, 0x0

    .line 1671
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1a
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_35
    .catchall {:try_start_1a .. :try_end_23} :catchall_62

    .line 1672
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1673
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_70
    .catchall {:try_start_23 .. :try_end_2d} :catchall_6d

    .line 1677
    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_6b
    .catchall {:try_start_2f .. :try_end_32} :catchall_16

    :cond_32
    :goto_32
    move-object v1, v2

    .line 1679
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_16

    goto :goto_8

    .line 1674
    :catch_35
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/io/IOException;
    :goto_36
    :try_start_36
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_62

    .line 1677
    if-eqz v1, :cond_33

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_16

    goto :goto_33

    :catch_60
    move-exception v3

    goto :goto_33

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v3

    :goto_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_16

    :cond_68
    :goto_68
    :try_start_68
    throw v3
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_16

    :catch_69
    move-exception v5

    goto :goto_68

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_6b
    move-exception v3

    goto :goto_32

    :catchall_6d
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_63

    .line 1674
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_70
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_36
.end method

.method public opComplete(I)V
    .registers 8
    .param p1, "token"    # I

    .prologue
    .line 6163
    const/4 v2, 0x0

    .line 6164
    .local v2, "op":Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 6165
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 6166
    if-eqz v2, :cond_13

    .line 6167
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 6169
    :cond_13
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 6170
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_2f

    .line 6173
    if-eqz v2, :cond_2e

    iget-object v3, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_2e

    .line 6174
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x15

    iget-object v5, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6175
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6177
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2e
    return-void

    .line 6170
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method passwordMatchesSaved(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "candidatePw"    # Ljava/lang/String;
    .param p2, "rounds"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1234
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v6

    if-eq v6, v4, :cond_1d

    move v2, v4

    .line 1235
    .local v2, "isEncrypted":Z
    :goto_b
    if-eqz v2, :cond_31

    .line 1237
    const-string v6, "BackupManagerService"

    const-string v7, "Device encrypted; verifying against device data pw"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountService;->verifyEncryptionPassword(Ljava/lang/String;)I

    move-result v3

    .line 1244
    .local v3, "result":I
    if-nez v3, :cond_1f

    .line 1280
    .end local v2    # "isEncrypted":Z
    .end local v3    # "result":I
    :cond_1c
    :goto_1c
    return v4

    :cond_1d
    move v2, v5

    .line 1234
    goto :goto_b

    .line 1247
    .restart local v2    # "isEncrypted":Z
    .restart local v3    # "result":I
    :cond_1f
    const/4 v4, -0x2

    if-eq v3, v4, :cond_24

    move v4, v5

    .line 1249
    goto :goto_1c

    .line 1255
    :cond_24
    const-string v4, "BackupManagerService"

    const-string/jumbo v6, "verified encryption state mismatch against query; no match allowed"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2e

    move v4, v5

    .line 1256
    goto :goto_1c

    .line 1259
    .end local v2    # "isEncrypted":Z
    .end local v3    # "result":I
    :catch_2e
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v4, v5

    .line 1262
    goto :goto_1c

    .line 1265
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "isEncrypted":Z
    :cond_31
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-nez v6, :cond_41

    .line 1267
    if-eqz p1, :cond_1c

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    :cond_3f
    move v4, v5

    .line 1280
    goto :goto_1c

    .line 1272
    :cond_41
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3f

    .line 1273
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    goto :goto_1c
.end method

.method prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 1893
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1894
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/BackupManagerService$Operation;-><init>(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1896
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1897
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1898
    monitor-exit v2

    .line 1899
    return-void

    .line 1898
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 12
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x0

    .line 1356
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recordInitPendingLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1361
    :try_start_2a
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 1362
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_5c

    .line 1363
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1364
    .local v3, "transportDirName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1365
    .local v1, "stateDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "_need_init_"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1367
    .local v0, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_52

    .line 1371
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_49} :catch_5b

    .line 1373
    :try_start_49
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_77
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_51} :catch_5b

    .line 1400
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :cond_51
    :goto_51
    return-void

    .line 1379
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1380
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5a} :catch_5b

    goto :goto_51

    .line 1384
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :catch_5b
    move-exception v4

    .line 1391
    :cond_5c
    if-eqz p1, :cond_51

    .line 1392
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    if-eqz p1, :cond_75

    const/4 v4, 0x1

    :goto_6a
    invoke-virtual {v7, v8, v4, v5, p2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v7, 0x36ee80

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_51

    :cond_75
    move v4, v5

    goto :goto_6a

    .line 1374
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :catch_77
    move-exception v4

    goto :goto_51
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1684
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing backed-up knowledge of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 1691
    :try_start_1b
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_b1

    .line 1692
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1694
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_25
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rws"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_a8
    .catchall {:try_start_25 .. :try_end_2c} :catchall_aa

    .line 1695
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v3, "known":Ljava/io/RandomAccessFile;
    :try_start_2c
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1696
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1697
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_46} :catch_47
    .catchall {:try_start_2c .. :try_end_46} :catchall_bc

    goto :goto_37

    .line 1705
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :catch_47
    move-exception v0

    move-object v2, v3

    .line 1710
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_49
    :try_start_49
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1712
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1713
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_70
    .catchall {:try_start_49 .. :try_end_70} :catchall_aa

    .line 1715
    if-eqz v2, :cond_75

    :try_start_72
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_b6
    .catchall {:try_start_72 .. :try_end_75} :catchall_b1

    .line 1717
    .end local v0    # "e":Ljava/io/IOException;
    :cond_75
    :goto_75
    :try_start_75
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_b1

    .line 1718
    return-void

    .line 1700
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :cond_77
    :try_start_77
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_47
    .catchall {:try_start_77 .. :try_end_7a} :catchall_bc

    .line 1701
    const/4 v2, 0x0

    .line 1702
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :try_start_7b
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_b8

    .line 1703
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_a8} :catch_a8
    .catchall {:try_start_7b .. :try_end_a8} :catchall_aa

    .line 1705
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_a8
    move-exception v0

    goto :goto_49

    .line 1715
    :catchall_aa
    move-exception v6

    :goto_ab
    if-eqz v2, :cond_b0

    :try_start_ad
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b4
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    :cond_b0
    :goto_b0
    :try_start_b0
    throw v6

    .line 1717
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_b1
    move-exception v6

    monitor-exit v7
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b1

    throw v6

    .line 1715
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_b4
    move-exception v8

    goto :goto_b0

    :catch_b6
    move-exception v6

    goto :goto_75

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_b8
    if-eqz v2, :cond_75

    :try_start_ba
    throw v2
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bb} :catch_b6
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b1

    goto :goto_75

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :catchall_bc
    move-exception v6

    move-object v2, v3

    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    goto :goto_ab
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    .line 1599
    if-nez p1, :cond_a

    .line 1600
    const-string v5, "BackupManagerService"

    const-string v6, "removePackageParticipants with null list"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_9
    return-void

    .line 1604
    :cond_a
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePackageParticipantsLocked: uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_30
    if-ge v1, v2, :cond_9

    aget-object v3, v0, v1

    .line 1608
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1609
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_52

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1610
    invoke-direct {p0, v4, v3}, Lcom/android/server/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1613
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1606
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_30
.end method

.method resetBackupState(Ljava/io/File;)V
    .registers 14
    .param p1, "stateFileDir"    # Ljava/io/File;

    .prologue
    .line 1406
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1408
    :try_start_3
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 1409
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1411
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1412
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1415
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1a
    if-ge v3, v4, :cond_30

    aget-object v7, v1, v3

    .line 1417
    .local v7, "sf":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "_need_init_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 1418
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1415
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1421
    .end local v7    # "sf":Ljava/io/File;
    :cond_30
    monitor-exit v9
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_5e

    .line 1424
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1425
    :try_start_34
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1426
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .local v2, "i":I
    :goto_3b
    if-ge v2, v0, :cond_64

    .line 1427
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1428
    .local v6, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v6, :cond_61

    .line 1429
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1430
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4b

    .line 1434
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_5b
    move-exception v8

    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_5b

    throw v8

    .line 1421
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "len$":I
    :catchall_5e
    move-exception v8

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v8

    .line 1426
    .restart local v0    # "N":I
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v4    # "len$":I
    .restart local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1434
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_64
    :try_start_64
    monitor-exit v9
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_5b

    .line 1435
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 6042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2b

    .line 6043
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " attemping install-time restore"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    :goto_2a
    return-void

    .line 6048
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v5

    .line 6049
    .local v5, "restoreSet":J
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAtInstall pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " restoreSet="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6053
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    if-eqz v0, :cond_b3

    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v0, :cond_b3

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_b3

    .line 6055
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 6056
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v2, :cond_81

    .line 6057
    const-string v0, "BackupManagerService"

    const-string v1, "No transport for install-time restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 6067
    :cond_81
    :try_start_81
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 6072
    .local v3, "dirName":Ljava/lang/String;
    new-instance v7, Landroid/content/pm/PackageInfo;

    invoke-direct {v7}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 6073
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    iput-object p1, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 6075
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6076
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 6077
    .local v11, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreParams;

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6079
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v11}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_a8} :catch_a9

    goto :goto_2a

    .line 6080
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "msg":Landroid/os/Message;
    :catch_a9
    move-exception v10

    .line 6082
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to contact transport for install-time restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 6087
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_b3
    const-string v0, "BackupManagerService"

    const-string v1, "No restore set -- skipping restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6089
    :try_start_ba
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_bf} :catch_c1

    goto/16 :goto_2a

    .line 6090
    :catch_c1
    move-exception v0

    goto/16 :goto_2a
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 5938
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "selectBackupTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5940
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 5941
    const/4 v0, 0x0

    .line 5942
    .local v0, "prevTransport":Ljava/lang/String;
    :try_start_d
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 5943
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5944
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5945
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "backup_transport"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5947
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectBackupTransport() set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    :goto_48
    monitor-exit v2

    return-object v0

    .line 5950
    :cond_4a
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to select unavailable transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 5953
    :catchall_63
    move-exception v1

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_d .. :try_end_65} :catchall_63

    throw v1
.end method

.method public setAutoRestore(Z)V
    .registers 5
    .param p1, "doAutoRestore"    # Z

    .prologue
    .line 5867
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5870
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5872
    monitor-enter p0

    .line 5873
    :try_start_22
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_auto_restore"

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    :goto_2d
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5875
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 5876
    monitor-exit p0

    .line 5877
    return-void

    .line 5873
    :cond_34
    const/4 v0, 0x0

    goto :goto_2d

    .line 5876
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public setBackupEnabled(Z)V
    .registers 15
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5810
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    .line 5811
    .local v1, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz p1, :cond_1a

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 5812
    const-string v7, "BackupManagerService"

    const-string v8, "Backup is not allowed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5863
    :goto_19
    return-void

    .line 5817
    :cond_1a
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    const-string v11, "setBackupEnabled"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5820
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup enabled => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5824
    .local v3, "oldId":J
    :try_start_3f
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5825
    .local v6, "wasEnabled":Z
    monitor-enter p0
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_6d

    .line 5826
    :try_start_42
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "backup_enabled"

    if-eqz p1, :cond_68

    :goto_4c
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5828
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5829
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_6a

    .line 5831
    :try_start_52
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_6d

    .line 5832
    if-eqz p1, :cond_72

    if-nez v6, :cond_72

    :try_start_59
    iget-boolean v7, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_72

    .line 5834
    const-wide/32 v9, 0x36ee80

    invoke-direct {p0, v9, v10}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 5859
    :cond_63
    :goto_63
    monitor-exit v8
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_ac

    .line 5861
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :cond_68
    move v7, v8

    .line 5826
    goto :goto_4c

    .line 5829
    :catchall_6a
    move-exception v7

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 5861
    .end local v6    # "wasEnabled":Z
    :catchall_6d
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 5835
    .restart local v6    # "wasEnabled":Z
    :cond_72
    if-nez p1, :cond_63

    .line 5837
    :try_start_74
    const-string v7, "BackupManagerService"

    const-string v9, "Opting out of backup"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5844
    if-eqz v6, :cond_63

    iget-boolean v7, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_63

    .line 5848
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_ac

    .line 5849
    :try_start_8b
    new-instance v0, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5850
    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v9
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_af

    .line 5852
    :try_start_97
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5853
    .local v5, "transport":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v5}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    goto :goto_9b

    .line 5859
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "transport":Ljava/lang/String;
    :catchall_ac
    move-exception v7

    monitor-exit v8
    :try_end_ae
    .catchall {:try_start_97 .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v7
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_6d

    .line 5850
    :catchall_af
    move-exception v7

    :try_start_b0
    monitor-exit v9
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v7

    .line 5855
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b2
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_be
    .catchall {:try_start_b1 .. :try_end_be} :catchall_ac

    goto :goto_63
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 1285
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    const-string v11, "setBackupPassword"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/16 v9, 0x2710

    invoke-virtual {p0, p1, v9}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1290
    const/4 v9, 0x0

    .line 1335
    :cond_12
    :goto_12
    return v9

    .line 1294
    :cond_13
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 1295
    :cond_1b
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 1296
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_34

    .line 1298
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to clear backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v9, 0x0

    goto :goto_12

    .line 1302
    :cond_34
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1303
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    .line 1304
    const/4 v9, 0x1

    goto :goto_12

    .line 1309
    :cond_3c
    const/16 v9, 0x200

    :try_start_3e
    invoke-direct {p0, v9}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v8

    .line 1310
    .local v8, "salt":[B
    const/16 v9, 0x2710

    invoke-direct {p0, p2, v8, v9}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_47} :catch_7e

    move-result-object v3

    .line 1312
    .local v3, "newPwHash":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "pwf":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 1313
    .local v0, "buffer":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 1315
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_4b
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_88

    .line 1316
    .end local v6    # "pwf":Ljava/io/OutputStream;
    .local v7, "pwf":Ljava/io/OutputStream;
    :try_start_52
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_99

    .line 1317
    .end local v0    # "buffer":Ljava/io/OutputStream;
    .local v1, "buffer":Ljava/io/OutputStream;
    :try_start_57
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_9c

    .line 1320
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .local v5, "out":Ljava/io/DataOutputStream;
    :try_start_5c
    array-length v9, v8

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1321
    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 1322
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 1324
    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1325
    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_a0

    .line 1326
    const/4 v9, 0x1

    .line 1328
    if-eqz v5, :cond_73

    :try_start_70
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 1329
    :cond_73
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1330
    :cond_78
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7d} :catch_7e

    goto :goto_12

    .line 1332
    .end local v1    # "buffer":Ljava/io/OutputStream;
    .end local v3    # "newPwHash":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .end local v7    # "pwf":Ljava/io/OutputStream;
    .end local v8    # "salt":[B
    :catch_7e
    move-exception v2

    .line 1333
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to set backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 v9, 0x0

    goto :goto_12

    .line 1328
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    .restart local v3    # "newPwHash":Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v8    # "salt":[B
    :catchall_88
    move-exception v9

    :goto_89
    if-eqz v4, :cond_8e

    :try_start_8b
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1329
    :cond_8e
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1330
    :cond_93
    if-eqz v6, :cond_98

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1328
    :cond_98
    throw v9
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_99} :catch_7e

    .end local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v7    # "pwf":Ljava/io/OutputStream;
    :catchall_99
    move-exception v9

    move-object v6, v7

    .end local v7    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    goto :goto_89

    .end local v0    # "buffer":Ljava/io/OutputStream;
    .end local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v7    # "pwf":Ljava/io/OutputStream;
    :catchall_9c
    move-exception v9

    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    goto :goto_89

    .end local v0    # "buffer":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .end local v6    # "pwf":Ljava/io/OutputStream;
    .restart local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "pwf":Ljava/io/OutputStream;
    :catchall_a0
    move-exception v9

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/OutputStream;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "pwf":Ljava/io/OutputStream;
    goto :goto_89
.end method

.method public setBackupProvisioned(Z)V
    .registers 5
    .param p1, "available"    # Z

    .prologue
    .line 5881
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5886
    return-void
.end method

.method public setupEdmBackupRestore(ZLjava/lang/String;I)Z
    .registers 7
    .param p1, "isBackup"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 6635
    if-eqz p2, :cond_13

    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->access$2300(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :cond_13
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_20

    .line 6637
    :cond_17
    const-string v0, "BackupManagerService"

    const-string v1, "cannot procced with edm backup - backup manager service already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6638
    const/4 v0, 0x0

    .line 6650
    :goto_1f
    return v0

    .line 6640
    :cond_20
    if-eqz p1, :cond_30

    .line 6641
    const-string v1, "BackupManagerService"

    const-string v2, "Running a EDM backup pass"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6642
    iput-boolean v0, p0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    .line 6643
    iput-object p2, p0, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    .line 6649
    :goto_2d
    iput p3, p0, Lcom/android/server/BackupManagerService;->mEdmUserId:I

    goto :goto_1f

    .line 6645
    :cond_30
    const-string v1, "BackupManagerService"

    const-string v2, "Running a EDM restore pass"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6646
    iput-boolean v0, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    .line 6647
    iput-object p2, p0, Lcom/android/server/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    goto :goto_2d
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .registers 6
    .param p1, "params"    # Lcom/android/server/BackupManagerService$FullParams;

    .prologue
    const/4 v3, -0x2

    .line 5726
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5727
    :try_start_4
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5728
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5729
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1b

    .line 5732
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v0, :cond_1e

    .line 5733
    invoke-direct {p0, v3}, Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V

    .line 5737
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->warnEdmAdminOperationCompleted()V

    .line 5739
    return-void

    .line 5729
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0

    .line 5734
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v0, :cond_17

    .line 5735
    invoke-direct {p0, v3}, Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V

    goto :goto_17
.end method

.method startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/BackupManagerService$FullParams;

    .prologue
    .line 5710
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5712
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5713
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .registers 7
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 5695
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5696
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v2, "com.android.backupconfirm"

    const-string v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5698
    const-string v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5699
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5700
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 5704
    const/4 v2, 0x1

    .end local v0    # "confIntent":Landroid/content/Intent;
    :goto_1c
    return v2

    .line 5701
    :catch_1d
    move-exception v1

    .line 5702
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .registers 4
    .param p1, "params"    # Lcom/android/server/BackupManagerService$FullParams;

    .prologue
    .line 5716
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5717
    :goto_3
    :try_start_3
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_13

    .line 5719
    :try_start_b
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    .line 5720
    :catch_11
    move-exception v0

    goto :goto_3

    .line 5722
    :cond_13
    :try_start_13
    monitor-exit v1

    .line 5723
    return-void

    .line 5722
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method

.method waitUntilOperationComplete(I)Z
    .registers 8
    .param p1, "token"    # I

    .prologue
    const/4 v4, 0x1

    .line 1905
    const/4 v1, 0x0

    .line 1906
    .local v1, "finalState":I
    const/4 v2, 0x0

    .line 1907
    .local v2, "op":Lcom/android/server/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1909
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 1910
    if-nez v2, :cond_1d

    .line 1926
    :goto_12
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_2c

    .line 1928
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1931
    if-ne v1, v4, :cond_2f

    move v3, v4

    :goto_1c
    return v3

    .line 1914
    :cond_1d
    :try_start_1d
    iget v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2c

    if-nez v3, :cond_29

    .line 1916
    :try_start_21
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_2c

    goto :goto_6

    .line 1917
    :catch_27
    move-exception v3

    goto :goto_6

    .line 1921
    :cond_29
    :try_start_29
    iget v1, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1922
    goto :goto_12

    .line 1926
    :catchall_2c
    move-exception v3

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2c

    throw v3

    .line 1931
    :cond_2f
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method writeRestoreTokens()V
    .registers 8

    .prologue
    .line 1725
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1728
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1731
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1732
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1735
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_23

    .line 1736
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1745
    :cond_1f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1749
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_22
    return-void

    .line 1738
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_23
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1739
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1741
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_50

    .line 1746
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    :catch_60
    move-exception v1

    .line 1747
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
