.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$DeviceOwner;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final DBG:Z = false

.field private static final DEVICE_POLICIES_BACKUP_XML:Ljava/lang/String; = "device_policies_backup.xml"

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/extSdCard"

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final is3LMAllowed:Z

.field private static mHM:Landroid/content/IHarmonyEAS;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private allowLock:Ljava/lang/Object;

.field private mCheckLoadSettingsLocked:Z

.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mNotifyChanges:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 756
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 151
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3984
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    .line 757
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 758
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "DPM"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 760
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 761
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 766
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 767
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 773
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetAppPolicies(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3045
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3046
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3049
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    .line 3051
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 3057
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_19
    :goto_19
    return-void

    .line 3055
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private enforceCrossUserPermission(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 3031
    if-gez p1, :cond_1b

    .line 3032
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3034
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3035
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_26

    .line 3041
    :cond_25
    :goto_25
    return-void

    .line 3036
    :cond_26
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_25

    if-eqz v0, :cond_25

    .line 3037
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private formatExternSdCard()V
    .registers 9

    .prologue
    .line 2436
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "formatExternSdCard() called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    sget-object v5, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_f
    if-ge v1, v3, :cond_60

    aget-object v4, v0, v1

    .line 2438
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/extSdCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2440
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending FORMAT_ONLY for  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2442
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2443
    const-string v5, "storage_volume"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2444
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2437
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2447
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_60
    return-void
.end method

.method private getEncryptionStatus()I
    .registers 4

    .prologue
    .line 2878
    const-string v1, "ro.crypto.state"

    const-string v2, "unencrypted"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2879
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2880
    const/4 v1, 0x3

    .line 2884
    :goto_11
    return v1

    .line 2881
    :cond_12
    const-string v1, "unsupported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2882
    const/4 v1, 0x0

    goto :goto_11

    .line 2884
    :cond_1c
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private getHarmonyEAS()Landroid/content/IHarmonyEAS;
    .registers 3

    .prologue
    .line 4405
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-nez v1, :cond_10

    .line 4406
    const-string v1, "harmony_eas_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4407
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IHarmonyEAS$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IHarmonyEAS;

    move-result-object v1

    sput-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    .line 4409
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    return-object v1
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    .prologue
    .line 859
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_10

    .line 860
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 861
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 863
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1792
    if-eqz p1, :cond_d

    .line 1793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1794
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_c

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1807
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_c
    :goto_c
    return-wide v6

    .line 1797
    :cond_d
    const-wide/16 v4, 0x0

    .line 1798
    .local v4, "timeout":J
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1799
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1800
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_39

    .line 1801
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1802
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_34

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_36

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_36

    .line 1804
    :cond_34
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1800
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_39
    move-wide v6, v4

    .line 1807
    goto :goto_c
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    .prologue
    .line 867
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_10

    .line 868
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 869
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 871
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 725
    const/4 v4, 0x0

    .line 727
    .local v4, "removed":Z
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 728
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 729
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_51

    .line 730
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 732
    .local v0, "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1b
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_35

    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_4e

    .line 734
    :cond_35
    const/4 v4, 0x1

    .line 735
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 737
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 739
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_4e} :catch_5f

    .line 729
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 746
    .end local v0    # "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_51
    if-eqz v4, :cond_5e

    .line 747
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 748
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 749
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 751
    :cond_5e
    return-void

    .line 742
    .restart local v0    # "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catch_5f
    move-exception v5

    goto :goto_4e
.end method

.method private handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 14
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const-wide/16 v10, 0x0

    .line 1441
    monitor-enter p0

    .line 1442
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1443
    .local v4, "now":J
    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1444
    .local v0, "N":I
    if-gtz v0, :cond_11

    .line 1445
    monitor-exit p0

    .line 1464
    :goto_10
    return-void

    .line 1447
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_61

    .line 1448
    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1449
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v8, 0x19bfcc00

    sub-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_5e

    .line 1453
    const-string v6, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1455
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "pkgName"

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const-string v6, "expiration"

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1458
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1447
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1462
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_61
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1463
    monitor-exit p0

    goto :goto_10

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "now":J
    :catchall_68
    move-exception v6

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v6
.end method

.method private ifExternalSdPresent()Z
    .registers 5

    .prologue
    .line 2423
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "ifExternalSdPresent() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v2, "/storage/extSdCard"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2426
    .local v0, "status":Ljava/lang/String;
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External SD card status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2430
    :cond_37
    const/4 v1, 0x1

    .line 2432
    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private initialiseStorageManager()V
    .registers 3

    .prologue
    .line 2418
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_10

    .line 2419
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2420
    :cond_10
    return-void
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3026
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isEncryptionSupported()Z
    .registers 2

    .prologue
    .line 2867
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isExtStorageEncrypted()Z
    .registers 3

    .prologue
    .line 2357
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2358
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z
    .registers 25
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 1192
    const/4 v13, 0x1

    .line 1193
    .local v13, "result":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 1194
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v14, 0x0

    .line 1195
    .local v14, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 1197
    .local v7, "file":Ljava/io/File;
    :try_start_a
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_f} :catch_6bc
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_f} :catch_6b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_f} :catch_6b6
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_6b3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_6b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_f} :catch_6ad
    .catchall {:try_start_a .. :try_end_f} :catchall_61e

    .line 1198
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1199
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1203
    :cond_1a
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2e

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 1205
    :cond_2e
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1206
    .local v16, "tag":Ljava/lang/String;
    const-string v19, "policies"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_3b} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_3b} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_3b} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_3b} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3b} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_3b} :catch_501
    .catchall {:try_start_f .. :try_end_3b} :catchall_6a9

    move-result v19

    if-nez v19, :cond_ce

    .line 1208
    if-eqz v15, :cond_43

    .line 1209
    :try_start_40
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_618
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_43} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_43} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_43} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_2d6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_43} :catch_501
    .catchall {:try_start_40 .. :try_end_43} :catchall_6a9

    .line 1212
    :cond_43
    :goto_43
    :try_start_43
    new-instance v19, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Settings do not start with policies tag: found "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_60} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_60} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_60} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_60} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_60} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_43 .. :try_end_60} :catch_501
    .catchall {:try_start_43 .. :try_end_60} :catchall_6a9

    .line 1305
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_60
    move-exception v6

    move-object v14, v15

    .line 1306
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NullPointerException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :goto_62
    const/4 v13, 0x0

    .line 1307
    :try_start_63
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_63 .. :try_end_89} :catchall_61e

    .line 1323
    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .local v8, "i":I
    :goto_9f
    if-ltz v8, :cond_570

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .local v4, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_9f

    .line 1215
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "i":I
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_ce
    :try_start_ce
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 1216
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 1218
    .local v11, "outerDepth":I
    :cond_d6
    :goto_d6
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_664

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f2

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v11, :cond_664

    .line 1219
    :cond_f2
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d6

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d6

    .line 1222
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1223
    const-string v19, "admin"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1fe

    .line 1224
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11d
    .catch Ljava/lang/NullPointerException; {:try_start_ce .. :try_end_11d} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_11d} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ce .. :try_end_11d} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_ce .. :try_end_11d} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_11d} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ce .. :try_end_11d} :catch_501
    .catchall {:try_start_ce .. :try_end_11d} :catchall_6a9

    move-result-object v10

    .line 1226
    .local v10, "name":Ljava/lang/String;
    :try_start_11e
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    .line 1234
    .local v5, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_d6

    .line 1235
    const/4 v3, 0x0

    .line 1236
    .local v3, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    new-instance v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1237
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v4, v12}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1238
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1239
    .restart local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_d6

    .line 1241
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16d
    .catch Ljava/lang/RuntimeException; {:try_start_11e .. :try_end_16d} :catch_16f
    .catch Ljava/lang/NullPointerException; {:try_start_11e .. :try_end_16d} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_11e .. :try_end_16d} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11e .. :try_end_16d} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_11e .. :try_end_16d} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_16d} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11e .. :try_end_16d} :catch_501
    .catchall {:try_start_11e .. :try_end_16d} :catchall_6a9

    goto/16 :goto_d6

    .line 1245
    .end local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_16f
    move-exception v6

    .line 1246
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_170
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed loading admin "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18e
    .catch Ljava/lang/NullPointerException; {:try_start_170 .. :try_end_18e} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_170 .. :try_end_18e} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_170 .. :try_end_18e} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_170 .. :try_end_18e} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_18e} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_170 .. :try_end_18e} :catch_501
    .catchall {:try_start_170 .. :try_end_18e} :catchall_6a9

    goto/16 :goto_d6

    .line 1308
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_190
    move-exception v6

    move-object v14, v15

    .line 1309
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :goto_192
    const/4 v13, 0x0

    .line 1310
    :try_start_193
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catchall {:try_start_193 .. :try_end_1b9} :catchall_61e

    .line 1323
    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .restart local v8    # "i":I
    :goto_1cf
    if-ltz v8, :cond_570

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_1cf

    .line 1248
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "i":I
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_1fe
    :try_start_1fe
    const-string v19, "failed-password-attempts"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a1

    .line 1249
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_22e

    .line 1250
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 1253
    :cond_22e
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_231
    .catch Ljava/lang/NullPointerException; {:try_start_1fe .. :try_end_231} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_1fe .. :try_end_231} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fe .. :try_end_231} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_1fe .. :try_end_231} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_231} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1fe .. :try_end_231} :catch_501
    .catchall {:try_start_1fe .. :try_end_231} :catchall_6a9

    goto/16 :goto_d6

    .line 1311
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_233
    move-exception v6

    move-object v14, v15

    .line 1312
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :goto_235
    const/4 v13, 0x0

    .line 1313
    :try_start_236
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25c
    .catchall {:try_start_236 .. :try_end_25c} :catchall_61e

    .line 1323
    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .restart local v8    # "i":I
    :goto_272
    if-ltz v8, :cond_570

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_272

    .line 1254
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "i":I
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_2a1
    :try_start_2a1
    const-string v19, "password-owner"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31d

    .line 1255
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2d1

    .line 1256
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1259
    :cond_2d1
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2d4
    .catch Ljava/lang/NullPointerException; {:try_start_2a1 .. :try_end_2d4} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_2a1 .. :try_end_2d4} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a1 .. :try_end_2d4} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_2a1 .. :try_end_2d4} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_2a1 .. :try_end_2d4} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a1 .. :try_end_2d4} :catch_501
    .catchall {:try_start_2a1 .. :try_end_2d4} :catchall_6a9

    goto/16 :goto_d6

    .line 1314
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_2d6
    move-exception v19

    move-object v14, v15

    .line 1323
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :goto_2d8
    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .restart local v8    # "i":I
    :goto_2ee
    if-ltz v8, :cond_570

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_2ee

    .line 1260
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_31d
    :try_start_31d
    const-string v19, "active-password"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4e0

    .line 1261
    const/16 v19, 0x0

    const-string v20, "quality"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_34d

    .line 1262
    const/16 v19, 0x0

    const-string v20, "quality"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1265
    :cond_34d
    const/16 v19, 0x0

    const-string v20, "length"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_371

    .line 1266
    const/16 v19, 0x0

    const-string v20, "length"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1269
    :cond_371
    const/16 v19, 0x0

    const-string v20, "uppercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_395

    .line 1270
    const/16 v19, 0x0

    const-string v20, "uppercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1273
    :cond_395
    const/16 v19, 0x0

    const-string v20, "lowercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3b9

    .line 1274
    const/16 v19, 0x0

    const-string v20, "lowercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1277
    :cond_3b9
    const/16 v19, 0x0

    const-string v20, "letters"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3dd

    .line 1278
    const/16 v19, 0x0

    const-string v20, "letters"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1281
    :cond_3dd
    const/16 v19, 0x0

    const-string v20, "numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_401

    .line 1282
    const/16 v19, 0x0

    const-string v20, "numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1285
    :cond_401
    const/16 v19, 0x0

    const-string v20, "symbols"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_425

    .line 1286
    const/16 v19, 0x0

    const-string v20, "symbols"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1289
    :cond_425
    const/16 v19, 0x0

    const-string v20, "nonletter"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_449

    .line 1290
    const/16 v19, 0x0

    const-string v20, "nonletter"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1294
    :cond_449
    const/16 v19, 0x0

    const-string v20, "recoverable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_46d

    .line 1295
    const/16 v19, 0x0

    const-string v20, "recoverable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    .line 1299
    :cond_46d
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_470
    .catch Ljava/lang/NullPointerException; {:try_start_31d .. :try_end_470} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_31d .. :try_end_470} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31d .. :try_end_470} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_31d .. :try_end_470} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_31d .. :try_end_470} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31d .. :try_end_470} :catch_501
    .catchall {:try_start_31d .. :try_end_470} :catchall_6a9

    goto/16 :goto_d6

    .line 1316
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_472
    move-exception v6

    move-object v14, v15

    .line 1317
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :goto_474
    const/4 v13, 0x0

    .line 1318
    :try_start_475
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49b
    .catchall {:try_start_475 .. :try_end_49b} :catchall_61e

    .line 1323
    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .restart local v8    # "i":I
    :goto_4b1
    if-ltz v8, :cond_570

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_4b1

    .line 1301
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_4e0
    :try_start_4e0
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown tag: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4ff
    .catch Ljava/lang/NullPointerException; {:try_start_4e0 .. :try_end_4ff} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_4e0 .. :try_end_4ff} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e0 .. :try_end_4ff} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_4e0 .. :try_end_4ff} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_4e0 .. :try_end_4ff} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e0 .. :try_end_4ff} :catch_501
    .catchall {:try_start_4e0 .. :try_end_4ff} :catchall_6a9

    goto/16 :goto_d6

    .line 1319
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_501
    move-exception v6

    move-object v14, v15

    .line 1320
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :goto_503
    const/4 v13, 0x0

    .line 1321
    :try_start_504
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52a
    .catchall {:try_start_504 .. :try_end_52a} :catchall_61e

    .line 1323
    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .restart local v8    # "i":I
    :goto_540
    if-ltz v8, :cond_570

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_540

    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "i":I
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_56f
    move-object v14, v15

    .line 1332
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :cond_570
    if-eqz v14, :cond_575

    .line 1333
    :try_start_572
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_575
    .catch Ljava/io/IOException; {:try_start_572 .. :try_end_575} :catch_61b

    .line 1343
    :cond_575
    :goto_575
    new-instance v18, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1344
    .local v18, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_604

    .line 1345
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Active password quality 0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " does not match actual quality 0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1350
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1351
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1352
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1353
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1354
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1355
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1356
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1359
    :cond_604
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1360
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1361
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1363
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1366
    return v13

    .line 1323
    .end local v18    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_617
    throw v19

    .line 1211
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :catch_618
    move-exception v19

    goto/16 :goto_43

    .line 1335
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_61b
    move-exception v19

    goto/16 :goto_575

    .line 1323
    :catchall_61e
    move-exception v19

    :goto_61f
    if-nez v13, :cond_617

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_617

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_635
    if-ltz v8, :cond_617

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_635

    .line 1323
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_664
    if-nez v13, :cond_56f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_56f

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .restart local v8    # "i":I
    :goto_67a
    if-ltz v8, :cond_56f

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1326
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1324
    add-int/lit8 v8, v8, -0x1

    goto :goto_67a

    .line 1323
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    :catchall_6a9
    move-exception v19

    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_61f

    .line 1319
    :catch_6ad
    move-exception v6

    goto/16 :goto_503

    .line 1316
    :catch_6b0
    move-exception v6

    goto/16 :goto_474

    .line 1314
    :catch_6b3
    move-exception v19

    goto/16 :goto_2d8

    .line 1311
    :catch_6b6
    move-exception v6

    goto/16 :goto_235

    .line 1308
    :catch_6b9
    move-exception v6

    goto/16 :goto_192

    .line 1305
    :catch_6bc
    move-exception v6

    goto/16 :goto_62
