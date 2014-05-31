.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$DirEncryptListner;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$PackageInstalledMap;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_ADDOBJ:I = 0x64

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private doSendSorry:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private final mASECDirectory:Ljava/lang/String;

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/MountService$PackageInstalledMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBooted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingIntent:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingIntentLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingIntentLock:Ljava/lang/Object;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureContainerVolume:Landroid/os/storage/StorageVolume;

.field private mSendUmsConnectedOnBoot:Z

.field private volatile mSystemReady:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumePendingStates:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

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

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 392
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1722
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 237
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    .line 240
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 243
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 247
    iput-boolean v1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 252
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 253
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 256
    iput-object v4, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    .line 257
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    .line 258
    iput-boolean v1, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 293
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 295
    invoke-static {}, Landroid/os/Environment;->getAndroidSecureContainerDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mASECDirectory:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 395
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 412
    iput-object v4, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 685
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 714
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 723
    new-instance v0, Lcom/android/server/MountService$3;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    .line 1481
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mPendingIntentLock:Ljava/lang/Object;

    .line 1482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mPendingIntent:Ljava/util/ArrayList;

    .line 3572
    new-instance v0, Lcom/android/server/MountService$9;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$9;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3601
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    .line 3638
    new-instance v0, Lcom/android/server/MountService$10;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$10;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 3648
    new-instance v0, Lcom/android/server/MountService$11;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$11;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    .line 3677
    iput-object v4, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 3678
    iput-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 1723
    const-string v0, "MountService"

    const-string v1, "MountService :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1726
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1727
    :try_start_bc
    invoke-direct {p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 1728
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_15f

    .line 1731
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1733
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1734
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1736
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1738
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "MountService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v7, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1740
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1743
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1744
    .local v10, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1745
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1746
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v10, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1749
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 1750
    .local v8, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v8, :cond_132

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 1751
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1763
    :cond_132
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1770
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1772
    new-instance v9, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1773
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1779
    return-void

    .line 1728
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "hthread":Landroid/os/HandlerThread;
    .end local v8    # "primary":Landroid/os/storage/StorageVolume;
    .end local v9    # "thread":Ljava/lang/Thread;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    :catchall_15f
    move-exception v0

    :try_start_160
    monitor-exit v1
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_15f

    throw v0
.end method

.method private ApplyCurrentSdCardPolicy(Z)V
    .registers 13
    .param p1, "available"    # Z

    .prologue
    .line 3610
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    .line 3611
    .local v0, "check":Z
    const/4 v3, 0x0

    .line 3612
    .local v3, "removeEncryption":Z
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplyCurrentSdCardPolicy :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", getAllowStorageCard : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    if-nez v0, :cond_91

    .line 3615
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2a
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_91

    .line 3616
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 3617
    .local v6, "vPath":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3618
    .local v7, "vState":Ljava/lang/String;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removable storage path :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    const-string v8, "checking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 3620
    const/16 v4, 0x1e

    .line 3621
    .local v4, "retries":I
    :goto_64
    const-string v8, "checking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    add-int/lit8 v5, v4, -0x1

    .end local v4    # "retries":I
    .local v5, "retries":I
    if-ltz v4, :cond_92

    .line 3623
    const-wide/16 v8, 0x3e8

    :try_start_72
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_75} :catch_77

    move v4, v5

    .line 3627
    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    goto :goto_64

    .line 3624
    .end local v4    # "retries":I
    .restart local v5    # "retries":I
    :catch_77
    move-exception v2

    .line 3625
    .local v2, "iex":Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v9, "Interrupted while waiting for media"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 3629
    .end local v2    # "iex":Ljava/lang/InterruptedException;
    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    :cond_80
    :goto_80
    if-nez v4, :cond_89

    .line 3630
    const-string v8, "MountService"

    const-string v9, "Timed out waiting for media to check"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    .end local v4    # "retries":I
    :cond_89
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    .line 3615
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 3636
    .end local v1    # "i":I
    .end local v6    # "vPath":Ljava/lang/String;
    .end local v7    # "vState":Ljava/lang/String;
    :cond_91
    return-void

    .restart local v1    # "i":I
    .restart local v5    # "retries":I
    .restart local v6    # "vPath":Ljava/lang/String;
    .restart local v7    # "vState":Ljava/lang/String;
    :cond_92
    move v4, v5

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    goto :goto_80
.end method

.method private declared-synchronized GetCurrentPolicy()Z
    .registers 4

    .prologue
    .line 3604
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3605
    .local v0, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v1

    monitor-exit p0

    return v1

    .line 3604
    .end local v0    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mPendingIntentLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mPendingIntent:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/MountService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 3708
    if-eqz p0, :cond_13

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    .line 3711
    .end local p0    # "input":Ljava/lang/String;
    :cond_13
    :goto_13
    return-object p0

    .restart local p0    # "input":Ljava/lang/String;
    :cond_14
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_13
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2938
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2939
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2941
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 2942
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2943
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2955
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    .line 2970
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2971
    return-void

    .line 2945
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2946
    .local v3, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2947
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2956
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/android/server/MountService$ObbState;
    :catch_48
    move-exception v1

    .line 2961
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2962
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 2963
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    :cond_57
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 1688
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVolumeLocked() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->orderedAddVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1692
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 1693
    .local v0, "existing":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_50

    .line 1694
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1697
    :cond_50
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3408
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_8

    .line 3449
    .end local p0    # "canonicalPath":Ljava/lang/String;
    :cond_7
    :goto_7
    return-object p0

    .line 3412
    .restart local p0    # "canonicalPath":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3415
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3418
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3420
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3423
    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 3424
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3432
    :goto_31
    const-string v2, "Android/obb"

    .line 3433
    .local v2, "obbPath":Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 3434
    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3436
    if-eqz p2, :cond_68

    .line 3437
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getEmulatedStorageObbSource()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 3425
    .end local v2    # "obbPath":Ljava/lang/String;
    :cond_57
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3426
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_31

    .line 3439
    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_68
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3440
    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 3446
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_7d
    if-eqz p2, :cond_8e

    .line 3447
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7

    .line 3449
    :cond_8e
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7
.end method