.end method

.method private lockNowUnchecked()V
    .registers 7

    .prologue
    .line 2343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2346
    .local v0, "ident":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JI)V

    .line 2349
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_21
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 2352
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2354
    return-void

    .line 2352
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2350
    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userHandle"    # I

    .prologue
    .line 1088
    if-nez p0, :cond_27

    const-string v0, "/data/system/device_policies.xml"

    .line 1092
    .local v0, "base":Ljava/lang/String;
    :goto_4
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 1088
    .end local v0    # "base":Ljava/lang/String;
    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static moveFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1058
    const/4 v3, 0x1

    .line 1060
    .local v3, "result":Z
    if-nez p2, :cond_48

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "base_source":Ljava/lang/String;
    :goto_16
    if-nez p2, :cond_56

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "base_target":Ljava/lang/String;
    :goto_2b
    :try_start_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1075
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1076
    :cond_44
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_47} :catch_64

    .line 1084
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    :cond_47
    :goto_47
    return v3

    .line 1060
    .end local v0    # "base_source":Ljava/lang/String;
    .end local v1    # "base_target":Ljava/lang/String;
    :cond_48
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1065
    .restart local v0    # "base_source":Ljava/lang/String;
    :cond_56
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 1078
    .restart local v1    # "base_target":Ljava/lang/String;
    :catch_64
    move-exception v2

    .line 1079
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1080
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "moveFile() : Cannot move file"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method private removePackageFromHarmonyEAS(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4474
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4476
    :try_start_3
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/IHarmonyEAS;->removeInstallationPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    .line 4479
    :goto_9
    return-void

    .line 4477
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private resetAppPolicies(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4467
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V

    .line 4468
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V

    .line 4469
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    .line 4470
    return-void
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 2737
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2738
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_21

    .line 2739
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2740
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_1e

    .line 2741
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1d
    return-void

    .line 2738
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2746
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_21
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2750
    if-nez p2, :cond_5

    .line 2751
    const-string p2, ""

    .line 2753
    :cond_5
    if-nez p1, :cond_9

    .line 2754
    const-string p1, ""

    .line 2757
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2758
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2759
    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 2760
    .local v1, "proxyPort":I
    array-length v3, v0

    if-le v3, v4, :cond_1f

    .line 2762
    const/4 v3, 0x1

    :try_start_19
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1e} :catch_3c

    move-result v1

    .line 2765
    :cond_1f
    :goto_1f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2766
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2767
    .local v2, "res":Landroid/content/ContentResolver;
    const-string v3, "global_http_proxy_host"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2768
    const-string v3, "global_http_proxy_port"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2769
    const-string v3, "global_http_proxy_exclusion_list"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2771
    return-void

    .line 2763
    .end local v2    # "res":Landroid/content/ContentResolver;
    :catch_3c
    move-exception v3

    goto :goto_1f
.end method

.method private saveSettingsLocked(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    .line 1096
    const-string v9, "device_policies.xml"

    const-string v10, "device_policies_backup.xml"

    invoke-static {v9, v10, p1}, Lcom/android/server/DevicePolicyManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1097
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 1098
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 1099
    .local v4, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 1101
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_10
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_156

    .line 1102
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_1a
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1103
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1104
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1106
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1108
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1109
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v0, :cond_68

    .line 1110
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1111
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_65

    .line 1112
    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    const/4 v9, 0x0

    const-string v10, "name"

    iget-object v11, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    invoke-virtual {v1, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1115
    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1119
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_68
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v9, :cond_84

    .line 1120
    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1122
    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    :cond_84
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v9, :cond_a0

    .line 1126
    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1131
    :cond_a0
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-nez v9, :cond_c4

    iget-boolean v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    if-eqz v9, :cond_13c

    .line 1139
    :cond_c4
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1140
    const/4 v9, 0x0

    const-string v10, "quality"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1141
    const/4 v9, 0x0

    const-string v10, "length"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    const/4 v9, 0x0

    const-string v10, "uppercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1143
    const/4 v9, 0x0

    const-string v10, "lowercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1144
    const/4 v9, 0x0

    const-string v10, "letters"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1145
    const/4 v9, 0x0

    const-string v10, "numeric"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    const/4 v9, 0x0

    const-string v10, "symbols"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    const/4 v9, 0x0

    const-string v10, "nonletter"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1150
    const/4 v9, 0x0

    const-string v10, "recoverable"

    iget-boolean v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1152
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    :cond_13c
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1158
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1159
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1160
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1161
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 1162
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_154} :catch_162

    move-object v7, v8

    .line 1173
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_155
    return-void

    .line 1163
    :catch_156
    move-exception v2

    .line 1165
    .local v2, "e":Ljava/io/IOException;
    :goto_157
    if-eqz v7, :cond_15c

    .line 1166
    :try_start_159
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_160

    .line 1171
    :cond_15c
    :goto_15c
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_155

    .line 1168
    :catch_160
    move-exception v9

    goto :goto_15c

    .line 1163
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_162
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_157
.end method

.method private sendChangedNotification(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 1177
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v3, :cond_5

    .line 1189
    :goto_4
    return-void

    .line 1181
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1185
    .local v0, "ident":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 1187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_23
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEncryptionRequested(Z)V
    .registers 2
    .param p1, "encrypt"    # Z

    .prologue
    .line 2893
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 2602
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2603
    .local v5, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2604
    .local v0, "N":I
    if-lez v0, :cond_38

    .line 2605
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_35

    .line 2606
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2607
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 2608
    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2609
    .local v6, "timeout":J
    cmp-long v10, v6, v8

    if-lez v10, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v6, v10

    .line 2610
    .local v2, "expiration":J
    :goto_2e
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2605
    .end local v2    # "expiration":J
    .end local v6    # "timeout":J
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .restart local v6    # "timeout":J
    :cond_33
    move-wide v2, v8

    .line 2609
    goto :goto_2e

    .line 2613
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "timeout":J
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2615
    .end local v4    # "i":I
    :cond_38
    return-void
.end method

.method static validateQualityConstant(I)V
    .registers 4
    .param p0, "quality"    # I

    .prologue
    .line 1370
    sparse-switch p0, :sswitch_data_22

    .line 1383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1381
    :sswitch_20
    return-void

    .line 1370
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_20
        0x8000 -> :sswitch_20
        0x9000 -> :sswitch_20
        0x10000 -> :sswitch_20
        0x20000 -> :sswitch_20
        0x40000 -> :sswitch_20
        0x50000 -> :sswitch_20
        0x60000 -> :sswitch_20
        0x80000 -> :sswitch_20
        0x90000 -> :sswitch_20
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2474
    if-nez p2, :cond_6

    .line 2475
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    .line 2490
    :goto_5
    return-void

    .line 2477
    :cond_6
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2478
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method private wipeDeviceOrUserLocked(IILcom/android/server/DevicePolicyManagerService$ActiveAdmin;)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I
    .param p3, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .prologue
    .line 2494
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Overloaded wipeDeviceOrUserLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    if-nez p2, :cond_47

    .line 2500
    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value of flags is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.threelm.dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2503
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLockedFor3LM(I)V

    .line 2520
    :goto_42
    return-void

    .line 2505
    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    goto :goto_42

    .line 2507
    :cond_47
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2508
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$4;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42
.end method


# virtual methods
.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 3677
    monitor-enter p0

    .line 3678
    if-nez p1, :cond_e

    .line 3679
    :try_start_3
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3693
    :catchall_b
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v5

    .line 3681
    :cond_e
    const/16 v5, 0xa

    :try_start_10
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3684
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_b

    move-result-wide v1

    .line 3686
    .local v1, "ident":J
    :try_start_18
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 3687
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 3689
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    move-result v5

    .line 3691
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3689
    monitor-exit p0

    return v5

    .line 3691
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "mRecoveryPassword":Ljava/lang/String;
    :catchall_2c
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_b
.end method

.method public deleteBackupFile(Ljava/lang/String;I)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1044
    if-nez p2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "base_target":Ljava/lang/String;
    :goto_15
    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1051
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_32

    .line 1055
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_23
    :goto_23
    return-void

    .line 1044
    .end local v0    # "base_target":Ljava/lang/String;
    :cond_24
    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 1052
    .restart local v0    # "base_target":Ljava/lang/String;
    :catch_32
    move-exception v2

    goto :goto_23
.end method

.method disableThirdPartyApps(ZI)V
    .registers 18
    .param p1, "disableOnlyEnabledByPolicy"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 4037
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4039
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v14, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4040
    if-eqz p1, :cond_44

    .line 4043
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4044
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 4045
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4046
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4047
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_36
    .catchall {:try_start_b .. :try_end_26} :catchall_41

    move-result v3

    if-nez v3, :cond_32

    .line 4050
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_2b
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_32} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_36
    .catchall {:try_start_2b .. :try_end_32} :catchall_41

    .line 4056
    :cond_32
    :goto_32
    :try_start_32
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_41

    goto :goto_17

    .line 4058
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "s":Ljava/lang/String;
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_36
    move-exception v9

    .line 4059
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_37
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4082
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    monitor-exit v14
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_41

    .line 4083
    return-void

    .line 4051
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_3c
    move-exception v9

    .line 4052
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3d
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_36
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_32

    .line 4082
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v14
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v3

    .line 4063
    :cond_44
    :try_start_44
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4064
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4065
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v3, :cond_3a

    .line 4066
    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 4068
    .local v13, "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_69} :catch_79
    .catchall {:try_start_44 .. :try_end_69} :catchall_41

    .line 4071
    .local v4, "app":Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_6b
    const-string v8, "DevicePolicyManager"

    move-object v3, v1

    move/from16 v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_73} :catch_74
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_73} :catch_79
    .catchall {:try_start_6b .. :try_end_73} :catchall_41

    goto :goto_5d

    .line 4072
    :catch_74
    move-exception v9

    .line 4073
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_75
    invoke-direct {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_41

    goto :goto_5d

    .line 4078
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "app":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_79
    move-exception v9

    .line 4079
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_7a
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_41

    goto :goto_3a
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3061
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_33

    .line 3064
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    :goto_32
    return-void

    .line 3070
    :cond_33
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3072
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 3073
    :try_start_39
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3075
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3076
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_45
    if-ge v5, v6, :cond_b3

    .line 3077
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3078
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3079
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3080
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_76
    if-ge v2, v0, :cond_a1

    .line 3081
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3082
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_9e

    .line 3083
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3084
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3080
    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 3089
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_a1
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3076
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 3092
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_b3
    monitor-exit p0

    goto/16 :goto_32

    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_b6
    move-exception v7

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_39 .. :try_end_b8} :catchall_b6

    throw v7