.method private checkExternalSecureContainerMounted()Z
    .registers 3

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2564
    :goto_5
    return v0

    :cond_6
    const-string v0, "mounted"

    iget-object v1, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private cleanupSercureContainerList(Ljava/lang/String;)V
    .registers 6
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 2184
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2185
    :try_start_3
    const-string v2, "all"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2186
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 2201
    :cond_10
    monitor-exit v3

    .line 2202
    return-void

    .line 2188
    :cond_12
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2189
    .local v0, "iter":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2191
    .local v1, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v2, :cond_37

    const-string v2, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2201
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :catchall_34
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v2

    .line 2195
    .restart local v0    # "iter":Ljava/util/Iterator;
    .restart local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_37
    :try_start_37
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-nez v2, :cond_18

    const-string v2, "internal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2196
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_34

    goto :goto_18
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1640
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_c

    .line 1641
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1644
    :cond_c
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 1645
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1646
    .local v0, "path":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1647
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1648
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1652
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "removed"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v3, :cond_3b

    .line 1655
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1661
    :goto_3a
    return-void

    .line 1658
    :cond_3b
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .registers 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1386
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "format"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_15
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_15} :catch_16

    .line 1403
    :goto_15
    return v3

    .line 1388
    :catch_16
    move-exception v1

    .line 1389
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1391
    .local v0, "code":I
    :try_start_18
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1b} :catch_29

    move-result v0

    .line 1395
    const/16 v3, 0x191

    if-ne v0, v3, :cond_2c

    .line 1396
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationFailedNoMedia"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/4 v3, -0x2

    goto :goto_15

    .line 1392
    :catch_29
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move v3, v4

    .line 1393
    goto :goto_15

    .line 1398
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_2c
    const/16 v3, 0x193

    if-ne v0, v3, :cond_39

    .line 1399
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v3, -0x4

    goto :goto_15

    .line 1402
    :cond_39
    const-string v3, "MountService"

    const-string v5, "doFormatVolume :: result = OperationFailedInternalError"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1403
    goto :goto_15
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1411
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_17
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_17} :catch_2b

    move-result-object v0

    .line 1417
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_2a

    .line 1418
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1420
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_2a
    :goto_2a
    return v2

    .line 1412
    :catch_2b
    move-exception v1

    .line 1413
    .local v1, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1306
    const-string v0, "mounting"

    invoke-direct {p0, p1, v0}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    .registers 26
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;

    .prologue
    .line 1170
    const-string v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doMountVolume :: mount path = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "enterprise_policy"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1174
    .local v11, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v11, :cond_6e

    .line 1175
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v13

    .line 1176
    .local v13, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v13, :cond_52

    invoke-virtual {v13}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v18

    if-nez v18, :cond_52

    const-string v18, "/storage/extSdCard"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6c

    :cond_52
    if-eqz p1, :cond_6e

    if-eqz v13, :cond_6e

    const-string v18, "/storage/UsbDrive"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6e

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/enterprise/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result v18

    if-nez v18, :cond_6e

    .line 1180
    :cond_6c
    const/4 v12, -0x2

    .line 1302
    .end local v13    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_6d
    :goto_6d
    return v12

    .line 1187
    :cond_6e
    const-string v18, "persist.sys.microsd_lock"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1188
    .local v10, "externalstorage_lock_state":Ljava/lang/String;
    const-string v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "externalstorage_lock_state = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v18, "microsd_lock.enabled"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_bc

    .line 1191
    const-string v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Can\'t mount internal storage("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v12, 0x0

    goto :goto_6d

    .line 1197
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1198
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    .line 1199
    .local v15, "storage":Landroid/os/storage/StorageVolume;
    monitor-exit v19
    :try_end_d4
    .catchall {:try_start_c3 .. :try_end_d4} :catchall_144

    .line 1201
    if-eqz v15, :cond_149

    .line 1202
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v5

    .line 1203
    .local v5, "check":Z
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v18

    if-eqz v18, :cond_147

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v18

    const-string v19, "sd"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_147

    const/4 v3, 0x1

    .line 1205
    .local v3, "ExtSdcard":Z
    :goto_ed
    if-eqz v15, :cond_f2

    if-nez v3, :cond_f2

    const/4 v5, 0x1

    .line 1208
    :cond_f2
    if-eqz v15, :cond_149

    if-eqz v3, :cond_149

    if-nez v5, :cond_149

    .line 1209
    const-string v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doMountVolume :: restricts in order to policy:: ExtSdcard = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " check = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v18, "MountService"

    const-string v19, "Send ACTION_SDCARD_ITPOLICY_TOAST_EVENT INTENT!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    new-instance v16, Landroid/content/Intent;

    const-string v18, "android.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v16, "toastintent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1215
    const/4 v12, -0x2

    goto/16 :goto_6d

    .line 1199
    .end local v3    # "ExtSdcard":Z
    .end local v5    # "check":Z
    .end local v15    # "storage":Landroid/os/storage/StorageVolume;
    .end local v16    # "toastintent":Landroid/content/Intent;
    :catchall_144
    move-exception v18

    :try_start_145
    monitor-exit v19
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    throw v18

    .line 1203
    .restart local v5    # "check":Z
    .restart local v15    # "storage":Landroid/os/storage/StorageVolume;
    :cond_147
    const/4 v3, 0x0

    goto :goto_ed

    .line 1218
    .end local v5    # "check":Z
    :cond_149
    const/4 v12, 0x0

    .line 1221
    .local v12, "rc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1222
    :try_start_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 1223
    .local v17, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v19
    :try_end_162
    .catchall {:try_start_151 .. :try_end_162} :catchall_1d1

    .line 1225
    const-string v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doMountVolume: Mouting "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v14, 0x0

    .line 1229
    .local v14, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_191

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v14

    .line 1231
    :cond_191
    if-nez v14, :cond_198

    .line 1232
    new-instance v14, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v14    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v14}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 1238
    .restart local v14    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_198
    :try_start_198
    const-string/jumbo v18, "vold.encrypt_progress"

    const-string v19, "false"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1239
    .local v8, "encDecProgress":Ljava/lang/String;
    const-string v18, "false"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d4

    .line 1240
    const-string v18, "MountService"

    const-string v19, "Do not mount if en/decryption is in progres"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_198 .. :try_end_1b2} :catch_1b4

    goto/16 :goto_6d

    .line 1258
    .end local v8    # "encDecProgress":Ljava/lang/String;
    :catch_1b4
    move-exception v7

    .line 1262
    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v4, 0x0

    .line 1263
    .local v4, "action":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1265
    .local v6, "code":I
    :try_start_1b7
    invoke-virtual {v7}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_1ba
    .catch Ljava/lang/NullPointerException; {:try_start_1b7 .. :try_end_1ba} :catch_27a

    move-result v6

    .line 1269
    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v6, v0, :cond_27e

    .line 1273
    const/4 v12, -0x2

    .line 1297
    :goto_1c2
    if-eqz v4, :cond_6d

    .line 1298
    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_6d

    .line 1223
    .end local v4    # "action":Ljava/lang/String;
    .end local v6    # "code":I
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v14    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v17    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1d1
    move-exception v18

    :try_start_1d2
    monitor-exit v19
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d1

    throw v18

    .line 1243
    .restart local v8    # "encDecProgress":Ljava/lang/String;
    .restart local v14    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v17    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1d4
    :try_start_1d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_216

    if-eqz p1, :cond_216

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MountService;->requiredEncPolicyCheck(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_216

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v18

    if-eqz v18, :cond_216

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v18, v0

    const-string/jumbo v19, "volume"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "mount"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object p1, v20, v21

    const/16 v21, 0x2

    const-string v22, "hidden"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_6d

    .line 1246
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_249

    if-eqz p1, :cond_249

    const/16 v18, 0x2

    iget v0, v14, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_249

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_249

    .line 1248
    const-string v18, "MountService"

    const-string v19, "Do not mount external SD card on user mode(=not owner) under SD card encryption policy is set"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    .line 1250
    :cond_249
    if-eqz v15, :cond_25a

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v18

    if-eqz v18, :cond_25a

    .line 1251
    const-string v18, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->cleanupSercureContainerList(Ljava/lang/String;)V

    .line 1253
    :cond_25a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v18, v0

    const-string/jumbo v19, "volume"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "mount"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object p1, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_278
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d4 .. :try_end_278} :catch_1b4

    goto/16 :goto_6d

    .line 1266
    .end local v8    # "encDecProgress":Ljava/lang/String;
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v6    # "code":I
    .restart local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_27a
    move-exception v9

    .line 1267
    .local v9, "ex":Ljava/lang/NullPointerException;
    const/4 v12, -0x1

    goto/16 :goto_6d

    .line 1274
    .end local v9    # "ex":Ljava/lang/NullPointerException;
    :cond_27e
    const/16 v18, 0x192

    move/from16 v0, v18

    if-ne v6, v0, :cond_29b

    .line 1275
    const-string v18, "MountService"

    const-string v19, " updating volume state :: media nofs"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v18, "nofs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1280
    const-string v4, "android.intent.action.MEDIA_NOFS"

    .line 1281
    const/4 v12, -0x3

    goto/16 :goto_1c2

    .line 1282
    :cond_29b
    const/16 v18, 0x193

    move/from16 v0, v18

    if-ne v6, v0, :cond_2ba

    .line 1283
    const-string v18, "MountService"

    const-string/jumbo v19, "updating volume state media corrupt"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string/jumbo v18, "unmountable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1288
    const-string v4, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1289
    const/4 v12, -0x4

    goto/16 :goto_1c2

    .line 1291
    :cond_2ba
    const/4 v12, -0x1

    goto/16 :goto_1c2
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 770
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string/jumbo v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 774
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :cond_47
    :try_start_47
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_60

    const-string v1, "share"

    :goto_54
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 782
    :goto_5f
    return-void

    .line 778
    :cond_60
    const-string/jumbo v1, "unshare"
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_47 .. :try_end_63} :catch_64

    goto :goto_54

    .line 779
    :catch_64
    move-exception v0

    .line 780
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/16 v4, 0x194

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1331
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doUnmountVolume :: path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", force = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", removeEncryption = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 1379
    :goto_3c
    return v4

    .line 1343
    :cond_3d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 1347
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1348
    :try_start_47
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 1349
    .local v3, "storage":Landroid/os/storage/StorageVolume;
    monitor-exit v7
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_6d

    .line 1350
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v7

    if-eqz v7, :cond_5d

    iget-object v7, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v5, v5}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1351
    :cond_5d
    if-eqz v3, :cond_70

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fuse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    move v4, v5

    goto :goto_3c

    .line 1349
    .end local v3    # "storage":Landroid/os/storage/StorageVolume;
    :catchall_6d
    move-exception v4

    :try_start_6e
    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v4

    .line 1353
    .restart local v3    # "storage":Landroid/os/storage/StorageVolume;
    :cond_70
    :try_start_70
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "unmount"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1354
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_9f

    .line 1355
    const-string v7, "force_and_revert"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1359
    :cond_8b
    :goto_8b
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 1364
    if-eqz v3, :cond_9d

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1365
    const-string v7, "external"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->cleanupSercureContainerList(Ljava/lang/String;)V

    :cond_9d
    move v4, v5

    .line 1366
    goto :goto_3c

    .line 1356
    :cond_9f
    if-eqz p2, :cond_8b

    .line 1357
    const-string v7, "force"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_a6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_70 .. :try_end_a6} :catch_a7

    goto :goto_8b

    .line 1367
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_a7
    move-exception v2

    .line 1370
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-direct {p0, v2, v6}, Lcom/android/server/MountService;->getCodeFromException(Lcom/android/server/NativeDaemonConnectorException;I)I

    move-result v1

    .line 1371
    .local v1, "code":I
    if-ne v1, v4, :cond_b7

    .line 1372
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedStorageNotMounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v4, -0x5

    goto :goto_3c

    .line 1374
    :cond_b7
    const/16 v4, 0x195

    if-ne v1, v4, :cond_c5

    .line 1375
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedStorageBusy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 v4, -0x7

    goto/16 :goto_3c

    .line 1378
    :cond_c5
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedInternalError"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 1379
    goto/16 :goto_3c
.end method

.method private getCodeFromException(Lcom/android/server/NativeDaemonConnectorException;I)I
    .registers 7
    .param p1, "e"    # Lcom/android/server/NativeDaemonConnectorException;
    .param p2, "defaultCode"    # I

    .prologue
    .line 1310
    move v0, p2

    .line 1312
    .local v0, "code":I
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    .line 1316
    :goto_5
    return v0

    .line 1313
    :catch_6
    move-exception v1

    .line 1314
    .local v1, "nex":Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Error getting code from exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .registers 5

    .prologue
    .line 1707
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1708
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 1709
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1710
    monitor-exit v3

    .line 1714
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :goto_22
    return-object v1

    .line 1713
    :cond_23
    monitor-exit v3

    .line 1714
    const/4 v1, 0x0

    goto :goto_22

    .line 1713
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "inter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2531
    const-string v5, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2532
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2533
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2537
    :try_start_e
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "fspath"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2538
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2539
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_29} :catch_2b

    move-result-object v4

    .line 2549
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_2a
    return-object v4

    .line 2540
    :catch_2b
    move-exception v1

    .line 2541
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2543
    .local v0, "code":I
    :try_start_2d
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_30} :catch_45

    move-result v0

    .line 2547
    const/16 v5, 0x196

    if-ne v0, v5, :cond_47

    .line 2548
    const-string v5, "MountService"

    const-string v6, "Container \'%s\' not found"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 2544
    :catch_45
    move-exception v3

    .line 2545
    .local v3, "ex":Ljava/lang/NullPointerException;
    goto :goto_2a

    .line 2551
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_47
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getUmsEnabling()Z
    .registers 3

    .prologue
    .line 1948
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1949
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 1950
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private handleSystemReady()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 642
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 643
    :try_start_5
    new-instance v4, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 644
    .local v4, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_55

    .line 646
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 647
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 648
    .local v2, "path":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 650
    .local v5, "state":Ljava/lang/String;
    const-string/jumbo v7, "unmounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 651
    const-string v7, "booting"

    invoke-direct {p0, v2, v7}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 652
    .local v3, "rc":I
    if-eqz v3, :cond_15

    .line 653
    const-string v7, "MountService"

    const-string v8, "Boot-time mount failed \'%s\' (%d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 644
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "rc":I
    .end local v4    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "state":Ljava/lang/String;
    :catchall_55
    move-exception v7

    :try_start_56
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v7

    .line 656
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "state":Ljava/lang/String;
    :cond_58
    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 661
    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-direct {p0, v7, v2, v11, v8}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_15

    .line 667
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "path":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    :cond_66
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 668
    :try_start_69
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6f
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 669
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 670
    const-string v7, "mounted"

    invoke-direct {p0, v6, v7}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_6f

    .line 673
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_87
    move-exception v7

    monitor-exit v8
    :try_end_89
    .catchall {:try_start_69 .. :try_end_89} :catchall_87

    throw v7

    :cond_8a
    :try_start_8a
    monitor-exit v8
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_87

    .line 679
    iget-boolean v7, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    if-eqz v7, :cond_94

    .line 680
    invoke-direct {p0, v12}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 681
    iput-boolean v11, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 683
    :cond_94
    return-void
.end method

.method private isExternalSecureContainer(Ljava/lang/String;)Z
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2568
    const/4 v0, 0x0

    .line 2569
    .local v0, "isExt":Z
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2570
    :try_start_4
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2571
    .local v1, "iter":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2572
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2573
    .local v2, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v3, v2, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2574
    iget-boolean v0, v2, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    .line 2578
    .end local v2    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_20
    monitor-exit v4

    .line 2580
    return v0

    .line 2578
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v3
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2588
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    .line 2603
    :cond_6
    :goto_6
    return v1

    .line 2592
    :cond_7
    if-nez p1, :cond_b

    move v1, v2

    .line 2593
    goto :goto_6

    .line 2596
    :cond_b
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2603
    .local v0, "packageUid":I
    if-eq p2, v0, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method private isUsbMassStorageEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "call"    # Ljava/lang/String;

    .prologue
    .line 2037
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2039
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 2040
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_15

    .line 2041
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ums"

    invoke-direct {p0, v1, v2}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2043
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "appPaths"    # [Ljava/io/File;
    .param p2, "voldPaths"    # [Ljava/io/File;

    .prologue
    .line 2899
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_c

    .line 2900
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Paths must be 1:1 mapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2903
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_61

    .line 2904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2905
    .local v0, "appPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2906
    new-instance v2, Ljava/io/File;

    aget-object v3, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 2908
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 2909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2914
    .end local v0    # "appPath":Ljava/lang/String;
    .end local p0    # "path":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-object p0

    .line 2903
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2914
    .end local v0    # "appPath":Ljava/lang/String;
    :cond_61
    const/4 p0, 0x0

    goto :goto_5d
.end method

.method private notifyShareAvailabilityChange(Z)V
    .registers 11
    .param p1, "avail"    # Z

    .prologue
    .line 1425
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyShareAvailabilityChange :: avail = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-boolean v6, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    if-ne v6, p1, :cond_47

    .line 1428
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate UMS state change ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_46
    :goto_46
    return-void

    .line 1432
    :cond_47
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1433
    :try_start_4a
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1434
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_54
    if-ltz v2, :cond_80

    .line 1435
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_74

    .line 1437
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_5e
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_66
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_77
    .catchall {:try_start_5e .. :try_end_63} :catchall_74

    .line 1434
    :goto_63
    add-int/lit8 v2, v2, -0x1

    goto :goto_54

    .line 1438
    :catch_66
    move-exception v5

    .line 1439
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_67
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_63

    .line 1445
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_74
    move-exception v6

    monitor-exit v7
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_74

    throw v6

    .line 1441
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_77
    move-exception v1

    .line 1442
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_78
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 1445
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_80
    monitor-exit v7
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_74

    .line 1447
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b0

    .line 1448
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1453
    :goto_89
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1454
    .local v4, "primary":Landroid/os/storage/StorageVolume;
    if-nez p1, :cond_46

    if-eqz v4, :cond_46

    const-string v6, "shared"

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1456
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1460
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Lcom/android/server/MountService$6;

    const-string v7, "MountService#AvailabilityChange"

    invoke-direct {v6, p0, v7, v3}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$6;->start()V

    goto :goto_46

    .line 1450
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "primary":Landroid/os/storage/StorageVolume;
    :cond_b0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_89
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x2

    .line 1079
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1080
    :try_start_5
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 1081
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1082
    .local v2, "state":Ljava/lang/String;
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_71

    .line 1086
    const/4 v0, 0x0

    .line 1088
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1089
    .local v1, "pending":Z
    if-ne p4, v7, :cond_17

    const/4 v1, 0x1

    .line 1091
    :cond_17
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    monitor-enter v5

    .line 1092
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, p2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_74

    .line 1096
    if-ne p3, v8, :cond_36

    if-eq p4, p3, :cond_36

    .line 1097
    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1101
    :cond_36
    const/4 v4, -0x1

    if-ne p4, v4, :cond_77

    .line 1161
    :cond_39
    :goto_39
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyVolumeStateChanged:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    if-eqz v0, :cond_70

    .line 1165
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1167
    :cond_70
    :goto_70
    return-void

    .line 1082
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "pending":Z
    .end local v2    # "state":Ljava/lang/String;
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_71
    move-exception v4

    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v4

    .line 1093
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "pending":Z
    .restart local v2    # "state":Ljava/lang/String;
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_74
    move-exception v4

    :try_start_75
    monitor-exit v5
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v4

    .line 1102
    :cond_77
    if-eqz p4, :cond_39

    .line 1104
    const/4 v4, 0x1

    if-ne p4, v4, :cond_ac

    .line 1109
    const-string v4, "bad_removal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "nofs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1113
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string/jumbo v4, "unmounted"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1115
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_39

    .line 1117
    :cond_ac
    if-eq p4, v7, :cond_39

    .line 1118
    const/4 v4, 0x3

    if-ne p4, v4, :cond_c2

    .line 1119
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state checking"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v4, "checking"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1121
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto/16 :goto_39

    .line 1122
    :cond_c2
    const/4 v4, 0x4

    if-ne p4, v4, :cond_d6

    .line 1123
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v4, "mounted"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1125
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_39

    .line 1128
    :cond_d6
    const/16 v4, 0xa

    if-ne p4, v4, :cond_e9

    .line 1129
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state move mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v4, "MoveMount"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto/16 :goto_39

    .line 1133
    :cond_e9
    const/4 v4, 0x5

    if-ne p4, v4, :cond_f0

    .line 1134
    const-string v0, "android.intent.action.MEDIA_EJECT"

    goto/16 :goto_39

    .line 1135
    :cond_f0
    const/4 v4, 0x6

    if-eq p4, v4, :cond_39

    .line 1136
    if-ne p4, v8, :cond_120

    .line 1137
    const-string v4, "MountService"

    const-string v5, "Updating volume state media mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string/jumbo v4, "unmounted"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1140
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1142
    const-string v4, "MountService"

    const-string v5, "Updating media shared"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const-string v4, "shared"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1144
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1145
    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 1146
    :cond_120
    const/16 v4, 0x8

    if-ne p4, v4, :cond_12d

    .line 1147
    const-string v4, "MountService"

    const-string v5, "Live shared mounts not supported yet!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 1151
    :cond_12d
    const/16 v4, 0x9

    if-ne p4, v4, :cond_15c

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 1153
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hidden Volume ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mounted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const-string v4, "checking"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto/16 :goto_39

    .line 1158
    :cond_15c
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled VolumeState {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39
.end method

.method private orderedAddVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 8
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 1665
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 1666
    .local v3, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1667
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    if-nez v4, :cond_27

    .line 1668
    :cond_21
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    :goto_26
    return-void

    .line 1671
    :cond_27
    const/4 v1, 0x0

    .line 1672
    .local v1, "indexToAddTo":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_44

    .line 1673
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1674
    .local v2, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1675
    add-int/lit8 v1, v0, 0x1

    .line 1672
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1680
    .end local v2    # "v":Landroid/os/storage/StorageVolume;
    :cond_44
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26

    .line 1683
    .end local v0    # "i":I
    .end local v1    # "indexToAddTo":I
    :cond_4a
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method private readStorageListLocked()V
    .registers 33

    .prologue
    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1526
    .local v26, "resources":Landroid/content/res/Resources;
    const v21, 0x10f0016

    .line 1527
    .local v21, "id":I
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v24

    .line 1528
    .local v24, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static/range {v24 .. v24}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v16

    .line 1531
    .local v16, "attrs":Landroid/util/AttributeSet;
    :try_start_25
    const-string v3, "StorageList"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1533
    :cond_2c
    :goto_2c
    invoke-static/range {v24 .. v24}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1535
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_32} :catch_172
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_1b8
    .catchall {:try_start_25 .. :try_end_32} :catchall_17b

    move-result-object v19

    .line 1536
    .local v19, "element":Ljava/lang/String;
    if-nez v19, :cond_61

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_20c

    const/16 v22, 0x1

    .line 1626
    .local v22, "index":I
    :goto_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_45
    :goto_45
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_204

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1627
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1628
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "index":I
    .local v23, "index":I
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v22, v23

    .end local v23    # "index":I
    .restart local v22    # "index":I
    goto :goto_45

    .line 1538
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "index":I
    :cond_61
    :try_start_61
    const-string/jumbo v3, "storage"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1539
    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 1542
    .local v15, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1544
    .local v25, "path":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1546
    .local v4, "descriptionId":I
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 1548
    .local v17, "description":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    const/4 v12, 0x0

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1550
    .local v5, "primary":Z
    const/4 v3, 0x3

    const/4 v12, 0x0

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1552
    .local v6, "removable":Z
    const/4 v3, 0x4

    const/4 v12, 0x0

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1554
    .local v7, "emulated":Z
    const/4 v3, 0x5

    const/4 v12, 0x0

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 1556
    .local v8, "mtpReserve":I
    const/4 v3, 0x6

    const/4 v12, 0x0

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1559
    .local v9, "allowMassStorage":Z
    const/4 v3, 0x7

    const/4 v12, 0x0

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v12, v3

    const-wide/16 v30, 0x400

    mul-long v12, v12, v30

    const-wide/16 v30, 0x400

    mul-long v10, v12, v30

    .line 1563
    .local v10, "maxFileSize":J
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .line 1566
    .local v27, "subsystem":Ljava/lang/CharSequence;
    const/16 v3, 0x9

    const/4 v12, 0x0

    invoke-virtual {v15, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1569
    .local v14, "activitySecureContainer":Z
    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "got storage path: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " description: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " primary: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " removable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " emulated: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mtpReserve: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " allowMassStorage: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " maxFileSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " subsystem: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " activitySecureContainer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    if-eqz v7, :cond_1a8

    .line 1581
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    move-result-object v13

    invoke-direct/range {v2 .. v14}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    .line 1585
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v29

    .line 1586
    .local v29, "userManager":Lcom/android/server/pm/UserManagerService;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_15c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    .line 1587
    .local v28, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    :try_end_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_171} :catch_172
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_171} :catch_1b8
    .catchall {:try_start_61 .. :try_end_171} :catchall_17b

    goto :goto_15c

    .line 1618
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v14    # "activitySecureContainer":Z
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "description":Ljava/lang/CharSequence;
    .end local v19    # "element":Ljava/lang/String;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v25    # "path":Ljava/lang/String;
    .end local v27    # "subsystem":Ljava/lang/CharSequence;
    .end local v28    # "user":Landroid/content/pm/UserInfo;
    .end local v29    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catch_172
    move-exception v18

    .line 1619
    .local v18, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_173
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_17b
    .catchall {:try_start_173 .. :try_end_17b} :catchall_17b

    .line 1625
    .end local v18    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_17b
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_208

    const/16 v22, 0x1

    .line 1626
    .restart local v22    # "index":I
    :goto_184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_18c
    :goto_18c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_200

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1627
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_18c

    .line 1628
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "index":I
    .restart local v23    # "index":I
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v22, v23

    .end local v23    # "index":I
    .restart local v22    # "index":I
    goto :goto_18c

    .line 1591
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "index":I
    .restart local v4    # "descriptionId":I
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v8    # "mtpReserve":I
    .restart local v9    # "allowMassStorage":Z
    .restart local v10    # "maxFileSize":J
    .restart local v14    # "activitySecureContainer":Z
    .restart local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v17    # "description":Ljava/lang/CharSequence;
    .restart local v19    # "element":Ljava/lang/String;
    .restart local v25    # "path":Ljava/lang/String;
    .restart local v27    # "subsystem":Ljava/lang/CharSequence;
    :cond_1a8
    if-eqz v25, :cond_1ac

    if-nez v17, :cond_1c1

    .line 1592
    :cond_1ac
    :try_start_1ac
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    :cond_1b3
    :goto_1b3
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ac .. :try_end_1b6} :catch_172
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b6} :catch_1b8
    .catchall {:try_start_1ac .. :try_end_1b6} :catchall_17b

    goto/16 :goto_2c

    .line 1620
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v14    # "activitySecureContainer":Z
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "description":Ljava/lang/CharSequence;
    .end local v19    # "element":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    .end local v27    # "subsystem":Ljava/lang/CharSequence;
    :catch_1b8
    move-exception v18

    .line 1621
    .local v18, "e":Ljava/io/IOException;
    :try_start_1b9
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_17b

    .line 1594
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v4    # "descriptionId":I
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v8    # "mtpReserve":I
    .restart local v9    # "allowMassStorage":Z
    .restart local v10    # "maxFileSize":J
    .restart local v14    # "activitySecureContainer":Z
    .restart local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v17    # "description":Ljava/lang/CharSequence;
    .restart local v19    # "element":Ljava/lang/String;
    .restart local v25    # "path":Ljava/lang/String;
    .restart local v27    # "subsystem":Ljava/lang/CharSequence;
    :cond_1c1
    :try_start_1c1
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v2 .. v14}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 1598
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "unmounted"

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-string/jumbo v3, "unmounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 1604
    if-eqz v14, :cond_1b3

    .line 1605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1f8

    .line 1606
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    goto :goto_1b3

    .line 1608
    :cond_1f8
    const-string v3, "MountService"

    const-string v12, "multiple secure container volumes in storage list"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ff
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c1 .. :try_end_1ff} :catch_172
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1ff} :catch_1b8
    .catchall {:try_start_1c1 .. :try_end_1ff} :catchall_17b

    goto :goto_1b3

    .line 1631
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "descriptionId":I
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "mtpReserve":I
    .end local v9    # "allowMassStorage":Z
    .end local v10    # "maxFileSize":J
    .end local v14    # "activitySecureContainer":Z
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "description":Ljava/lang/CharSequence;
    .end local v19    # "element":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    .end local v27    # "subsystem":Ljava/lang/CharSequence;
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "index":I
    :cond_200
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1625
    throw v3

    .line 1631
    .restart local v19    # "element":Ljava/lang/String;
    :cond_204
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1633
    return-void

    .line 1625
    .end local v19    # "element":Ljava/lang/String;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "index":I
    :cond_208
    const/16 v22, 0x0

    goto/16 :goto_184

    .restart local v19    # "element":Ljava/lang/String;
    :cond_20c
    const/16 v22, 0x0

    goto/16 :goto_3d
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 2974
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2975
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2976
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 2977
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2978
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2980
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2981
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    :cond_22
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 5
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 1700
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVolumeLocked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1702
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1486
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1487
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1488
    iget-object v2, p0, Lcom/android/server/MountService;->mPendingIntentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1489
    :try_start_29
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBooted:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_57

    .line 1490
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendStorageIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1497
    :goto_55
    monitor-exit v2

    .line 1498
    return-void

    .line 1493
    :cond_57
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendStorageIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skipped, due to boot don\'t complete yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v1, p0, Lcom/android/server/MountService;->mPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 1497
    :catchall_7b
    move-exception v1

    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_29 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method private sendUmsIntent(Z)V
    .registers 5
    .param p1, "c"    # Z

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/server/MountService;->mBooted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1502
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_16

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_d
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1508
    :goto_15
    return-void

    .line 1502
    :cond_16
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_d

    .line 1506
    :cond_19
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUmsIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipped, due to boot don\'t complete yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private setUmsEnabling(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1954
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1955
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1956
    monitor-exit v1

    .line 1957
    return-void

    .line 1956
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static sortByValue(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .param p0, "m"    # Ljava/util/Map;

    .prologue
    .line 3552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3553
    .local v0, "keys":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3554
    new-instance v1, Lcom/android/server/MountService$8;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$8;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3569
    return-object v0
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 14
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 785
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePublicVolumeState :: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 789
    :try_start_30
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 790
    .local v3, "oldState":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 791
    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_58

    .line 793
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 794
    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_57
    return-void

    .line 791
    .end local v3    # "oldState":Ljava/lang/String;
    :catchall_58
    move-exception v6

    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v6

    .line 799
    .restart local v3    # "oldState":Ljava/lang/String;
    :cond_5b
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-eqz p1, :cond_b0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 805
    const-string/jumbo v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 806
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 813
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 820
    :cond_b0
    :goto_b0
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 821
    :try_start_b3
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_bb
    if-ltz v2, :cond_f5

    .line 822
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_c5
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_e9

    .line 824
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_c5
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_ca} :catch_db
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ca} :catch_ec
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_e9

    .line 821
    :goto_ca
    add-int/lit8 v2, v2, -0x1

    goto :goto_bb

    .line 815
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    :cond_cd
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 816
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_b0

    .line 825
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_db
    move-exception v5

    .line 826
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_dc
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_ca

    .line 832
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_e9
    move-exception v6

    monitor-exit v7
    :try_end_eb
    .catchall {:try_start_dc .. :try_end_eb} :catchall_e9

    throw v6

    .line 828
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_ec
    move-exception v1

    .line 829
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_ed
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ca

    .line 832
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_f5
    monitor-exit v7
    :try_end_f6
    .catchall {:try_start_ed .. :try_end_f6} :catchall_e9

    goto/16 :goto_57
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1512
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_1a
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 626
    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 627
    return-void

    .line 629
    :cond_b
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_0

    .line 632
    :catch_32
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 621
    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    .prologue
    .line 2169
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2170
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_1e

    .line 2171
    const/4 v0, 0x0

    .line 2173
    .local v0, "mounted":Z
    :try_start_7
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_14} :catch_1f

    move-result v0

    .line 2177
    :goto_15
    if-nez v0, :cond_1e

    .line 2178
    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    .end local v0    # "mounted":Z
    :cond_1e
    return-void

    .line 2174
    .restart local v0    # "mounted":Z
    :catch_1f
    move-exception v2

    goto :goto_15
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2778
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2781
    :cond_e
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2787
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :try_start_21
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2793
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_40} :catch_42

    move-result v2

    .line 2796
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_41
    return v2

    .line 2794
    :catch_42
    move-exception v0

    .line 2796
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_41
.end method