.end method

.method enableAllBlockedListApps(I)V
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    .line 4221
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    .line 4223
    .local v8, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$600(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 4225
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4227
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :goto_10
    :try_start_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4228
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_2f

    .line 4231
    .local v1, "s":Ljava/lang/String;
    :try_start_1c
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 4232
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2b} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2f

    .line 4237
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_10

    .line 4239
    .end local v1    # "s":Ljava/lang/String;
    :catch_2f
    move-exception v6

    .line 4240
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4242
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_33
    return-void

    .line 4234
    .restart local v1    # "s":Ljava/lang/String;
    :catch_34
    move-exception v2

    goto :goto_2b
.end method

.method enableAllThirdPartyApps(I)V
    .registers 16
    .param p1, "userHandle"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    .line 4086
    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4088
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4089
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v2, :cond_51

    .line 4091
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4093
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 4095
    .local v10, "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowUnsignedApp(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_56

    .line 4096
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 4097
    .local v11, "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_39} :catch_4d
    .catchall {:try_start_5 .. :try_end_39} :catchall_7b

    .line 4099
    .local v1, "unknown":Ljava/lang/String;
    :try_start_39
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2d

    .line 4100
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_47} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_47} :catch_4d
    .catchall {:try_start_39 .. :try_end_47} :catchall_7b

    goto :goto_2d

    .line 4102
    :catch_48
    move-exception v8

    .line 4103
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_49
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_7b

    goto :goto_2d

    .line 4120
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "unknown":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4d
    move-exception v8

    .line 4121
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4e
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4123
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_51
    monitor-exit v12
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_7b

    .line 4124
    return-void

    .line 4106
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_53
    :try_start_53
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4108
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_56
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_5a
    :goto_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_66} :catch_4d
    .catchall {:try_start_53 .. :try_end_66} :catchall_7b

    .line 4111
    .local v3, "app":Ljava/lang/String;
    :try_start_66
    invoke-interface {v0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_5a

    .line 4112
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "DevicePolicyManager"

    move-object v2, v0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_75} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_75} :catch_4d
    .catchall {:try_start_66 .. :try_end_75} :catchall_7b

    goto :goto_5a

    .line 4114
    :catch_76
    move-exception v8

    .line 4115
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_77
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_4d
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_5a

    .line 4123
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "app":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit v12
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .registers 10
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 1021
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1022
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1023
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1024
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x8080

    invoke-virtual {v3, v2, v4, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1028
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3a

    .line 1029
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1033
    :cond_3a
    :try_start_3a
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_48} :catch_4a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_48} :catch_6f

    move-object v3, v4

    .line 1039
    :goto_49
    return-object v3

    .line 1034
    :catch_4a
    move-exception v0

    .line 1035
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 1036
    goto :goto_49

    .line 1037
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6f
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 1039
    goto :goto_49
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 887
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 888
    .local v6, "userHandle":I
    invoke-virtual {p0, v6}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 889
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_96

    .line 890
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 891
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_31

    .line 892
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No active admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 894
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v7

    if-eq v7, v2, :cond_5e

    .line 895
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not owned by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 899
    :cond_5e
    const/4 v5, 0x0

    .line 923
    .local v5, "signed":Z
    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v7

    if-nez v7, :cond_b5

    .line 924
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " did not specify uses-policy for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 931
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "signed":Z
    :cond_96
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 932
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9d
    if-ge v3, v0, :cond_b9

    .line 933
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 934
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v7

    if-ne v7, v2, :cond_b6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 935
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_b5
    return-object v1

    .line 932
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 938
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_b9
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No active admin owned by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for policy #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 875
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 876
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 881
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_32
    return-object v0

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1533
    monitor-enter p0

    .line 1534
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1535
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1536
    .local v0, "N":I
    if-gtz v0, :cond_13

    .line 1537
    const/4 v3, 0x0

    monitor-exit p0

    .line 1543
    :goto_12
    return-object v3

    .line 1539
    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1540
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_2f

    .line 1541
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1543
    :cond_2f
    monitor-exit p0

    goto :goto_12

    .line 1544
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_31
    move-exception v4

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v4
.end method