.method public changeEncryptionPassword2(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 3763
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1a

    .line 3766
    :cond_12
    const-string v3, "MountService"

    const-string v4, "Password is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    :goto_19
    return v2

    .line 3769
    :cond_1a
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2a

    .line 3770
    :cond_22
    const-string v3, "MountService"

    const-string v4, "New Password is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 3774
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3778
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "changepw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3779
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_54
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2d .. :try_end_54} :catch_56

    move-result v2

    goto :goto_19

    .line 3780
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_56
    move-exception v0

    .line 3782
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeEncryptionPassword faile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 2253
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: createSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sizeMb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fstype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ownerUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", external = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2255
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2256
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2258
    const/4 v1, 0x0

    .line 2260
    .local v1, "rc":I
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_92

    const-string v2, "1"

    :goto_79
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_7e} :catch_95

    .line 2266
    :goto_7e
    if-nez v1, :cond_91

    .line 2267
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2268
    if-eqz p6, :cond_98

    .line 2269
    :try_start_85
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2273
    :goto_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_a4

    .line 2275
    :cond_91
    return v1

    .line 2260
    :cond_92
    :try_start_92
    const-string v2, "0"
    :try_end_94
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_92 .. :try_end_94} :catch_95

    goto :goto_79

    .line 2262
    :catch_95
    move-exception v0

    .line 2263
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_7e

    .line 2271
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_98
    :try_start_98
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 2273
    :catchall_a4
    move-exception v2

    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_a4

    throw v2
.end method