.method public getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3933
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3935
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3936
    .local v3, "allowList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 3937
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 3938
    :try_start_b
    iget-object v7, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3939
    .local v0, "N":I
    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 3941
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    const/4 v7, 0x1

    if-le v0, v7, :cond_17

    .line 3942
    const/4 v5, 0x1

    .line 3944
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3945
    .local v1, "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_49

    const-string v7, ","

    :goto_3a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 3947
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_46
    move-exception v7

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v7

    .line 3945
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_49
    :try_start_49
    const-string v7, ""

    goto :goto_3a

    .line 3947
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    .line 3948
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3573
    monitor-enter p0

    .line 3574
    const/4 v4, 0x2

    .line 3576
    .local v4, "value":I
    if-eqz p1, :cond_10

    .line 3577
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3578
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :goto_c
    monitor-exit p0

    .line 3589
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3578
    goto :goto_c

    .line 3581
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3582
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3583
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3584
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3585
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    .line 3586
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 3583
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3589
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3590
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3489
    monitor-enter p0

    .line 3490
    const/4 v4, 0x1

    .line 3492
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3493
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3494
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :goto_c
    monitor-exit p0

    .line 3505
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3494
    goto :goto_c

    .line 3497
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3498
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3499
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3500
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3501
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3502
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 3499
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3505
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3506
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowCamera(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3338
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3614
    monitor-enter p0

    .line 3615
    const/4 v4, 0x1

    .line 3617
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3618
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3619
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :goto_c
    monitor-exit p0

    .line 3630
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3619
    goto :goto_c

    .line 3622
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3623
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3624
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3625
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3626
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3627
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 3624
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3630
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3631
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3531
    monitor-enter p0

    .line 3532
    const/4 v4, 0x1

    .line 3534
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3535
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3536
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :goto_c
    monitor-exit p0

    .line 3547
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3536
    goto :goto_c

    .line 3539
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3540
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3541
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3542
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3543
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3544
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 3541
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3547
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3548
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3656
    monitor-enter p0

    .line 3657
    const/4 v4, 0x1

    .line 3659
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3660
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3661
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :goto_c
    monitor-exit p0

    .line 3672
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3661
    goto :goto_c

    .line 3664
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3665
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3666
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3667
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3668
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3669
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 3666
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3672
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3673
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3447
    monitor-enter p0

    .line 3448
    const/4 v4, 0x1

    .line 3450
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3451
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3452
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :goto_c
    monitor-exit p0

    .line 3463
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3452
    goto :goto_c

    .line 3455
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3456
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3457
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3458
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3459
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3460
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 3457
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3463
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3464
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3270
    monitor-enter p0

    .line 3271
    const/4 v4, 0x1

    .line 3273
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3274
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3275
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :goto_c
    monitor-exit p0

    .line 3286
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3275
    goto :goto_c

    .line 3278
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3279
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3280
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3281
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3282
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3283
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3280
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3286
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3287
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3405
    monitor-enter p0

    .line 3406
    const/4 v4, 0x1

    .line 3408
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3409
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3410
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :goto_c
    monitor-exit p0

    .line 3421
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3410
    goto :goto_c

    .line 3413
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3414
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3415
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3416
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3417
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3418
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 3415
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3421
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3422
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowUnsignedApp(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4332
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4334
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4336
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 4337
    const/4 v4, 0x1

    .line 4338
    .local v4, "value":Z
    if-eqz p1, :cond_16

    .line 4339
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4340
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    :goto_12
    monitor-exit p0

    .line 4348
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_13
    return v5

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    move v5, v4

    .line 4340
    goto :goto_12

    .line 4343
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4344
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 4345
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    goto :goto_1a

    .line 4348
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    .line 4349
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4384
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4385
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4387
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 4388
    const/4 v4, 0x1

    .line 4390
    .local v4, "value":Z
    if-eqz p1, :cond_16

    .line 4391
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4392
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    :goto_12
    monitor-exit p0

    .line 4400
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_13
    return v5

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    move v5, v4

    .line 4392
    goto :goto_12

    .line 4395
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4396
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 4397
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    goto :goto_1a

    .line 4400
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    .line 4401
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getAllowWifi(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3363
    monitor-enter p0

    .line 3364
    const/4 v4, 0x1

    .line 3366
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3367
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3368
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :goto_c
    monitor-exit p0

    .line 3379
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3368
    goto :goto_c

    .line 3371
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3372
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3373
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3374
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3375
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3376
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3373
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3379
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3380
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4128
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4130
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4132
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4133
    .local v3, "blockList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 4134
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 4135
    :try_start_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4136
    .local v0, "N":I
    const/4 v7, 0x1

    if-le v0, v7, :cond_15

    .line 4137
    const/4 v5, 0x1

    .line 4139
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4140
    .local v1, "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_47

    const-string v7, ","

    :goto_38
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 4142
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_44
    move-exception v7

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_44

    throw v7

    .line 4140
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_47
    :try_start_47
    const-string v7, ""

    goto :goto_38

    .line 4142
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_44

    .line 4143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 2925
    monitor-enter p0

    .line 2926
    if-eqz p1, :cond_e

    .line 2927
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2928
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_c

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_c
    monitor-exit p0

    .line 2940
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .line 2931
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2933
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2934
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v0, :cond_30

    .line 2935
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2936
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v5, :cond_2d

    .line 2937
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_d

    .line 2941
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2a
    move-exception v4

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v4

    .line 2934
    .restart local v0    # "N":I
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2940
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2a

    goto :goto_d
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 2077
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2078
    monitor-enter p0

    .line 2085
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    .line 2086
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3017
    monitor-enter p0

    .line 3018
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v0, :cond_d

    .line 3019
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 3022
    :goto_c
    return-object v0

    .line 3021
    :cond_d
    monitor-exit p0

    .line 3022
    const/4 v0, 0x0

    goto :goto_c

    .line 3021
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 2717
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2718
    monitor-enter p0

    .line 2719
    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2722
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2723
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_29

    .line 2724
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2725
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v4, :cond_26

    .line 2728
    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    .line 2733
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_25
    return-object v4

    .line 2723
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2731
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    .line 2733
    const/4 v4, 0x0

    goto :goto_25

    .line 2731
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2968
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2969
    monitor-enter p0

    .line 2970
    if-eqz p1, :cond_12

    .line 2971
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2972
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_10

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :goto_e
    monitor-exit p0

    .line 2983
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v4

    .line 2972
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    const/4 v4, 0x0

    goto :goto_e

    .line 2976
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2977
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2978
    .local v0, "N":I
    const/4 v4, 0x0

    .line 2979
    .local v4, "which":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_2e

    .line 2980
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2981
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 2979
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2983
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2e
    monitor-exit p0

    goto :goto_f

    .line 2984
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "which":I
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2106
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2107
    monitor-enter p0

    .line 2108
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2109
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v2, 0x0

    .line 2111
    .local v2, "count":I
    if-eqz p1, :cond_17

    .line 2112
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2113
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_15

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :goto_13
    monitor-exit p0

    .line 2126
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_14
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_15
    move v5, v2

    .line 2113
    goto :goto_13

    .line 2116
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_17
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2117
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v0, :cond_3a

    .line 2118
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2119
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v2, :cond_2f

    .line 2120
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2117
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2121
    :cond_2f
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v5, :cond_2c

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v5, :cond_2c

    .line 2123
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_2c

    .line 2126
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3a
    monitor-exit p0

    move v5, v2

    goto :goto_14

    .line 2127
    .end local v0    # "N":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3d
    move-exception v5

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v5
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 2308
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2309
    monitor-enter p0

    .line 2310
    const-wide/16 v4, 0x0

    .line 2312
    .local v4, "time":J
    if-eqz p1, :cond_16

    .line 2313
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2314
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_14

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_12
    monitor-exit p0

    .line 2328
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_13
    return-wide v6

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    move-wide v6, v4

    .line 2314
    goto :goto_12

    .line 2317
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2318
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2319
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_43

    .line 2320
    iget-object v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2321
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v6, v4, v8

    if-nez v6, :cond_34

    .line 2322
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2319
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2323
    :cond_34
    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_31

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_31

    .line 2325
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_31

    .line 2328
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_43
    monitor-exit p0

    move-wide v6, v4

    goto :goto_13

    .line 2329
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_46
    move-exception v6

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_46

    throw v6
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3896
    const-string v0, ""

    return-object v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1811
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1812
    monitor-enter p0

    .line 1813
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 1814
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1766
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1767
    monitor-enter p0

    .line 1768
    if-eqz p1, :cond_14

    .line 1769
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1770
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_12

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_10
    monitor-exit p0

    .line 1783
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_11
    return-wide v4

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    move-wide v4, v6

    .line 1770
    goto :goto_10

    .line 1773
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    const-wide/16 v4, 0x0

    .line 1774
    .local v4, "timeout":J
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1775
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1776
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_40

    .line 1777
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1778
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_3b

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3d

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3d

    .line 1780
    :cond_3b
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1776
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1783
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_40
    monitor-exit p0

    goto :goto_11

    .line 1784
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "timeout":J
    :catchall_42
    move-exception v6

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw v6
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1714
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1715
    monitor-enter p0

    .line 1716
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1717
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1719
    .local v3, "length":I
    if-eqz p1, :cond_17

    .line 1720
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1721
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_15

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_13
    monitor-exit p0

    .line 1731
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_14
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_15
    move v5, v3

    .line 1721
    goto :goto_13

    .line 1724
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_17
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1725
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 1726
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1727
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v5, :cond_2e

    .line 1728
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1725
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1731
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_14

    .line 1732
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1677
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1678
    monitor-enter p0

    .line 1679
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1680
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1682
    .local v3, "length":I
    if-eqz p1, :cond_17

    .line 1683
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1684
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_15

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_13
    monitor-exit p0

    .line 1694
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_14
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_15
    move v5, v3

    .line 1684
    goto :goto_13

    .line 1687
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_17
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1688
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 1689
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1690
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v5, :cond_2e

    .line 1691
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1688
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1694
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_14

    .line 1695
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1907
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1908
    monitor-enter p0

    .line 1909
    const/4 v3, 0x0

    .line 1911
    .local v3, "length":I
    if-eqz p1, :cond_13

    .line 1912
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1913
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_f
    monitor-exit p0

    .line 1924
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move v5, v3

    .line 1913
    goto :goto_f

    .line 1916
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1917
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1918
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 1919
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1920
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v5, :cond_2e

    .line 1921
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1918
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1924
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    .line 1925
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1870
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1871
    monitor-enter p0

    .line 1872
    const/4 v3, 0x0

    .line 1874
    .local v3, "length":I
    if-eqz p1, :cond_13

    .line 1875
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1876
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_f
    monitor-exit p0

    .line 1887
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move v5, v3

    .line 1876
    goto :goto_f

    .line 1879
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1880
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1881
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 1882
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1883
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v5, :cond_2e

    .line 1884
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1881
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1887
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    .line 1888
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2018
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2019
    monitor-enter p0

    .line 2020
    const/4 v3, 0x0

    .line 2022
    .local v3, "length":I
    if-eqz p1, :cond_13

    .line 2023
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2024
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_f
    monitor-exit p0

    .line 2035
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move v5, v3

    .line 2024
    goto :goto_f

    .line 2027
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2028
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2029
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 2030
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2031
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v5, :cond_2e

    .line 2032
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2029
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2035
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    .line 2036
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1944
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1945
    monitor-enter p0

    .line 1946
    const/4 v3, 0x0

    .line 1948
    .local v3, "length":I
    if-eqz p1, :cond_13

    .line 1949
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1950
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_f
    monitor-exit p0

    .line 1961
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move v5, v3

    .line 1950
    goto :goto_f

    .line 1953
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1954
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1955
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 1956
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1957
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v5, :cond_2e

    .line 1958
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1955
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1961
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    .line 1962
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1981
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1982
    monitor-enter p0

    .line 1983
    const/4 v3, 0x0

    .line 1985
    .local v3, "length":I
    if-eqz p1, :cond_13

    .line 1986
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1987
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_f
    monitor-exit p0

    .line 1998
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move v5, v3

    .line 1987
    goto :goto_f

    .line 1990
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1991
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1992
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 1993
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1994
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v5, :cond_2e

    .line 1995
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1992
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1998
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    .line 1999
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1833
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1834
    monitor-enter p0

    .line 1835
    const/4 v3, 0x0

    .line 1837
    .local v3, "length":I
    if-eqz p1, :cond_13

    .line 1838
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1839
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_f
    monitor-exit p0

    .line 1850
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move v5, v3

    .line 1839
    goto :goto_f

    .line 1842
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1843
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1844
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_31

    .line 1845
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1846
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v5, :cond_2e

    .line 1847
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1844
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1850
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    .line 1851
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1622
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1623
    monitor-enter p0

    .line 1624
    const/4 v4, 0x0

    .line 1625
    .local v4, "mode":I
    :try_start_5
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 1627
    .local v5, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_17

    .line 1628
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1629
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_15

    iget v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_13
    monitor-exit p0

    .line 1657
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_14
    return v7

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_15
    move v7, v4

    .line 1629
    goto :goto_13

    .line 1632
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_17
    iget-object v7, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1633
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v0, :cond_31

    .line 1634
    iget-object v7, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1635
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v4, v7, :cond_2e

    .line 1636
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1633
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1642
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    new-instance v2, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1643
    .local v2, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v6

    .line 1644
    .local v6, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v6, :cond_43

    .line 1645
    new-instance v6, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v6    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v6}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 1647
    .restart local v6    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_55

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_55

    const/4 v7, 0x2

    iget v8, v6, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v8, :cond_5b

    .line 1652
    :cond_55
    const/high16 v7, 0x20000

    if-ge v4, v7, :cond_5b

    const/high16 v4, 0x50000

    .line 1657
    :cond_5b
    monitor-exit p0

    move v7, v4

    goto :goto_14

    .line 1658
    .end local v0    # "N":I
    .end local v2    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v3    # "i":I
    .end local v5    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :catchall_5e
    move-exception v7

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_5e

    throw v7
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3228
    monitor-enter p0

    .line 3229
    const/4 v4, 0x0

    .line 3231
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3232
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3233
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :goto_c
    monitor-exit p0

    .line 3244
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3233
    goto :goto_c

    .line 3236
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3237
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3238
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2c

    .line 3239
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3240
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_29

    .line 3241
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 3238
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3244
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3245
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .registers 14
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 2524
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2525
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    monitor-enter p0

    .line 2529
    :try_start_c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_3e

    move-result-object v9

    .line 2530
    .local v9, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_18

    .line 2532
    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_41
    .catchall {:try_start_13 .. :try_end_16} :catchall_3e

    .line 2535
    :goto_16
    :try_start_16
    monitor-exit p0

    .line 2550
    :goto_17
    return-void

    .line 2537
    :cond_18
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2538
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, v9, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2539
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$5;

    invoke-direct {v4, p0, p2}, Lcom/android/server/DevicePolicyManagerService$5;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2549
    monitor-exit p0

    goto :goto_17

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_3e

    throw v0

    .line 2533
    .restart local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catch_41
    move-exception v0

    goto :goto_16
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3775
    monitor-enter p0

    .line 3776
    const/4 v4, 0x0

    .line 3778
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3779
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3780
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :goto_c
    monitor-exit p0

    .line 3791
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3780
    goto :goto_c

    .line 3783
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3784
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3785
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2c

    .line 3786
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3787
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_29

    .line 3788
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 3785
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3791
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3792
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3312
    monitor-enter p0

    .line 3313
    const/4 v4, 0x1

    .line 3315
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3316
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3317
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    :goto_c
    monitor-exit p0

    .line 3328
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3317
    goto :goto_c

    .line 3320
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3321
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3322
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3323
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3324
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3325
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 3322
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3328
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3329
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2829
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2830
    monitor-enter p0

    .line 2832
    if-eqz p1, :cond_13

    .line 2834
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2835
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_f
    monitor-exit p0

    .line 2847
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return v4

    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move v4, v5

    .line 2835
    goto :goto_f

    .line 2840
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2841
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2842
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_35

    .line 2843
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_32

    .line 2844
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_10

    .line 2848
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2f
    move-exception v4

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v4

    .line 2842
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2847
    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2f

    move v4, v5

    goto :goto_10
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 2855
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2856
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 781
    monitor-enter p0

    .line 782
    :try_start_1
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 783
    .local v0, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_18

    .line 784
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 785
    .restart local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 786
    invoke-direct {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    .line 788
    :cond_18
    monitor-exit p0

    return-object v0

    .line 789
    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method handleAllowUnsignedApp(ZI)V
    .registers 17
    .param p1, "handle"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 4281
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4283
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4284
    .local v13, "unsignedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4286
    .local v8, "ident":J
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 4287
    if-eqz p1, :cond_6c

    .line 4288
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4289
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_68

    .line 4290
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4291
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4292
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :goto_34
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 4293
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_40} :catch_4f
    .catchall {:try_start_f .. :try_end_40} :catchall_a0

    .line 4297
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_42
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4f
    .catchall {:try_start_42 .. :try_end_49} :catchall_a0

    goto :goto_34

    .line 4298
    :catch_4a
    move-exception v7

    .line 4299
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4b
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_a0

    goto :goto_34

    .line 4322
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_4f
    move-exception v7

    .line 4323
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_50
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_a0

    .line 4325
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_68
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4328
    return-void

    .line 4304
    :cond_6c
    :try_start_6c
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 4306
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 4307
    .local v11, "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4308
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 4309
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_8a} :catch_4f
    .catchall {:try_start_6c .. :try_end_8a} :catchall_a0

    .line 4312
    .restart local v2    # "pkgName":Ljava/lang/String;
    :try_start_8a
    move/from16 v0, p2

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9c

    .line 4313
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_9c} :catch_a5
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_9c} :catch_4f
    .catchall {:try_start_8a .. :try_end_9c} :catchall_a0

    .line 4319
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_4f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_7e

    .line 4325
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v11    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_a0
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4315
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v11    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_a5
    move-exception v7

    .line 4316
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a6
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_4f
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a0

    goto :goto_9c
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1521
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1522
    monitor-enter p0

    .line 1523
    :try_start_4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1524
    .local v0, "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_26

    .line 1525
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1528
    .end local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_23
    move-exception v1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v1

    .line 1527
    .restart local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_26
    :try_start_26
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    return v1
.end method

.method initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 14
    .param p1, "userHandle"    # I
    .param p2, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 4414
    iget-object v1, p2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4415
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v6

    .line 4416
    .local v6, "mAllowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$600(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 4419
    .local v7, "mBlockListRecordInRom":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 4420
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 4423
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 4426
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    :try_start_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4429
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const-string v9, "com.android.email.SecurityPolicy$PolicyAdmin"

    iget-object v10, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 4431
    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4432
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_47} :catch_89

    .line 4435
    .local v2, "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_47
    :try_start_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    .line 4436
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_5e} :catch_5f

    goto :goto_47

    .line 4438
    :catch_5f
    move-exception v3

    .line 4439
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_60
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4441
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_63
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4443
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4444
    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockListRecordInRom:Ljava/util/HashSet;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4447
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4448
    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_77} :catch_89

    move-result v9

    if-eqz v9, :cond_8d

    .line 4451
    :try_start_7a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_83} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_83} :catch_89

    goto :goto_74

    .line 4452
    :catch_84
    move-exception v3

    .line 4454
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_85
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_74

    .line 4460
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_89
    move-exception v3

    .line 4461
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4463
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_8d
    return-void
.end method

.method public isActivePasswordSufficient(I)Z
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2040
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2041
    monitor-enter p0

    .line 2042
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 2045
    .local v1, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2047
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_21

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    if-ge v4, v5, :cond_23

    .line 2049
    :cond_21
    monitor-exit p0

    .line 2067
    :goto_22
    return v2

    .line 2052
    :cond_23
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 2053
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_47

    .line 2054
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2055
    .local v0, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDevicePasswordSimple()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2056
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    monitor-exit p0

    goto :goto_22

    .line 2073
    .end local v0    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v1    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_44
    move-exception v2

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_44

    throw v2

    .line 2060
    .restart local v1    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_47
    :try_start_47
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "isActivePasswordSufficient() : fail to get isDevicePasswordSimple() due to mContext == null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_4e
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v5, 0x60000

    if-eq v4, v5, :cond_57

    .line 2065
    monitor-exit p0

    move v2, v3

    goto :goto_22

    .line 2067
    :cond_57
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    move v2, v3

    :cond_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_47 .. :try_end_8f} :catchall_44

    goto :goto_22
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1514
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1515
    monitor-enter p0

    .line 1516
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 1517
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3009
    monitor-enter p0

    .line 3010
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 3012
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method loadDeviceOwner()V
    .registers 2

    .prologue
    .line 810
    monitor-enter p0

    .line 811
    :try_start_1
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 812
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 814
    :cond_e
    monitor-exit p0

    .line 815
    return-void

    .line 814
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public lockNow()V
    .registers 3

    .prologue
    .line 2333
    monitor-enter p0

    .line 2336
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2338
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2339
    monitor-exit p0

    .line 2340
    return-void

    .line 2339
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method manageAllowThirdPartyApps(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3988
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    .line 3989
    .local v11, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 3991
    .local v7, "allowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v6

    .line 3993
    .local v6, "allowList":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3994
    .local v8, "arr":[Ljava/lang/String;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 3995
    .local v12, "thirdPartyList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v12, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3996
    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3998
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4000
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_75

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    .line 4001
    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    .line 4010
    :goto_38
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4013
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :try_start_3c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4014
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_40
    :goto_40
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 4015
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4016
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, v1, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4017
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_55} :catch_70

    move-result v2

    if-nez v2, :cond_40

    .line 4020
    :try_start_58
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 4021
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 4022
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_6a} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6a} :catch_70

    goto :goto_40

    .line 4024
    :catch_6b
    move-exception v9

    .line 4025
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6c
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_40

    .line 4030
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_70
    move-exception v9

    .line 4031
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4033
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_74
    :goto_74
    return-void

    .line 4002
    :cond_75
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 4003
    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    goto :goto_38

    .line 4005
    :cond_7f
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 4006
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllThirdPartyApps(I)V

    goto :goto_74
.end method