.method public cryptoMount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "mountpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 3788
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CRYPT_KEEPER"

    const-string v6, "no permission to access the crypt keeper"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3790
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3792
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1d

    .line 3793
    :cond_15
    const-string v4, "MountService"

    const-string v5, "Password is null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    :goto_1c
    return v3

    .line 3796
    :cond_1d
    move-object v2, p2

    .line 3797
    .local v2, "mntname":Ljava/lang/String;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_28

    .line 3798
    :cond_26
    const-string v2, ""

    .line 3802
    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "cryptfs"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3803
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_4a} :catch_4c

    move-result v3

    goto :goto_1c

    .line 3804
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_4c
    move-exception v0

    .line 3806
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cryptoMount faile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2714
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2717
    :cond_e
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2723
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :try_start_21
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2730
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2731
    .local v0, "code":I
    if-nez v0, :cond_4f

    .line 2734
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$7;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_4f} :catch_50

    .line 2748
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_4f
    :goto_4f
    return v0

    .line 2746
    :catch_50
    move-exception v1

    .line 2748
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_4f
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2315
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: destroySecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const-string v5, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2317
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2318
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2326
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2328
    const/4 v4, 0x0

    .line 2330
    .local v4, "rc":I
    :try_start_35
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "asec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "destroy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2331
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_4e

    .line 2332
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2334
    :cond_4e
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_53} :catch_72

    .line 2349
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_53
    if-nez v4, :cond_70

    .line 2350
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2351
    :try_start_58
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 2352
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2354
    :cond_6f
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_83

    :cond_70
    move v5, v4

    .line 2357
    :goto_71
    return v5

    .line 2335
    :catch_72
    move-exception v2

    .line 2336
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    .line 2338
    .local v1, "code":I
    :try_start_74
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_77
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_77} :catch_7e

    move-result v1

    .line 2342
    const/16 v5, 0x195

    if-ne v1, v5, :cond_81

    .line 2343
    const/4 v4, -0x7

    goto :goto_53

    .line 2339
    :catch_7e
    move-exception v3

    .line 2340
    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v5, -0x1

    goto :goto_71

    .line 2345
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_81
    const/4 v4, -0x1

    goto :goto_53

    .line 2354
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_83
    move-exception v5

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v5
.end method

.method public dirCryptoMntFinished(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3879
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "mount"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "dirCryptoMntFinished"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_18} :catch_19

    .line 3883
    :goto_18
    return-void

    .line 3880
    :catch_19
    move-exception v0

    .line 3881
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot update VolumeState! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public disableStorageEncryption(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3739
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3740
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3743
    :cond_f
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3749
    const-string v2, "MountService"

    const-string v3, "decrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    :try_start_22
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "disablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_3e} :catch_3f

    .line 3759
    :goto_3e
    return v1

    .line 3754
    :catch_3f
    move-exception v0

    .line 3756
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_3e
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.DUMP"

    const-string v24, "MountService"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    new-instance v20, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v22, "  "

    const/16 v23, 0xa0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3459
    .local v20, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3460
    :try_start_25
    const-string v22, "mObbMounts:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3464
    .local v4, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_99

    .line 3465
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3466
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3468
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 3469
    .local v18, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_7e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_95

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/MountService$ObbState;

    .line 3470
    .local v17, "obbState":Lcom/android/server/MountService$ObbState;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7e

    .line 3487
    .end local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v18    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_92
    move-exception v22

    monitor-exit v23
    :try_end_94
    .catchall {:try_start_25 .. :try_end_94} :catchall_92

    throw v22

    .line 3472
    .restart local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v18    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_95
    :try_start_95
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_3f

    .line 3474
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v18    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_99
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3476
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3477
    const-string v22, "mObbPathToStateMap:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3478
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3480
    .local v16, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_b9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e7

    .line 3481
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3482
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3483
    const-string v22, " -> "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3484
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_b9

    .line 3486
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_e7
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3487
    monitor-exit v23
    :try_end_eb
    .catchall {:try_start_95 .. :try_end_eb} :catchall_92

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3490
    :try_start_f2
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3491
    const-string v22, "mVolumes:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3492
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_10b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/StorageVolume;

    .line 3494
    .local v21, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3495
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3496
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current state: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3497
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_10b

    .line 3500
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v21    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_157
    move-exception v22

    monitor-exit v23
    :try_end_159
    .catchall {:try_start_f2 .. :try_end_159} :catchall_157

    throw v22

    .line 3499
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_15a
    :try_start_15a
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3500
    monitor-exit v23
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_157

    .line 3502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3503
    :try_start_165
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mListeners: count = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3505
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 3506
    .local v14, "listenerCaller":Ljava/util/Map;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v9, v22, -0x1

    .local v9, "i":I
    :goto_1a2
    if-ltz v9, :cond_1ec

    .line 3507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 3508
    .local v5, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    invoke-virtual {v5}, Lcom/android/server/MountService$MountServiceBinderListener;->getCaller()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3509
    .local v19, "pid":Ljava/lang/Integer;
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3510
    .local v8, "freq":Ljava/lang/Integer;
    if-nez v8, :cond_1d9

    new-instance v22, Ljava/lang/Integer;

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_1cf
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3506
    add-int/lit8 v9, v9, -0x1

    goto :goto_1a2

    .line 3510
    :cond_1d9
    new-instance v22, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1cf

    .line 3523
    .end local v5    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v8    # "freq":Ljava/lang/Integer;
    .end local v9    # "i":I
    .end local v14    # "listenerCaller":Ljava/util/Map;
    .end local v19    # "pid":Ljava/lang/Integer;
    :catchall_1e9
    move-exception v22

    monitor-exit v23
    :try_end_1eb
    .catchall {:try_start_165 .. :try_end_1eb} :catchall_1e9

    throw v22

    .line 3513
    .restart local v9    # "i":I
    .restart local v14    # "listenerCaller":Ljava/util/Map;
    :cond_1ec
    const/4 v12, 0x0

    .line 3515
    .local v12, "j":I
    :try_start_1ed
    invoke-static {v14}, Lcom/android/server/MountService;->sortByValue(Ljava/util/Map;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iter":Ljava/util/Iterator;
    :goto_1f5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_243

    .line 3516
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 3517
    .local v13, "key":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3518
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "pid = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", counter of call = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3520
    const/16 v22, 0x3

    move/from16 v0, v22

    if-lt v12, v0, :cond_2b0

    .line 3523
    .end local v13    # "key":Ljava/lang/Integer;
    :cond_243
    monitor-exit v23
    :try_end_244
    .catchall {:try_start_1ed .. :try_end_244} :catchall_1e9

    .line 3525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3526
    :try_start_24b
    const-string v22, "mAsecMountSet: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3528
    :goto_25e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2b4

    .line 3529
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/MountService$PackageInstalledMap;

    .line 3530
    .local v15, "map":Lcom/android/server/MountService$PackageInstalledMap;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3531
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "id = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", external = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-boolean v0, v15, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3532
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_25e

    .line 3534
    .end local v15    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :catchall_2ad
    move-exception v22

    monitor-exit v23
    :try_end_2af
    .catchall {:try_start_24b .. :try_end_2af} :catchall_2ad

    throw v22

    .line 3521
    .restart local v13    # "key":Ljava/lang/Integer;
    :cond_2b0
    add-int/lit8 v12, v12, 0x1

    .line 3522
    goto/16 :goto_1f5

    .line 3534
    .end local v13    # "key":Ljava/lang/Integer;
    :cond_2b4
    :try_start_2b4
    monitor-exit v23
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_2ad

    .line 3536
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3537
    const-string v22, "mConnection:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3540
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3541
    return-void
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2753
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2754
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2757
    :cond_f
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2763
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :try_start_22
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_3e} :catch_3f

    .line 2773
    :goto_3e
    return v1

    .line 2768
    :catch_3f
    move-exception v0

    .line 2770
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_3e
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2279
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: finalizeSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2281
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2283
    const/4 v1, 0x0

    .line 2285
    .local v1, "rc":I
    :try_start_21
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_33} :catch_34

    .line 2293
    :goto_33
    return v1

    .line 2290
    :catch_34
    move-exception v0

    .line 2291
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_33
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2585
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 2297
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: fixPermissionsSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2299
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2301
    const/4 v1, 0x0

    .line 2303
    .local v1, "rc":I
    :try_start_35
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_51} :catch_52

    .line 2311
    :goto_51
    return v1

    .line 2308
    :catch_52
    move-exception v0

    .line 2309
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_51
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2132
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: formatVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2134
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2136
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 2691
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2698
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2699
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_24} :catch_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_2f

    move-result v2

    .line 2707
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_25
    return v2

    .line 2700
    :catch_26
    move-exception v0

    .line 2702
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2704
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2f
    move-exception v0

    .line 2706
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 2607
    const-string v6, "rawPath cannot be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2610
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2613
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v6

    .line 2614
    :try_start_11
    iget-object v7, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 2615
    .local v4, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_35

    .line 2616
    if-nez v4, :cond_38

    .line 2617
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find OBB mounted at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_34
    :goto_34
    return-object v5

    .line 2615
    .end local v4    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v5

    .line 2623
    .restart local v4    # "state":Lcom/android/server/MountService$ObbState;
    :cond_38
    :try_start_38
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "obb"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "path"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2624
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v6, 0xd3

    invoke-virtual {v2, v6}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2625
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_55} :catch_57

    move-result-object v5

    goto :goto_34

    .line 2626
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_57
    move-exception v1

    .line 2627
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2629
    .local v0, "code":I
    :try_start_59
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_5c
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_5c} :catch_75

    move-result v0

    .line 2633
    const/16 v6, 0x196

    if-eq v0, v6, :cond_34

    .line 2636
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected response code %d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2630
    :catch_75
    move-exception v3

    .line 2631
    .local v3, "ex":Ljava/lang/NullPointerException;
    goto :goto_34
.end method

.method public getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3867
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const/16 v3, 0x4e20

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getfield"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3868
    .local v1, "event":[Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3869
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_23} :catch_25

    move-result-object v2

    .line 3873
    .end local v1    # "event":[Lcom/android/server/NativeDaemonEvent;
    :goto_24
    return-object v2

    .line 3870
    :catch_25
    move-exception v0

    .line 3872
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Cannot get the property from footer"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2557
    const-string v1, "noting"

    invoke-direct {p0, p1, v1}, Lcom/android/server/MountService;->getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2558
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: getSecureContainerFilesystemPath :: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return-object v0
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 2205
    const-string v7, "MountService"

    const-string v8, " :::: getSecureContainerList"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    const-string v7, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2207
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2208
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2212
    :try_start_13
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "asec"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "list"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x6f

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_28} :catch_5f

    move-result-object v5

    .line 2219
    .local v5, "packdata":[Ljava/lang/String;
    :goto_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2222
    .local v0, "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v8

    .line 2223
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/MountService;->checkExternalSecureContainerMounted()Z

    move-result v7

    if-nez v7, :cond_80

    .line 2226
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2227
    .local v6, "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2228
    .local v2, "i":I
    iget-object v7, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2229
    .local v3, "iter":Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 2231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2232
    .local v4, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v7, :cond_47

    .line 2233
    iget-object v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_35 .. :try_end_5c} :catchall_8c

    .line 2234
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 2215
    .end local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    .end local v5    # "packdata":[Ljava/lang/String;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_5f
    move-exception v1

    .line 2216
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v5, v12, [Ljava/lang/String;

    .restart local v5    # "packdata":[Ljava/lang/String;
    goto :goto_29

    .line 2238
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_63
    if-lez v2, :cond_7d

    .line 2239
    :try_start_65
    const-string v7, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSecureContainerList : (no media) lists = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_7d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2245
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_80
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_65 .. :try_end_81} :catchall_8c

    .line 2247
    new-array v7, v12, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 2245
    :catchall_8c
    move-exception v7

    :try_start_8d
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v7
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2497
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: getSecureContainerPath :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    const-string v5, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2499
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2500
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2502
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-direct {p0}, Lcom/android/server/MountService;->checkExternalSecureContainerMounted()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 2503
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 2504
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSecureContainerPath : (no media) return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/MountService;->mASECDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/MountService;->mASECDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2523
    :goto_7c
    return-object v4

    .line 2511
    :cond_7d
    :try_start_7d
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2512
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2513
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_98
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7d .. :try_end_98} :catch_9a

    move-result-object v4

    goto :goto_7c

    .line 2514
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_9a
    move-exception v1

    .line 2515
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2517
    .local v0, "code":I
    :try_start_9c
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_9f
    .catch Ljava/lang/NullPointerException; {:try_start_9c .. :try_end_9f} :catch_b4

    move-result v0

    .line 2521
    const/16 v5, 0x196

    if-ne v0, v5, :cond_b6

    .line 2522
    const-string v5, "MountService"

    const-string v6, "Container \'%s\' not found"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2518
    :catch_b4
    move-exception v3

    .line 2519
    .local v3, "ex":Ljava/lang/NullPointerException;
    goto :goto_7c

    .line 2525
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_b6
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 15
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 2140
    const-string v7, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2141
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2143
    :try_start_9
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "storage"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "users"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x70

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v5

    .line 2148
    .local v5, "r":[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [I

    .line 2149
    .local v1, "data":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    array-length v7, v5

    if-ge v3, v7, :cond_57

    .line 2150
    aget-object v7, v5, v3

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_32} :catch_6b

    move-result-object v6

    .line 2152
    .local v6, "tok":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_34
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3c} :catch_3f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34 .. :try_end_3c} :catch_58
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_3c} :catch_6b

    .line 2149
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2153
    :catch_3f
    move-exception v4

    .line 2154
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_40
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Error parsing pid %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const/4 v7, 0x0

    new-array v1, v7, [I

    .line 2164
    .end local v1    # "data":[I
    .end local v3    # "i":I
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "r":[Ljava/lang/String;
    .end local v6    # "tok":[Ljava/lang/String;
    :cond_57
    :goto_57
    return-object v1

    .line 2156
    .restart local v1    # "data":[I
    .restart local v3    # "i":I
    .restart local v5    # "r":[Ljava/lang/String;
    .restart local v6    # "tok":[Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 2157
    .local v0, "are":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: out of bounds"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    const/4 v7, 0x0

    new-array v1, v7, [I
    :try_end_6a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_40 .. :try_end_6a} :catch_6b

    goto :goto_57

    .line 2162
    .end local v0    # "are":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1    # "data":[I
    .end local v3    # "i":I
    .end local v5    # "r":[Ljava/lang/String;
    .end local v6    # "tok":[Ljava/lang/String;
    :catch_6b
    move-exception v2

    .line 2163
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Failed to retrieve storage users list"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2164
    new-array v1, v12, [I

    goto :goto_57
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2919
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2920
    .local v1, "callingUserId":I
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_4a

    move v0, v7

    .line 2924
    .local v0, "accessAll":Z
    :goto_19
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2925
    :try_start_1c
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2926
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 2927
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 2928
    .local v4, "owner":Landroid/os/UserHandle;
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4c

    :cond_3e
    move v5, v7

    .line 2929
    .local v5, "ownerMatch":Z
    :goto_3f
    if-nez v0, :cond_43

    if-eqz v5, :cond_26

    .line 2930
    :cond_43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 2934
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v5    # "ownerMatch":Z
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_47
    move-exception v7

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_47

    throw v7

    .end local v0    # "accessAll":Z
    :cond_4a
    move v0, v8

    .line 2920
    goto :goto_19

    .restart local v0    # "accessAll":Z
    .restart local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "owner":Landroid/os/UserHandle;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4c
    move v5, v8

    .line 2928
    goto :goto_3f

    .line 2933
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_47

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 2051
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2052
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2053
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_3a

    .line 2054
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 2056
    const-string v0, "removed"

    .line 2062
    :cond_3a
    monitor-exit v2

    return-object v0

    .line 2058
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2063
    .end local v0    # "state":Ljava/lang/String;
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 2643
    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2645
    :try_start_8
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2646
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2458
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2459
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2460
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2462
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 2463
    :try_start_e
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v3, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2464
    .local v0, "ret":Z
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: isSecureContainerMounted :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    monitor-exit v2

    return v0

    .line 2466
    .end local v0    # "ret":Z
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public isStorageFullyEncrypted()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 3832
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3839
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fullyencrypted"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3840
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_24} :catch_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_2f

    move-result v2

    .line 3848
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_25
    return v2

    .line 3841
    :catch_26
    move-exception v0

    .line 3843
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs fullyencrypted"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3845
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2f
    move-exception v0

    .line 3847
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public isUsbMassStorageConnected()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1960
    const-string/jumbo v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    .line 1973
    :cond_e
    :goto_e
    return v1

    .line 1963
    :cond_f
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1965
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1966
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_e

    .line 1968
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1969
    const/4 v1, 0x1

    goto :goto_e

    .line 1971
    :cond_20
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1972
    :try_start_23
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsbMassStorageConnected :: ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-boolean v1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v2

    goto :goto_e

    .line 1974
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 5

    .prologue
    .line 2031
    const-string v1, "share"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->isUsbMassStorageEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 2032
    .local v0, "ret":Z
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: isUsbMassStorageEnabled :: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    return v0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2837
    .local v3, "userId":I
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2840
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2842
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2845
    :try_start_1f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_65

    move-result-object p2

    .line 2851
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 2852
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2857
    :cond_43
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 2860
    .local v4, "voldPath":Ljava/lang/String;
    if-eqz v4, :cond_90

    .line 2862
    :try_start_51
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_51 .. :try_end_64} :catch_8a

    .line 2877
    .end local v4    # "voldPath":Ljava/lang/String;
    :goto_64
    return v5

    .line 2846
    :catch_65
    move-exception v1

    .line 2847
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    const/4 v5, -0x1

    goto :goto_64

    .line 2864
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "voldPath":Ljava/lang/String;
    :catch_8a
    move-exception v1

    .line 2865
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_64

    .line 2869
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_90
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 2872
    if-eqz v4, :cond_b8

    .line 2874
    :try_start_9e
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_b1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9e .. :try_end_b1} :catch_b2

    goto :goto_64

    .line 2876
    :catch_b2
    move-exception v1

    .line 2877
    .restart local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_64

    .line 2881
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_b8
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mkdirs path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 3546
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3548
    :cond_9
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 2652
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    const-string/jumbo v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2657
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2658
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 2659
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2663
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I

    .prologue
    .line 2361
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: mountSecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ownerUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    const-string v5, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2363
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2364
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2366
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2367
    :try_start_30
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2368
    const/4 v4, -0x6

    monitor-exit v6

    .line 2399
    :cond_3f
    :goto_3f
    return v4

    .line 2370
    :cond_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_86

    .line 2372
    const/4 v4, 0x0

    .line 2374
    .local v4, "rc":I
    :try_start_42
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "mount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v9, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_42 .. :try_end_63} :catch_89

    .line 2387
    :cond_63
    :goto_63
    const-string v5, "not"

    invoke-direct {p0, p1, v5}, Lcom/android/server/MountService;->getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2390
    .local v3, "path":Ljava/lang/String;
    if-nez v4, :cond_3f

    .line 2391
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2392
    :try_start_6e
    const-string v5, "/data/app-asec/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 2393
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p1, v8}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2397
    :goto_81
    monitor-exit v6

    goto :goto_3f

    :catchall_83
    move-exception v5

    monitor-exit v6
    :try_end_85
    .catchall {:try_start_6e .. :try_end_85} :catchall_83

    throw v5

    .line 2370
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "rc":I
    :catchall_86
    move-exception v5

    :try_start_87
    monitor-exit v6
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v5

    .line 2375
    .restart local v4    # "rc":I
    :catch_89
    move-exception v1

    .line 2376
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2378
    .local v0, "code":I
    :try_start_8b
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_8e
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_8e} :catch_95

    move-result v0

    .line 2382
    const/16 v5, 0x195

    if-eq v0, v5, :cond_63

    .line 2383
    const/4 v4, -0x1

    goto :goto_63

    .line 2379
    :catch_95
    move-exception v2

    .line 2380
    .local v2, "ex":Ljava/lang/NullPointerException;
    const/4 v4, -0x1

    goto :goto_3f

    .line 2395
    .end local v0    # "code":I
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_98
    :try_start_98
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v8, 0x1

    invoke-direct {v7, p0, p1, v8}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catchall {:try_start_98 .. :try_end_a3} :catchall_83

    goto :goto_81
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2084
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: mountVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2087
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2088
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 4

    .prologue
    .line 840
    const-string/jumbo v1, "vold.encrypt_progress"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "encDecProgress":Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 842
    const-string v1, "MountService"

    const-string v2, "Skip onDaemonConnected if enc/decryption is in progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :goto_18
    return-void

    .line 847
    :cond_19
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 848
    iget-object v1, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    if-nez v1, :cond_45

    .line 849
    iget-object v1, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-nez v1, :cond_30

    .line 850
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 851
    :cond_30
    const-string v1, "MountService"

    const-string v2, "register direncryption listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v1, Lcom/android/server/MountService$DirEncryptListner;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$DirEncryptListner;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 853
    iget-object v1, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 862
    :cond_45
    new-instance v1, Lcom/android/server/MountService$4;

    const-string v2, "MountService#onDaemonConnected"

    invoke-direct {v1, p0, v2}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$4;->start()V

    goto :goto_18
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 32
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 937
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .local v7, "builder":Ljava/lang/StringBuilder;
    const-string v23, "onEvent::"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " raw= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    if-eqz p3, :cond_58

    .line 941
    const-string v23, " cooked = "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    move-object/from16 v6, p3

    .local v6, "arr$":[Ljava/lang/String;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_35
    if-ge v11, v13, :cond_58

    aget-object v18, v6, v11

    .line 943
    .local v18, "str":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 946
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_58
    const-string v23, "MountService"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/16 v23, 0x25d

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_91

    .line 954
    const/16 v23, 0x2

    aget-object v23, p3, v23

    const/16 v24, 0x3

    aget-object v24, p3, v24

    const/16 v25, 0x7

    aget-object v25, p3, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0xa

    aget-object v26, p3, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1073
    :cond_8e
    :goto_8e
    const/16 v23, 0x1

    :goto_90
    return v23

    .line 957
    :cond_91
    const/16 v23, 0x265

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_cb

    .line 959
    const/16 v23, 0x2

    aget-object v16, p3, v23

    .line 960
    .local v16, "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_c8

    const/16 v23, 0x3

    aget-object v20, p3, v23

    .line 962
    .local v20, "uuid":Ljava/lang/String;
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/StorageVolume;

    .line 963
    .local v21, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v21, :cond_8e

    .line 964
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    goto :goto_8e

    .line 960
    .end local v20    # "uuid":Ljava/lang/String;
    .end local v21    # "vol":Landroid/os/storage/StorageVolume;
    :cond_c8
    const/16 v20, 0x0

    goto :goto_ae

    .line 967
    .end local v16    # "path":Ljava/lang/String;
    :cond_cb
    const/16 v23, 0x266

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_105

    .line 969
    const/16 v23, 0x2

    aget-object v16, p3, v23

    .line 970
    .restart local v16    # "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_102

    const/16 v23, 0x3

    aget-object v19, p3, v23

    .line 972
    .local v19, "userLabel":Ljava/lang/String;
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/StorageVolume;

    .line 973
    .restart local v21    # "vol":Landroid/os/storage/StorageVolume;
    if-eqz v21, :cond_8e

    .line 974
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    goto :goto_8e

    .line 970
    .end local v19    # "userLabel":Ljava/lang/String;
    .end local v21    # "vol":Landroid/os/storage/StorageVolume;
    :cond_102
    const/16 v19, 0x0

    goto :goto_e8

    .line 977
    .end local v16    # "path":Ljava/lang/String;
    :cond_105
    const/16 v23, 0x276

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_11d

    const/16 v23, 0x277

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_11d

    const/16 v23, 0x278

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_277

    .line 983
    :cond_11d
    const/4 v5, 0x0

    .line 984
    .local v5, "action":Ljava/lang/String;
    const/16 v23, 0x2

    aget-object v12, p3, v23

    .line 985
    .local v12, "label":Ljava/lang/String;
    const/16 v23, 0x3

    aget-object v16, p3, v23

    .line 986
    .restart local v16    # "path":Ljava/lang/String;
    const/4 v14, -0x1

    .line 987
    .local v14, "major":I
    const/4 v15, -0x1

    .line 990
    .local v15, "minor":I
    const/16 v23, 0x6

    :try_start_12a
    aget-object v23, p3, v23

    const/16 v24, 0x1

    const/16 v25, 0x6

    aget-object v25, p3, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 991
    .local v8, "devComp":Ljava/lang/String;
    const-string v23, ":"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 992
    .local v9, "devTok":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v23, v9, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 993
    const/16 v23, 0x1

    aget-object v23, v9, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_153} :catch_1a5

    move-result v15

    .line 1000
    .end local v8    # "devComp":Ljava/lang/String;
    .end local v9    # "devTok":[Ljava/lang/String;
    :goto_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1001
    :try_start_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/StorageVolume;

    .line 1002
    .local v22, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1003
    .local v17, "state":Ljava/lang/String;
    monitor-exit v24
    :try_end_17c
    .catchall {:try_start_15b .. :try_end_17c} :catchall_1b2

    .line 1005
    const/16 v23, 0x276

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b5

    .line 1006
    new-instance v23, Lcom/android/server/MountService$5;

    const-string v24, "MountService#VolumeDiskInserted"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/MountService$5;->start()V

    .line 1066
    :goto_196
    if-eqz v5, :cond_8e

    .line 1067
    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_8e

    .line 994
    .end local v17    # "state":Ljava/lang/String;
    .end local v22    # "volume":Landroid/os/storage/StorageVolume;
    :catch_1a5
    move-exception v10

    .line 995
    .local v10, "ex":Ljava/lang/Exception;
    const-string v23, "MountService"

    const-string v24, "Failed to parse major/minor"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_154

    .line 1003
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_1b2
    move-exception v23

    :try_start_1b3
    monitor-exit v24
    :try_end_1b4
    .catchall {:try_start_1b3 .. :try_end_1b4} :catchall_1b2

    throw v23

    .line 1036
    .restart local v17    # "state":Ljava/lang/String;
    .restart local v22    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1b5
    const/16 v23, 0x277

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_209

    .line 1040
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "bad_removal"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d1

    .line 1041
    const/16 v23, 0x1

    goto/16 :goto_90

    .line 1044
    :cond_1d1
    const-string v23, "MountService"

    const-string v24, "Sending unmounted event first"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string/jumbo v23, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v23, "unmounted"

    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1048
    const-string v23, "MountService"

    const-string v24, "Sending media removed"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v23, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1050
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    goto :goto_196

    .line 1051
    :cond_209
    const/16 v23, 0x278

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_249

    .line 1052
    const-string v23, "MountService"

    const-string v24, "Sending unmounted event first"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string/jumbo v23, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1055
    const-string v23, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1057
    const-string v23, "MountService"

    const-string v24, "Sending media bad removal"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v23, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1059
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto/16 :goto_196

    .line 1060
    :cond_249
    const/16 v23, 0x2bc

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_25a

    .line 1061
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/android/server/EventLogTags;->writeFstrimFinish(J)V

    goto/16 :goto_196

    .line 1063
    :cond_25a
    const-string v23, "MountService"

    const-string v24, "Unknown code {%d}"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    .line 1070
    .end local v5    # "action":Ljava/lang/String;
    .end local v12    # "label":Ljava/lang/String;
    .end local v14    # "major":I
    .end local v15    # "minor":I
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "state":Ljava/lang/String;
    .end local v22    # "volume":Landroid/os/storage/StorageVolume;
    :cond_277
    const/16 v23, 0x0

    goto/16 :goto_90