.method manageBlockedApplications(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    .line 4179
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v8

    .line 4180
    .local v8, "blockedList":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4181
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$600(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 4184
    .local v7, "blockListInROM":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 4185
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllBlockedListApps(I)V

    .line 4187
    :cond_16
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4189
    .local v6, "arr":[Ljava/lang/String;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 4190
    .local v11, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v11, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4191
    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4193
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4194
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 4217
    :cond_32
    :goto_32
    return-void

    .line 4200
    :cond_33
    :try_start_33
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4201
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4202
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_3b
    :goto_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 4203
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4204
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4c} :catch_5d

    move-result v2

    if-nez v2, :cond_3b

    .line 4206
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_51
    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 4207
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5a} :catch_5d

    goto :goto_3b

    .line 4208
    :catch_5b
    move-exception v2

    goto :goto_3b

    .line 4214
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_5d
    move-exception v9

    .line 4215
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method public notifyChanges(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "notifyChanges"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3848
    const/4 v1, 0x0

    .line 3850
    .local v1, "enforceNotification":Z
    if-nez p1, :cond_4

    .line 3870
    :cond_3
    :goto_3
    return-void

    .line 3854
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 3855
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "notifyChanges(): Not Email Admin not proceeding."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3859
    :cond_18
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3860
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_3

    .line 3863
    if-eqz p2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v2, :cond_25

    .line 3864
    const/4 v1, 0x1

    .line 3866
    :cond_25
    iput-boolean p2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 3867
    if-eqz v1, :cond_3

    .line 3868
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(I)V

    goto :goto_3
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1548
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1549
    monitor-enter p0

    .line 1550
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1551
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1552
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2b

    .line 1553
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1554
    const/4 v3, 0x1

    monitor-exit p0

    .line 1557
    :goto_27
    return v3

    .line 1552
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1557
    :cond_2b
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_27

    .line 1558
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2e
    move-exception v3

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3875
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3878
    .local v2, "ident":J
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3879
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10402ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3881
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3882
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 3883
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, p1, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_33} :catch_37
    .catchall {:try_start_c .. :try_end_33} :catchall_40

    .line 3887
    .end local v1    # "i":Landroid/content/Intent;
    :cond_33
    :goto_33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3889
    return-void

    .line 3884
    :catch_37
    move-exception v0

    .line 3885
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failure talking with power manager"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    goto :goto_33

    .line 3887
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public recoverPassword(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 3797
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    monitor-enter p0

    .line 3801
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    move-result-wide v0

    .line 3803
    .local v0, "ident":J
    :try_start_d
    const-string v2, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 3807
    :try_start_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3809
    monitor-exit p0

    .line 3810
    return-void

    .line 3807
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3809
    .end local v0    # "ident":J
    :catchall_1e
    move-exception v2

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1562
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1564
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1565
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1594
    :goto_10
    return-void

    .line 1570
    :cond_11
    monitor-enter p0

    .line 1571
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1572
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1d

    .line 1573
    monitor-exit p0

    goto :goto_10

    .line 1593
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1a
    move-exception v4

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v4

    .line 1575
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eq v4, v5, :cond_46

    .line 1577
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v4, :cond_3d

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v5}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1579
    monitor-exit p0

    goto :goto_10

    .line 1582
    :cond_3d
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const-string v6, "Only system or itself can remove an DPM admin"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_1a

    move-result-wide v2

    .line 1589
    .local v2, "ident":J
    :try_start_4a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_52

    .line 1591
    :try_start_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1593
    monitor-exit p0

    goto :goto_10

    .line 1591
    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_1a
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 976
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_10

    .line 977
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1018
    :cond_10
    return-void
.end method

.method removeUserData(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 793
    monitor-enter p0

    .line 794
    if-nez p1, :cond_c

    .line 795
    :try_start_3
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    monitor-exit p0

    .line 807
    :goto_b
    return-void

    .line 798
    :cond_c
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 799
    .local v0, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1b

    .line 800
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 802
    :cond_1b
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 804
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 805
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    monitor-exit p0

    goto :goto_b

    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2618
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2619
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    monitor-enter p0

    .line 2623
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2624
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2d

    move-result-wide v0

    .line 2626
    .local v0, "ident":J
    :try_start_14
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2627
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2635
    const-string v3, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_28

    .line 2638
    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2640
    monitor-exit p0

    .line 2641
    return-void

    .line 2638
    :catchall_28
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2640
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2d
    move-exception v3

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw v3
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2644
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2645
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    monitor-enter p0

    .line 2649
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2650
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_18

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2e

    .line 2651
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_35

    move-result-wide v0

    .line 2653
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_1d
    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2654
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2655
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2656
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_30

    .line 2659
    :try_start_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2662
    .end local v0    # "ident":J
    :cond_2e
    monitor-exit p0

    .line 2663
    return-void

    .line 2659
    .restart local v0    # "ident":J
    :catchall_30
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2662
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_35
    move-exception v3

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .registers 36
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2131
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2133
    monitor-enter p0

    .line 2136
    const/16 v29, 0x0

    const/16 v30, 0x2

    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2138
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v24

    .line 2139
    .local v24, "quality":I
    if-eqz v24, :cond_6b

    .line 2140
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .line 2141
    .local v25, "realQuality":I
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_63

    const/high16 v29, 0x60000

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_63

    .line 2143
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: password quality 0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required quality 0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const/16 v29, 0x0

    monitor-exit p0

    .line 2259
    .end local v25    # "realQuality":I
    :goto_62
    return v29

    .line 2149
    .restart local v25    # "realQuality":I
    :cond_63
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 2152
    .end local v25    # "realQuality":I
    :cond_6b
    const/high16 v29, 0x70000

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_81

    .line 2153
    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: current password quality is smartcard numeric and can\'t set reset password"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const/16 v29, 0x0

    monitor-exit p0

    goto :goto_62

    .line 2226
    .end local v24    # "quality":I
    :catchall_7e
    move-exception v29

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_7e

    throw v29

    .line 2156
    .restart local v24    # "quality":I
    :cond_81
    const/16 v29, 0x0

    :try_start_83
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v11

    .line 2157
    .local v11, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v0, v11, :cond_c1

    .line 2158
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: password length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/16 v29, 0x0

    monitor-exit p0

    goto :goto_62

    .line 2162
    :cond_c1
    const/high16 v29, 0x60000

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_292

    .line 2163
    const/4 v12, 0x0

    .line 2164
    .local v12, "letters":I
    const/16 v27, 0x0

    .line 2165
    .local v27, "uppercase":I
    const/4 v13, 0x0

    .line 2166
    .local v13, "lowercase":I
    const/16 v22, 0x0

    .line 2167
    .local v22, "numbers":I
    const/16 v26, 0x0

    .line 2168
    .local v26, "symbols":I
    const/16 v21, 0x0

    .line 2169
    .local v21, "nonletter":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_11c

    .line 2170
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2171
    .local v5, "c":C
    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v5, v0, :cond_f5

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v5, v0, :cond_f5

    .line 2172
    add-int/lit8 v12, v12, 0x1

    .line 2173
    add-int/lit8 v27, v27, 0x1

    .line 2169
    :goto_f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_d4

    .line 2174
    :cond_f5
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v5, v0, :cond_106

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v5, v0, :cond_106

    .line 2175
    add-int/lit8 v12, v12, 0x1

    .line 2176
    add-int/lit8 v13, v13, 0x1

    goto :goto_f2

    .line 2177
    :cond_106
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v5, v0, :cond_117

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v5, v0, :cond_117

    .line 2178
    add-int/lit8 v22, v22, 0x1

    .line 2179
    add-int/lit8 v21, v21, 0x1

    goto :goto_f2

    .line 2181
    :cond_117
    add-int/lit8 v26, v26, 0x1

    .line 2182
    add-int/lit8 v21, v21, 0x1

    goto :goto_f2

    .line 2185
    .end local v5    # "c":C
    :cond_11c
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v14

    .line 2186
    .local v14, "neededLetters":I
    if-ge v12, v14, :cond_155

    .line 2187
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    .line 2191
    :cond_155
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v17

    .line 2192
    .local v17, "neededNumbers":I
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_196

    .line 2193
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of numerical digits "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of numerical digits "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    .line 2198
    :cond_196
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v15

    .line 2199
    .local v15, "neededLowerCase":I
    if-ge v13, v15, :cond_1cf

    .line 2200
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of lowercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    .line 2205
    :cond_1cf
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v19

    .line 2206
    .local v19, "neededUpperCase":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_210

    .line 2207
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of uppercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    .line 2212
    :cond_210
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v18

    .line 2213
    .local v18, "neededSymbols":I
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_251

    .line 2214
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of special symbols "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of special symbols "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    .line 2218
    :cond_251
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v16

    .line 2219
    .local v16, "neededNonLetter":I
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_292

    .line 2220
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of non-letter characters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    .line 2226
    .end local v7    # "i":I
    .end local v12    # "letters":I
    .end local v13    # "lowercase":I
    .end local v14    # "neededLetters":I
    .end local v15    # "neededLowerCase":I
    .end local v16    # "neededNonLetter":I
    .end local v17    # "neededNumbers":I
    .end local v18    # "neededSymbols":I
    .end local v19    # "neededUpperCase":I
    .end local v21    # "nonletter":I
    .end local v22    # "numbers":I
    .end local v26    # "symbols":I
    .end local v27    # "uppercase":I
    :cond_292
    monitor-exit p0
    :try_end_293
    .catchall {:try_start_83 .. :try_end_293} :catchall_7e

    .line 2228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2229
    .local v6, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v23

    .line 2230
    .local v23, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    if-ltz v29, :cond_2bc

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v6, :cond_2bc

    .line 2231
    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/16 v29, 0x0

    goto/16 :goto_62

    .line 2237
    :cond_2bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2239
    .local v8, "ident":J
    :try_start_2c0
    new-instance v28, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2240
    .local v28, "utils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v29

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 2241
    monitor-enter p0
    :try_end_2db
    .catchall {:try_start_2c0 .. :try_end_2db} :catchall_323

    .line 2242
    and-int/lit8 v29, p2, 0x1

    if-eqz v29, :cond_31d

    move/from16 v20, v6

    .line 2244
    .local v20, "newOwner":I
    :goto_2e1
    :try_start_2e1
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v20

    if-eq v0, v1, :cond_2fa

    .line 2245
    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2246
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2248
    :cond_2fa
    monitor-exit p0
    :try_end_2fb
    .catchall {:try_start_2e1 .. :try_end_2fb} :catchall_320

    .line 2250
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2254
    new-instance v10, Landroid/content/Intent;

    const-string v29, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2255
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v29, 0x40000000

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2259
    const/16 v29, 0x1

    goto/16 :goto_62

    .line 2242
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v20    # "newOwner":I
    :cond_31d
    const/16 v20, -0x1

    goto :goto_2e1

    .line 2248
    .restart local v20    # "newOwner":I
    :catchall_320
    move-exception v29

    :try_start_321
    monitor-exit p0
    :try_end_322
    .catchall {:try_start_321 .. :try_end_322} :catchall_320

    :try_start_322
    throw v29
    :try_end_323
    .catchall {:try_start_322 .. :try_end_323} :catchall_323

    .line 2250
    .end local v20    # "newOwner":I
    .end local v28    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_323
    move-exception v29

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29
.end method

.method public satisfyFIPSPassword(I)Z
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 3903
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3904
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 3905
    .local v3, "mode":I
    const/4 v5, 0x0

    .line 3907
    .local v5, "ret":Z
    monitor-enter p0

    .line 3908
    :try_start_7
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3909
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_21

    .line 3910
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3911
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v6, :cond_1e

    .line 3912
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 3909
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3916
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_21
    const/high16 v6, 0x20000

    if-lt v3, v6, :cond_2c

    .line 3917
    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-lt v6, v3, :cond_2a

    .line 3918
    const/4 v5, 0x1

    .line 3924
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 3926
    return v5

    .line 3920
    :cond_2c
    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v7, 0x50000

    if-lt v6, v7, :cond_2a

    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v7, 0x6

    if-lt v6, v7, :cond_2a

    .line 3922
    const/4 v5, 0x1

    goto :goto_2a

    .line 3924
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_39
    move-exception v6

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v6
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .registers 4
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 945
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 13
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 948
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 950
    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 951
    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 953
    :cond_1e
    if-eqz p3, :cond_30

    .line 954
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 959
    :goto_2f
    return-void

    .line 957
    :cond_30
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2f
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 962
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 963
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 964
    .local v1, "count":I
    if-lez v1, :cond_25

    .line 965
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_25

    .line 966
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 967
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 968
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 965
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 972
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 16
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1471
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1475
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1476
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1477
    .local v4, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v4, :cond_2e

    .line 1478
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad admin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1480
    :cond_2e
    monitor-enter p0

    .line 1481
    :try_start_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_48

    move-result-wide v2

    .line 1483
    .local v2, "ident":J
    if-nez p2, :cond_4b

    :try_start_35
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v9

    if-eqz v9, :cond_4b

    .line 1484
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_43

    .line 1508
    :catchall_43
    move-exception v9

    :try_start_44
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1510
    .end local v2    # "ident":J
    :catchall_48
    move-exception v9

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_48

    throw v9

    .line 1486
    .restart local v2    # "ident":J
    :cond_4b
    :try_start_4b
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1487
    .local v5, "newAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    const/4 v8, -0x1

    .line 1489
    .local v8, "replaceIndex":I
    if-eqz p2, :cond_76

    .line 1490
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1491
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5f
    if-ge v1, v0, :cond_76

    .line 1492
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1493
    .local v6, "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 1494
    move v8, v1

    .line 1499
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_76
    const/4 v9, -0x1

    if-ne v8, v9, :cond_95

    .line 1500
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1505
    :goto_85
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1506
    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_4b .. :try_end_8d} :catchall_43

    .line 1508
    :try_start_8d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1510
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_48

    .line 1511
    return-void

    .line 1491
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 1503
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_95
    :try_start_95
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_43

    goto :goto_85
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .registers 16
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    .line 2554
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2555
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    invoke-virtual {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2560
    .local v2, "p":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/high16 v3, 0x70000

    if-ne p1, v3, :cond_38

    .line 2561
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 2562
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid quality constant: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2567
    :cond_38
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 2569
    :cond_3b
    monitor-enter p0

    .line 2570
    :try_start_3c
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_8b

    .line 2575
    :cond_60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_92

    move-result-wide v0

    .line 2577
    .local v0, "ident":J
    :try_start_64
    iput p1, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 2578
    iput p2, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 2579
    iput p3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 2580
    iput p5, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 2581
    iput p4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 2582
    iput p6, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 2583
    iput p7, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 2584
    iput p8, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 2585
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2586
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2587
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 2588
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2589
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_88
    .catchall {:try_start_64 .. :try_end_88} :catchall_8d

    .line 2592
    :try_start_88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2595
    .end local v0    # "ident":J
    :cond_8b
    monitor-exit p0

    .line 2596
    return-void

    .line 2592
    .restart local v0    # "ident":J
    :catchall_8d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2595
    .end local v0    # "ident":J
    :catchall_92
    move-exception v3

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_92

    throw v3
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3185
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_7

    .line 3204
    :goto_6
    return-void

    .line 3190
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 3191
    .local v3, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v3, :cond_26

    .line 3192
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3195
    :cond_26
    monitor-enter p0

    .line 3196
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3c

    move-result-wide v1

    .line 3198
    .local v1, "ident":J
    :try_start_2b
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPermissions()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo;->setPermissions(J)V

    .line 3199
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3f

    .line 3201
    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3203
    monitor-exit p0

    goto :goto_6

    .end local v1    # "ident":J
    :catchall_3c
    move-exception v4

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v4

    .line 3201
    .restart local v1    # "ident":J
    :catchall_3f
    move-exception v4

    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_3c
.end method

.method public setAllowAppListThirdParty(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 3953
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3955
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 3957
    if-nez p1, :cond_12

    .line 3958
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3981
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 3962
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 3963
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    monitor-exit p0

    .line 3982
    :goto_26
    return-void

    .line 3967
    :cond_27
    const/16 v4, 0x16

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3970
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 3971
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    .line 3972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v1

    .line 3975
    .local v1, "ident":J
    :try_start_3f
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3976
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4a

    .line 3978
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3981
    .end local v1    # "ident":J
    :cond_48
    monitor-exit p0

    goto :goto_26

    .line 3978
    .restart local v1    # "ident":J
    :catchall_4a
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_f
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3552
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3553
    monitor-enter p0

    .line 3554
    if-nez p1, :cond_11

    .line 3555
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3569
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3557
    :cond_11
    const/16 v3, 0x11

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3559
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    if-eq v3, p2, :cond_27

    .line 3560
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 3562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3564
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3566
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3569
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3570
    return-void

    .line 3566
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3469
    monitor-enter p0

    .line 3470
    if-nez p1, :cond_11

    .line 3471
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3485
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3473
    :cond_11
    const/16 v3, 0xf

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3475
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    if-eq v3, p2, :cond_27

    .line 3476
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 3478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3480
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3482
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3485
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3486
    return-void

    .line 3482
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowCamera(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3334
    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/DevicePolicyManagerService;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 3335
    return-void

    .line 3334
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3593
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3594
    monitor-enter p0

    .line 3595
    if-nez p1, :cond_11

    .line 3596
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3610
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3598
    :cond_11
    const/16 v3, 0x12

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3600
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    if-eq v3, p2, :cond_27

    .line 3601
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 3603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3605
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3607
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3610
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3611
    return-void

    .line 3607
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3510
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3511
    monitor-enter p0

    .line 3512
    if-nez p1, :cond_11

    .line 3513
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3527
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3515
    :cond_11
    const/16 v3, 0x10

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3517
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    if-eq v3, p2, :cond_27

    .line 3518
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 3520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3522
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3524
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3527
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3528
    return-void

    .line 3524
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3635
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3636
    monitor-enter p0

    .line 3637
    if-nez p1, :cond_11

    .line 3638
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3652
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3640
    :cond_11
    const/16 v3, 0x13

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3642
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    if-eq v3, p2, :cond_27

    .line 3643
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 3645
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3647
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3649
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3652
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3653
    return-void

    .line 3649
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3426
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3427
    monitor-enter p0

    .line 3428
    if-nez p1, :cond_11

    .line 3429
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3443
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3431
    :cond_11
    const/16 v3, 0xe

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3433
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    if-eq v3, p2, :cond_27

    .line 3434
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 3436
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3438
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3440
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3443
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3444
    return-void

    .line 3440
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3249
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3250
    monitor-enter p0

    .line 3251
    if-nez p1, :cond_11

    .line 3252
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3266
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3254
    :cond_11
    const/16 v3, 0xb

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3256
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    if-eq v3, p2, :cond_27

    .line 3257
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3261
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3263
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3266
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3267
    return-void

    .line 3263
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3384
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3385
    monitor-enter p0

    .line 3386
    if-nez p1, :cond_11

    .line 3387
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3401
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3389
    :cond_11
    const/16 v3, 0xd

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3391
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    if-eq v3, p2, :cond_27

    .line 3392
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 3394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3396
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3398
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3401
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3402
    return-void

    .line 3398
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowUnsignedApp(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4246
    monitor-enter p0

    .line 4247
    if-nez p1, :cond_e

    .line 4248
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4276
    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    .line 4251
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 4252
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    monitor-exit p0

    .line 4277
    :goto_22
    return-void

    .line 4255
    :cond_23
    const/4 v1, 0x0

    .line 4256
    .local v1, "handle":Z
    const/16 v4, 0x19

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4258
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    if-eq v4, p2, :cond_4c

    .line 4259
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    .line 4260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_b

    move-result-wide v2

    .line 4262
    .local v2, "ident":J
    if-nez p2, :cond_43

    .line 4264
    :try_start_36
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4267
    const/4 v1, 0x1

    .line 4269
    :cond_43
    invoke-virtual {p0, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    .line 4271
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_4e

    .line 4273
    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4276
    .end local v2    # "ident":J
    :cond_4c
    monitor-exit p0

    goto :goto_22

    .line 4273
    .restart local v2    # "ident":J
    :catchall_4e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_b
.end method

.method public setAllowUnsignedInstallationPkg(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4354
    monitor-enter p0

    .line 4355
    if-nez p1, :cond_e

    .line 4356
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4379
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 4359
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 4360
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Not Email Admin not proceeding."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    monitor-exit p0

    .line 4380
    :goto_22
    return-void

    .line 4363
    :cond_23
    const/16 v3, 0x1a

    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4366
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    if-eq v3, p2, :cond_47

    .line 4367
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    .line 4368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4370
    .local v1, "ident":J
    if-nez p2, :cond_41

    .line 4371
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_b

    .line 4374
    :cond_41
    :try_start_41
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_49

    .line 4376
    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4379
    .end local v1    # "ident":J
    :cond_47
    monitor-exit p0

    goto :goto_22

    .line 4376
    .restart local v1    # "ident":J
    :catchall_49
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_b
.end method

.method public setAllowWifi(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3342
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3343
    monitor-enter p0

    .line 3344
    if-nez p1, :cond_11

    .line 3345
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3359
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3347
    :cond_11
    const/16 v3, 0xc

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3349
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    if-eq v3, p2, :cond_27

    .line 3350
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3354
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3356
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3359
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3360
    return-void

    .line 3356
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setBlockListInRom(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4148
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4150
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 4151
    if-nez p1, :cond_12

    .line 4152
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4174
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 4156
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 4157
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    monitor-exit p0

    .line 4175
    :goto_26
    return-void

    .line 4160
    :cond_27
    const/16 v4, 0x17

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4162
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 4164
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    .line 4166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v1

    .line 4168
    .local v1, "ident":J
    :try_start_3f
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4169
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4a

    .line 4171
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4174
    .end local v1    # "ident":J
    :cond_48
    monitor-exit p0

    goto :goto_26

    .line 4171
    .restart local v1    # "ident":J
    :catchall_4a
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_f
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2905
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2906
    monitor-enter p0

    .line 2907
    if-nez p1, :cond_11

    .line 2908
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2917
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 2910
    :cond_11
    const/16 v1, 0x8

    :try_start_13
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2912
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_20

    .line 2913
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 2914
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2916
    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2917
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_e

    .line 2918
    return-void
.end method

.method public setDeviceOwner(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2989
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2991
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2994
    :cond_2d
    monitor-enter p0

    .line 2995
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-nez v0, :cond_47

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2996
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 2997
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFile()V

    .line 2998
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 3000
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set device owner to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device_provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3004
    :catchall_7e
    move-exception v0

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_2e .. :try_end_80} :catchall_7e

    throw v0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 822
    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v10

    .line 823
    .local v10, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 824
    .local v12, "now":J
    sub-long v15, v10, v12

    .line 826
    .local v15, "timeToExpire":J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_68

    .line 828
    const-wide/16 v7, 0x0

    .line 842
    .local v7, "alarmTime":J
    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 844
    .local v17, "token":J
    :try_start_24
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 845
    .local v9, "am":Landroid/app/AlarmManager;
    const/16 v19, 0x15c3

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x48000000

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 849
    .local v14, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v9, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 850
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_64

    .line 851
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7, v8, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_85

    .line 854
    :cond_64
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    return-void

    .line 829
    .end local v7    # "alarmTime":J
    .end local v9    # "am":Landroid/app/AlarmManager;
    .end local v14    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "token":J
    :cond_68
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_74

    .line 831
    const-wide/32 v19, 0x5265c00

    add-long v7, v12, v19

    .restart local v7    # "alarmTime":J
    goto :goto_20

    .line 835
    .end local v7    # "alarmTime":J
    :cond_74
    const-wide/32 v19, 0x5265c00

    rem-long v5, v15, v19

    .line 836
    .local v5, "alarmInterval":J
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_82

    .line 837
    const-wide/32 v5, 0x5265c00

    .line 839
    :cond_82
    add-long v7, v12, v5

    .restart local v7    # "alarmTime":J
    goto :goto_20

    .line 854
    .end local v5    # "alarmInterval":J
    .restart local v17    # "token":J
    :catchall_85
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 2667
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2668
    monitor-enter p0

    .line 2669
    if-nez p1, :cond_11

    .line 2670
    :try_start_6
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2713
    :catchall_e
    move-exception v8

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v8

    .line 2674
    :cond_11
    const/4 v8, 0x0

    :try_start_12
    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 2675
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2680
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2681
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 2682
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2683
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_25

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 2686
    monitor-exit p0

    .line 2712
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :goto_44
    return-object v3

    .line 2691
    :cond_45
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_6c

    .line 2692
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_44

    .line 2696
    :cond_6c
    if-nez p2, :cond_84

    .line 2697
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2698
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2699
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 2709
    :goto_77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2710
    .local v5, "origId":J
    invoke-direct {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2711
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2712
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_44

    .line 2702
    .end local v5    # "origId":J
    :cond_84
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2703
    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2704
    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_8b
    .catchall {:try_start_12 .. :try_end_8b} :catchall_e

    goto :goto_77
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2948
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2949
    monitor-enter p0

    .line 2950
    if-nez p1, :cond_11

    .line 2951
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2960
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 2953
    :cond_11
    const/16 v1, 0x9

    :try_start_13
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2955
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_20

    .line 2956
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 2957
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2959
    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2960
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_e

    .line 2961
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2090
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2091
    monitor-enter p0

    .line 2094
    const/4 v1, 0x4

    :try_start_5
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2096
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2098
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_16

    .line 2099
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2100
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2102
    :cond_16
    monitor-exit p0

    .line 2103
    return-void

    .line 2102
    .end local v0    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2263
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2264
    monitor-enter p0

    .line 2265
    if-nez p1, :cond_11

    .line 2266
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2275
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 2268
    :cond_11
    const/4 v1, 0x3

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2270
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_28

    .line 2271
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2272
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2273
    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2275
    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_e

    .line 2276
    return-void
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v3, 0x0

    .line 1736
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1737
    monitor-enter p0

    .line 1738
    if-nez p1, :cond_13

    .line 1739
    :try_start_8
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1758
    :catchall_10
    move-exception v3

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v3

    .line 1741
    :cond_13
    cmp-long v5, p2, v3

    if-gez v5, :cond_1f

    .line 1742
    :try_start_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1744
    :cond_1f
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1747
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, p2, v3

    if-lez v5, :cond_6b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    .line 1748
    .local v1, "expiration":J
    :goto_2e
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1749
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1750
    cmp-long v3, p2, v3

    if-lez v3, :cond_5d

    .line 1751
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_5d
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1757
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1758
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_17 .. :try_end_6a} :catchall_10

    .line 1759
    return-void

    .end local v1    # "expiration":J
    :cond_6b
    move-wide v1, v3

    .line 1747
    goto :goto_2e
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1699
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1700
    monitor-enter p0

    .line 1701
    if-nez p1, :cond_11

    .line 1702
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1710
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1704
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1706
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_1f

    .line 1707
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1708
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1710
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1711
    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1662
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1663
    monitor-enter p0

    .line 1664
    if-nez p1, :cond_11

    .line 1665
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1673
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1667
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1669
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_1f

    .line 1670
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1671
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1673
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1674
    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1892
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1893
    monitor-enter p0

    .line 1894
    if-nez p1, :cond_11

    .line 1895
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1903
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1897
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1899
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_1f

    .line 1900
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1901
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1903
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1904
    return-void
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1855
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1856
    monitor-enter p0

    .line 1857
    if-nez p1, :cond_11

    .line 1858
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1866
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1860
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1862
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1f

    .line 1863
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1864
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1866
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1867
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2003
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2004
    monitor-enter p0

    .line 2005
    if-nez p1, :cond_11

    .line 2006
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2014
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 2008
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2010
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_1f

    .line 2011
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2012
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2014
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 2015
    return-void
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1929
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1930
    monitor-enter p0

    .line 1931
    if-nez p1, :cond_11

    .line 1932
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1940
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1934
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1936
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_1f

    .line 1937
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1938
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1940
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1941
    return-void
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1966
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1967
    monitor-enter p0

    .line 1968
    if-nez p1, :cond_11

    .line 1969
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1977
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1971
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1973
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_1f

    .line 1974
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1975
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1977
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1978
    return-void
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1818
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1819
    monitor-enter p0

    .line 1820
    if-nez p1, :cond_11

    .line 1821
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1829
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1823
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1825
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_1f

    .line 1826
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1827
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1829
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1830
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1598
    const/high16 v1, 0x70000

    if-ne p2, v1, :cond_29

    .line 1599
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1600
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid quality constant: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1605
    :cond_29
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1606
    :cond_2c
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1608
    monitor-enter p0

    .line 1609
    if-nez p1, :cond_3d

    .line 1610
    :try_start_32
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1618
    :catchall_3a
    move-exception v1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v1

    .line 1612
    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1614
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_4b

    .line 1615
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1616
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1618
    :cond_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_3a

    .line 1619
    return-void
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3207
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3208
    monitor-enter p0

    .line 3209
    if-nez p1, :cond_11

    .line 3210
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3224
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3212
    :cond_11
    const/16 v3, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3214
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    if-eq v3, p2, :cond_27

    .line 3215
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 3217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3219
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3221
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3224
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3225
    return-void

    .line 3221
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3813
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3814
    monitor-enter p0

    .line 3815
    if-nez p1, :cond_11

    .line 3816
    :try_start_6
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3835
    :catchall_e
    move-exception v5

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v5

    .line 3818
    :cond_11
    const/16 v5, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3821
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_30

    .line 3822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_e

    move-result-wide v1

    .line 3824
    .local v1, "ident":J
    :try_start_1e
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 3825
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 3826
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_32

    .line 3832
    :try_start_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3835
    .end local v1    # "ident":J
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "mRecoveryPassword":Ljava/lang/String;
    :cond_30
    monitor-exit p0

    .line 3837
    return-void

    .line 3832
    .restart local v1    # "ident":J
    :catchall_32
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_e
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3697
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3698
    monitor-enter p0

    .line 3699
    if-nez p1, :cond_11

    .line 3700
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3714
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3702
    :cond_11
    const/16 v3, 0x14

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3704
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    if-eq v3, p2, :cond_27

    .line 3705
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 3707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3709
    .local v1, "ident":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3711
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3714
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3715
    return-void

    .line 3711
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3291
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3292
    monitor-enter p0

    .line 3293
    if-nez p1, :cond_11

    .line 3294
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3308
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3296
    :cond_11
    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3298
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v3, p2, :cond_26

    .line 3299
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 3301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_e

    move-result-wide v1

    .line 3303
    .local v1, "ident":J
    :try_start_20
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    .line 3305
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    .end local v1    # "ident":J
    :cond_26
    monitor-exit p0

    .line 3309
    return-void

    .line 3305
    .restart local v1    # "ident":J
    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_e
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2778
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2779
    monitor-enter p0

    .line 2781
    if-nez p1, :cond_12

    .line 2782
    :try_start_7
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2821
    :catchall_f
    move-exception v5

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v5

    .line 2785
    :cond_12
    if-nez p3, :cond_1a

    :try_start_14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 2787
    :cond_1a
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    monitor-exit p0

    .line 2818
    :goto_3d
    return v5

    .line 2792
    :cond_3e
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2796
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 2797
    monitor-exit p0

    goto :goto_3d

    .line 2801
    :cond_4b
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_54

    .line 2802
    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 2803
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2806
    :cond_54
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2808
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 2809
    .local v3, "newRequested":Z
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2810
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_61
    if-ge v2, v0, :cond_71

    .line 2811
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 2810
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 2815
    :cond_71
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 2818
    if-eqz v3, :cond_79

    const/4 v5, 0x3

    :goto_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_14 .. :try_end_78} :catchall_f

    goto :goto_3d

    :cond_79
    const/4 v5, 0x1

    goto :goto_77
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 9
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1411
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1412
    .local v1, "systemState":Z
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1413
    .local v0, "cameraDisabled":Z
    if-eq v0, v1, :cond_20

    .line 1414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1416
    .local v2, "token":J
    if-eqz v0, :cond_21

    :try_start_16
    const-string v4, "1"

    .line 1419
    .local v4, "value":Ljava/lang/String;
    :goto_18
    const-string v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_24

    .line 1421
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1424
    .end local v2    # "token":J
    .end local v4    # "value":Ljava/lang/String;
    :cond_20
    return-void

    .line 1416
    .restart local v2    # "token":J
    :cond_21
    :try_start_21
    const-string v4, "0"
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_18

    .line 1421
    :catchall_24
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 1427
    monitor-enter p0

    .line 1428
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1430
    const-string v0, "device_policies_backup.xml"

    const-string v1, "device_policies.xml"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 1432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    .line 1433
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 1437
    :cond_2a
    monitor-exit p0

    .line 1438
    return-void

    .line 1437
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 10
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 2279
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    .line 2280
    .local v3, "timeMs":J
    iget-wide v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_e

    .line 2305
    :goto_d
    return-void

    .line 2284
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2286
    .local v1, "ident":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_29

    .line 2287
    const-wide/32 v3, 0x7fffffff

    .line 2295
    :goto_1b
    :try_start_1b
    iput-wide v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_36

    .line 2298
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v5

    long-to-int v6, v3

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_3b
    .catchall {:try_start_1d .. :try_end_25} :catchall_36

    .line 2303
    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .line 2291
    :cond_29
    :try_start_29
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stay_on_while_plugged_in"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_36

    goto :goto_1b

    .line 2303
    :catchall_36
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2299
    :catch_3b
    move-exception v0

    .line 2300
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failure talking with power manager"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_36

    goto :goto_25
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1388
    iget v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_45

    .line 1389
    const/4 v0, 0x0

    .line 1390
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_20

    .line 1391
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_46

    .line 1392
    const/4 v0, 0x1

    .line 1396
    :cond_20
    if-nez v0, :cond_45

    .line 1397
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1402
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_45
    return-void

    .line 1390
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public wipeData(II)V
    .registers 8
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2451
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2452
    monitor-enter p0

    .line 2455
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_6
    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2457
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1b

    move-result-wide v1

    .line 2466
    .local v1, "ident":J
    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    .line 2468
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2470
    monitor-exit p0

    .line 2471
    return-void

    .line 2468
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2470
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "ident":J
    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method wipeDataLocked(I)V
    .registers 9
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2363
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_3c

    move v1, v4

    .line 2364
    .local v1, "forceExtWipe":Z
    :goto_f
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_14

    move v3, v4

    .line 2367
    .local v3, "wipeExtRequested":Z
    :cond_14
    if-nez v1, :cond_18

    if-eqz v3, :cond_3e

    :cond_18
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 2368
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2369
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "always_reset"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2370
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2371
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2372
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2380
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_3b
    return-void

    .end local v1    # "forceExtWipe":Z
    .end local v3    # "wipeExtRequested":Z
    :cond_3c
    move v1, v3

    .line 2363
    goto :goto_f

    .line 2375
    .restart local v1    # "forceExtWipe":Z
    .restart local v3    # "wipeExtRequested":Z
    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_44

    goto :goto_3b

    .line 2376
    :catch_44
    move-exception v0

    .line 2377
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method wipeDataLockedFor3LM(I)V
    .registers 9
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2386
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_36

    move v1, v3

    .line 2387
    .local v1, "forceExtWipe":Z
    :goto_f
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_38

    .line 2390
    .local v3, "wipeExtRequested":Z
    :goto_13
    if-nez v1, :cond_17

    if-eqz v3, :cond_3a

    :cond_17
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 2392
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2393
    .local v2, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2394
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2395
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2415
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_35
    return-void

    .end local v1    # "forceExtWipe":Z
    .end local v3    # "wipeExtRequested":Z
    :cond_36
    move v1, v4

    .line 2386
    goto :goto_f

    .restart local v1    # "forceExtWipe":Z
    :cond_38
    move v3, v4

    .line 2387
    goto :goto_13

    .line 2410
    .restart local v3    # "wipeExtRequested":Z
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_35

    .line 2411
    :catch_40
    move-exception v0

    .line 2412
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method