.end method

.method public prepareDecryptOnRecovery(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3716
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3719
    :cond_e
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3725
    const-string v2, "MountService"

    const-string v3, "prepareDecryptOnRecovery..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    :try_start_21
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "recoverymount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3731
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_40} :catch_42

    move-result v2

    .line 3734
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_41
    return v2

    .line 3732
    :catch_42
    move-exception v0

    .line 3734
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_41
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1792
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1793
    :try_start_3
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27

    .line 1795
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/MountService$MountServiceBinderListener;->setCaller(I)V

    .line 1796
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1797
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_1e
    .catchall {:try_start_8 .. :try_end_1c} :catchall_27

    .line 1801
    :goto_1c
    :try_start_1c
    monitor-exit v3

    .line 1802
    return-void

    .line 1798
    :catch_1e
    move-exception v1

    .line 1799
    .local v1, "rex":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1801
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "rex":Landroid/os/RemoteException;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 2470
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: renameSecureContainer :: oldId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2472
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2473
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2475
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2480
    :try_start_30
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2482
    :cond_4a
    const/4 v1, -0x6

    monitor-exit v3

    .line 2493
    :goto_4c
    return v1

    .line 2484
    :cond_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_68

    .line 2486
    const/4 v1, 0x0

    .line 2488
    .local v1, "rc":I
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4f .. :try_end_64} :catch_65

    goto :goto_4c

    .line 2489
    :catch_65
    move-exception v0

    .line 2490
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_4c

    .line 2484
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "rc":I
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v2
.end method

.method requiredEncPolicyCheck(Ljava/lang/String;)Z
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3681
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3698
    :cond_7
    :goto_7
    return v3

    .line 3686
    :cond_8
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3687
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-nez v4, :cond_32

    .line 3688
    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x7

    invoke-direct {v2, v4, v5, v6}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 3690
    .local v2, "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    .line 3691
    .local v1, "mDep":Lcom/android/server/DirEncryptPrefs;
    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    .line 3694
    .end local v1    # "mDep":Lcom/android/server/DirEncryptPrefs;
    .end local v2    # "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_32
    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3695
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public setNullSDCardPassword(Ljava/lang/String;)I
    .registers 10
    .param p1, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 3812
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1a

    .line 3815
    :cond_12
    const-string v3, "MountService"

    const-string v4, "Error password is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    :goto_19
    return v2

    .line 3819
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3822
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "setnullsdcardpwd"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3823
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_3c} :catch_3e

    move-result v2

    goto :goto_19

    .line 3824
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_3e
    move-exception v0

    .line 3826
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set null password for SDCard! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3855
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setfield"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3856
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v2

    .line 3860
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_1e
    return v2

    .line 3857
    :catch_1f
    move-exception v0

    .line 3859
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Cannot set the property into footer"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    const/4 v2, -0x1

    goto :goto_1e
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 13
    .param p1, "enable"    # Z

    .prologue
    const/4 v10, 0x1

    .line 1978
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " :::: setUsbMassStorageEnabled :: enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1980
    const-string v7, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1982
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1983
    .local v3, "primary":Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_28

    .line 2028
    :cond_27
    :goto_27
    return-void

    .line 1985
    :cond_28
    if-eqz p1, :cond_42

    .line 1986
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1988
    .local v0, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_42

    .line 1989
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 1990
    .local v4, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_42

    invoke-virtual {v4, v10}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMassStorageEnabled(Z)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 2002
    .end local v0    # "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v4    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_42
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2003
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2004
    .local v6, "vs":Ljava/lang/String;
    const-string/jumbo v1, "ums"

    .line 2005
    .local v1, "method":Ljava/lang/String;
    if-eqz p1, :cond_6e

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 2007
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2008
    new-instance v5, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v5, p0, v2, v1, v10}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2009
    .local v5, "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v7, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2011
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2016
    .end local v5    # "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_6e
    if-nez p1, :cond_27

    .line 2017
    invoke-direct {p0, v2, v1, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2018
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_27

    .line 2019
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to remount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " after disabling share method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 2067
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: setVolumeState :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2069
    :try_start_33
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2070
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_5d

    .line 2071
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    monitor-exit v2

    .line 2076
    :goto_5c
    return-void

    .line 2074
    :cond_5d
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    monitor-exit v2

    goto :goto_5c

    .end local v0    # "v":Ljava/lang/String;
    :catchall_64
    move-exception v1

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_33 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 25
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 1818
    const-string v19, "android.permission.SHUTDOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1820
    const-string v19, "MountService"

    const-string v20, "Shutting down"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/4 v10, 0x0

    .line 1823
    .local v10, "paths":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 1824
    .local v16, "states":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1825
    .local v3, "count":I
    const/4 v14, 0x0

    .line 1827
    .local v14, "start":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1829
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1830
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v3

    .line 1831
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    .line 1832
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1834
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3e
    if-ge v5, v3, :cond_57

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v21, v10, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    aput-object v19, v16, v5

    .line 1834
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 1838
    :cond_57
    const/4 v8, 0x0

    .line 1840
    .local v8, "mounted_device_path":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_59
    if-ge v5, v3, :cond_8d

    .line 1841
    aget-object v9, v10, v5

    .line 1842
    .local v9, "path":Ljava/lang/String;
    aget-object v15, v16, v5

    .line 1843
    .local v15, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 1844
    .local v17, "storage":Landroid/os/storage/StorageVolume;
    if-eqz v17, :cond_82

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    const-string v21, "fuse"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_82

    .line 1840
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 1846
    :cond_82
    const-string v19, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7f

    .line 1847
    move-object v8, v9

    .line 1852
    .end local v9    # "path":Ljava/lang/String;
    .end local v15    # "state":Ljava/lang/String;
    .end local v17    # "storage":Landroid/os/storage/StorageVolume;
    :cond_8d
    const/4 v5, 0x0

    :goto_8e
    if-ge v5, v3, :cond_16f

    .line 1853
    sub-int v19, v3, v5

    add-int/lit8 v19, v19, -0x1

    aget-object v9, v10, v19

    .line 1854
    .restart local v9    # "path":Ljava/lang/String;
    sub-int v19, v3, v5

    add-int/lit8 v19, v19, -0x1

    aget-object v15, v16, v19

    .line 1856
    .restart local v15    # "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 1857
    .restart local v17    # "storage":Landroid/os/storage/StorageVolume;
    if-eqz v17, :cond_bf

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    const-string v21, "fuse"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_bf

    .line 1852
    :cond_bc
    :goto_bc
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    .line 1859
    :cond_bf
    const/4 v11, 0x0

    .line 1860
    .local v11, "report":Z
    if-eqz v8, :cond_c9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c9

    const/4 v11, 0x1

    .line 1865
    :cond_c9
    const-string v19, "shared"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_112

    .line 1873
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1907
    :cond_dc
    :goto_dc
    const-string v19, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16b

    .line 1909
    new-instance v18, Lcom/android/server/MountService$ShutdownCallBack;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v9, v2, v11}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;Z)V

    .line 1911
    .local v18, "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1912
    const/4 v14, 0x1

    .line 1913
    goto :goto_bc

    .line 1874
    .end local v18    # "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    :cond_112
    const-string v19, "checking"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_dc

    .line 1875
    const-string v19, "MountService"

    const-string v21, "Enter media checking condition!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const/16 v12, 0x1e

    .local v12, "retries":I
    move v13, v12

    .line 1892
    .end local v12    # "retries":I
    .local v13, "retries":I
    :goto_12a
    const-string v19, "checking"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_131
    .catchall {:try_start_1c .. :try_end_131} :catchall_168

    move-result v19

    if-eqz v19, :cond_1a3

    add-int/lit8 v12, v13, -0x1

    .end local v13    # "retries":I
    .restart local v12    # "retries":I
    if-ltz v13, :cond_159

    .line 1894
    const-wide/16 v21, 0x3e8

    :try_start_13a
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13d
    .catch Ljava/lang/InterruptedException; {:try_start_13a .. :try_end_13d} :catch_14d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_168

    .line 1900
    :try_start_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "state":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .restart local v15    # "state":Ljava/lang/String;
    move v13, v12

    .end local v12    # "retries":I
    .restart local v13    # "retries":I
    goto :goto_12a

    .line 1895
    .end local v13    # "retries":I
    .restart local v12    # "retries":I
    :catch_14d
    move-exception v6

    .line 1896
    .local v6, "iex":Ljava/lang/InterruptedException;
    const-string v19, "MountService"

    const-string v21, "Interrupted while waiting for media"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    .end local v6    # "iex":Ljava/lang/InterruptedException;
    :cond_159
    :goto_159
    if-nez v12, :cond_dc

    .line 1903
    const-string v19, "MountService"

    const-string v21, "Timed out waiting for media to check"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dc

    .line 1944
    .end local v5    # "i":I
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "mounted_device_path":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "report":Z
    .end local v12    # "retries":I
    .end local v15    # "state":Ljava/lang/String;
    .end local v17    # "storage":Landroid/os/storage/StorageVolume;
    :catchall_168
    move-exception v19

    monitor-exit v20
    :try_end_16a
    .catchall {:try_start_13d .. :try_end_16a} :catchall_168

    throw v19

    .line 1913
    .restart local v5    # "i":I
    .restart local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "mounted_device_path":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v11    # "report":Z
    .restart local v15    # "state":Ljava/lang/String;
    .restart local v17    # "storage":Landroid/os/storage/StorageVolume;
    :cond_16b
    if-eqz p1, :cond_bc

    goto/16 :goto_bc

    .line 1929
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "report":Z
    .end local v15    # "state":Ljava/lang/String;
    .end local v17    # "storage":Landroid/os/storage/StorageVolume;
    :cond_16f
    if-eqz v14, :cond_18c

    .line 1930
    :try_start_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1944
    :goto_18a
    monitor-exit v20
    :try_end_18b
    .catchall {:try_start_171 .. :try_end_18b} :catchall_168

    .line 1945
    return-void

    .line 1938
    :cond_18c
    const/16 v19, 0x0

    :try_start_18e
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_18e .. :try_end_195} :catch_196
    .catchall {:try_start_18e .. :try_end_195} :catchall_168

    goto :goto_18a

    .line 1939
    :catch_196
    move-exception v4

    .line 1940
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_197
    const-string v19, "MountService"

    const-string v21, "RemoteException when shutting down"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a2
    .catchall {:try_start_197 .. :try_end_1a2} :catchall_168

    goto :goto_18a

    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v11    # "report":Z
    .restart local v13    # "retries":I
    .restart local v15    # "state":Ljava/lang/String;
    .restart local v17    # "storage":Landroid/os/storage/StorageVolume;
    :cond_1a3
    move v12, v13

    .end local v13    # "retries":I
    .restart local v12    # "retries":I
    goto :goto_159
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 1783
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1784
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 2667
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 2671
    :try_start_8
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 2672
    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_34

    .line 2674
    if-eqz v8, :cond_37

    .line 2676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2677
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2679
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2680
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2687
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_33
    return-void

    .line 2672
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    .line 2685
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_37
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2403
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: unmountSecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    const-string v5, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2405
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2406
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2408
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2409
    :try_start_31
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 2410
    const/4 v4, -0x5

    monitor-exit v6

    .line 2454
    :cond_40
    :goto_40
    return v4

    .line 2413
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-direct {p0}, Lcom/android/server/MountService;->checkExternalSecureContainerMounted()Z

    move-result v5

    if-nez v5, :cond_64

    .line 2414
    const-string v5, "MountService"

    const-string/jumbo v7, "unmountSecureContainer : no media"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2416
    monitor-exit v6

    goto :goto_40

    .line 2418
    :catchall_61
    move-exception v5

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_61

    throw v5

    :cond_64
    :try_start_64
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_61

    .line 2426
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2428
    const/4 v4, 0x0

    .line 2430
    .local v4, "rc":I
    :try_start_6d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "asec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2431
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_87

    .line 2432
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2434
    :cond_87
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_8c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_8c} :catch_a0

    .line 2449
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_8c
    if-nez v4, :cond_40

    .line 2450
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2451
    :try_start_91
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2452
    monitor-exit v6

    goto :goto_40

    :catchall_9d
    move-exception v5

    monitor-exit v6
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_9d

    throw v5

    .line 2435
    :catch_a0
    move-exception v2

    .line 2436
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    .line 2438
    .local v1, "code":I
    :try_start_a2
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_a5
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_a5} :catch_ac

    move-result v1

    .line 2442
    const/16 v5, 0x195

    if-ne v1, v5, :cond_af

    .line 2443
    const/4 v4, -0x7

    goto :goto_8c

    .line 2439
    :catch_ac
    move-exception v3

    .line 2440
    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v4, -0x1

    goto :goto_40

    .line 2445
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_af
    const/4 v4, -0x1

    goto :goto_8c
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2092
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: unmountVolume :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", removeEncryption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2094
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2097
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 2098
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, "pathSplits":[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v9, :cond_a9

    .line 2100
    const-string v4, "hidden"

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 2101
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doUnmountVolume :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "volume unmount %s force"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :try_start_81
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v1, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aget-object v8, v1, v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "force"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_a3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_81 .. :try_end_a3} :catch_a4

    .line 2129
    .end local v1    # "pathSplits":[Ljava/lang/String;
    :cond_a3
    :goto_a3
    return-void

    .line 2104
    .restart local v1    # "pathSplits":[Ljava/lang/String;
    :catch_a4
    move-exception v0

    .line 2105
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->printStackTrace()V

    goto :goto_a3

    .line 2113
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "pathSplits":[Ljava/lang/String;
    :cond_a9
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2115
    .local v3, "volState":Ljava/lang/String;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmounting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removeEncryption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 2127
    new-instance v2, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2128
    .local v2, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a3
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1806
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1807
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1808
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_9

    .line 1809
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1810
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1811
    monitor-exit v3

    .line 1815
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_2d
    return-void

    .line 1814
    :cond_2e
    monitor-exit v3

    goto :goto_2d

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 2807
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2810
    :cond_10
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2814
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2817
    :cond_27
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2820
    const-string v2, "MountService"

    const-string/jumbo v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :try_start_32
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2826
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_32 .. :try_end_6e} :catch_70

    move-result v2

    .line 2830
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_6f
    return v2

    .line 2828
    :catch_70
    move-exception v0

    .line 2830
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_6f
.end method

.method waitForAsecScan()V
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 617
    return-void
.end method
