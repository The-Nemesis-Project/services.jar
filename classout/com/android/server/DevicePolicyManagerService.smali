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

.field private static final FOOTER_PROP_MAX_PASSWORD_ATTEMPTS:Ljava/lang/String; = "security.ode.maxattempts"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10401a5

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

.field private mHasFeature:Z

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mNotificationManager:Landroid/app/NotificationManager;

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
    .line 194
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

    .line 804
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 191
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4578
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    .line 805
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    .line 808
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "DPM"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 810
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_49

    .line 830
    :goto_48
    return-void

    .line 814
    :cond_49
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 821
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 822
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_48
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageMonitoringCertificateNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetAppPolicies(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DevicePolicyManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DevicePolicyManagerService;)Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DevicePolicyManagerService;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3608
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3609
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3613
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_e

    .line 3625
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_d
    :goto_d
    return-void

    .line 3617
    .restart local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_e
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 3619
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_d

    .line 3623
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1d
    move-exception v1

    goto :goto_d
.end method

.method private enforceCrossUserPermission(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 3594
    if-gez p1, :cond_1b

    .line 3595
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

    .line 3597
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3598
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_26

    .line 3604
    :cond_25
    :goto_25
    return-void

    .line 3599
    :cond_26
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_25

    if-eqz v0, :cond_25

    .line 3600
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private formatExternSdCard()V
    .registers 9

    .prologue
    .line 2890
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "formatExternSdCard() called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    sget-object v5, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_f
    if-ge v1, v3, :cond_61

    aget-object v4, v0, v1

    .line 2892
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_5e

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/extSdCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 2894
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

    .line 2895
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2896
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2897
    const-string/jumbo v5, "storage_volume"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2898
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2891
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2901
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_61
    return-void
.end method

.method private getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 2

    .prologue
    .line 5146
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionStatus()I
    .registers 4

    .prologue
    .line 3397
    const-string v1, "ro.crypto.state"

    const-string/jumbo v2, "unencrypted"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3398
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3399
    const/4 v1, 0x3

    .line 3403
    :goto_12
    return v1

    .line 3400
    :cond_13
    const-string/jumbo v1, "unsupported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3401
    const/4 v1, 0x0

    goto :goto_12

    .line 3403
    :cond_1e
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private getExternalSD()Landroid/os/storage/StorageVolume;
    .registers 9

    .prologue
    .line 2779
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->initializeStorageManager()V

    .line 2780
    const/4 v0, 0x0

    .line 2781
    .local v0, "extStorageVolume":Landroid/os/storage/StorageVolume;
    sget-object v7, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 2782
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v5

    .line 2784
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    if-ge v1, v3, :cond_25

    .line 2785
    aget-object v4, v5, v1

    .line 2786
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    const/4 v6, 0x0

    .line 2787
    .local v6, "subsystem":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 2789
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_26

    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 2791
    move-object v0, v4

    .line 2795
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v6    # "subsystem":Ljava/lang/String;
    :cond_25
    return-object v0

    .line 2784
    .restart local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .restart local v6    # "subsystem":Ljava/lang/String;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private getHarmonyEAS()Landroid/content/IHarmonyEAS;
    .registers 3

    .prologue
    .line 4999
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-nez v1, :cond_10

    .line 5000
    const-string v1, "harmony_eas_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5001
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IHarmonyEAS$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IHarmonyEAS;

    move-result-object v1

    sput-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    .line 5003
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    return-object v1
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    .prologue
    .line 930
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_10

    .line 931
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 932
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 934
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 947
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 950
    :cond_10
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2038
    if-eqz p1, :cond_d

    .line 2039
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2040
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_c

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2053
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_c
    :goto_c
    return-wide v6

    .line 2043
    :cond_d
    const-wide/16 v4, 0x0

    .line 2044
    .local v4, "timeout":J
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2045
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2046
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_39

    .line 2047
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2048
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_34

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_36

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_36

    .line 2050
    :cond_34
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2046
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_39
    move-wide v6, v4

    .line 2053
    goto :goto_c
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    .prologue
    .line 938
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_11

    .line 939
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 940
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 942
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 767
    const/4 v4, 0x0

    .line 769
    .local v4, "removed":Z
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 770
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 771
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_5e

    .line 772
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 775
    .local v0, "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1c
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->isProxy()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 771
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 780
    :cond_27
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_41

    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_24

    .line 782
    :cond_41
    const/4 v4, 0x1

    .line 783
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 785
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 787
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_5b} :catch_5c

    goto :goto_24

    .line 790
    :catch_5c
    move-exception v5

    goto :goto_24

    .line 794
    .end local v0    # "aa":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5e
    if-eqz v4, :cond_6b

    .line 795
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 796
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 797
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 799
    :cond_6b
    return-void
.end method

.method private handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 14
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const-wide/16 v10, 0x0

    .line 1583
    monitor-enter p0

    .line 1584
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1585
    .local v4, "now":J
    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1586
    .local v0, "N":I
    if-gtz v0, :cond_11

    .line 1587
    monitor-exit p0

    .line 1608
    :goto_10
    return-void

    .line 1589
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_76

    .line 1590
    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1591
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_73

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_73

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_73

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v8, 0x19bfcc00

    sub-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_73

    .line 1595
    const-string v6, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1597
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.email"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    .line 1598
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "pkgName"

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    const-string v6, "expiration"

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1601
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1589
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1606
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_76
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1607
    monitor-exit p0

    goto :goto_10

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "now":J
    :catchall_7d
    move-exception v6

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw v6
.end method

.method private ifExternalSdPresent()Z
    .registers 5

    .prologue
    .line 2877
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "ifExternalSdPresent() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v2, "/storage/extSdCard"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2880
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

    .line 2882
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2884
    :cond_37
    const/4 v1, 0x1

    .line 2886
    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private initialiseStorageManager()V
    .registers 3

    .prologue
    .line 2872
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_11

    .line 2873
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2874
    :cond_11
    return-void
.end method

.method private initializeStorageManager()V
    .registers 3

    .prologue
    .line 2774
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_11

    .line 2775
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2776
    :cond_11
    return-void
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3589
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
    .line 3386
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
    .line 2699
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2700
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z
    .registers 26
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 1318
    const/4 v14, 0x1

    .line 1320
    .local v14, "result":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 1321
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v15, 0x0

    .line 1322
    .local v15, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 1324
    .local v7, "file":Ljava/io/File;
    :try_start_a
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_11} :catch_6e6
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_11} :catch_6e3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_11} :catch_6e0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_11} :catch_6dd
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_6da
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_11} :catch_6d7
    .catchall {:try_start_a .. :try_end_11} :catchall_647

    .line 1325
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1326
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1330
    :cond_1e
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_32

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 1332
    :cond_32
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1333
    .local v17, "tag":Ljava/lang/String;
    const-string v20, "policies"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_3f} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_3f} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_3f} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_3f} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3f} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_3f} :catch_512
    .catchall {:try_start_11 .. :try_end_3f} :catchall_6d2

    move-result v20

    if-nez v20, :cond_d3

    .line 1335
    if-eqz v16, :cond_47

    .line 1336
    :try_start_44
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_641
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_47} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_47} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_47} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_47} :catch_2e1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_47} :catch_512
    .catchall {:try_start_44 .. :try_end_47} :catchall_6d2

    .line 1339
    :cond_47
    :goto_47
    :try_start_47
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Settings do not start with policies tag: found "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_64
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_64} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_64} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_64} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_64} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_64} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_47 .. :try_end_64} :catch_512
    .catchall {:try_start_47 .. :try_end_64} :catchall_6d2

    .line 1434
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_64
    move-exception v6

    move-object/from16 v15, v16

    .line 1435
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NullPointerException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_67
    const/4 v14, 0x0

    .line 1436
    :try_start_68
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_68 .. :try_end_8e} :catchall_647

    .line 1452
    if-nez v14, :cond_583

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_583

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .local v8, "i":I
    :goto_a4
    if-ltz v8, :cond_583

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .local v4, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_a4

    .line 1342
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_d3
    :try_start_d3
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .line 1343
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 1345
    .local v11, "outerDepth":I
    :cond_db
    :goto_db
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_68d

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f7

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v11, :cond_68d

    .line 1346
    :cond_f7
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_db

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_db

    .line 1349
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1350
    const-string v20, "admin"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_204

    .line 1351
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_122
    .catch Ljava/lang/NullPointerException; {:try_start_d3 .. :try_end_122} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_d3 .. :try_end_122} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d3 .. :try_end_122} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_d3 .. :try_end_122} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_122} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d3 .. :try_end_122} :catch_512
    .catchall {:try_start_d3 .. :try_end_122} :catchall_6d2

    move-result-object v10

    .line 1353
    .local v10, "name":Ljava/lang/String;
    :try_start_123
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    .line 1361
    .local v5, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_db

    .line 1363
    const/4 v3, 0x0

    .line 1364
    .local v3, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    new-instance v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1365
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v4, v12}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1366
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1367
    .restart local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_db

    .line 1369
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_172
    .catch Ljava/lang/RuntimeException; {:try_start_123 .. :try_end_172} :catch_174
    .catch Ljava/lang/NullPointerException; {:try_start_123 .. :try_end_172} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_123 .. :try_end_172} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_123 .. :try_end_172} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_123 .. :try_end_172} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_172} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_123 .. :try_end_172} :catch_512
    .catchall {:try_start_123 .. :try_end_172} :catchall_6d2

    goto/16 :goto_db

    .line 1374
    .end local v3    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_174
    move-exception v6

    .line 1375
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_175
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed loading admin "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_193
    .catch Ljava/lang/NullPointerException; {:try_start_175 .. :try_end_193} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_175 .. :try_end_193} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_175 .. :try_end_193} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_175 .. :try_end_193} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_193} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_175 .. :try_end_193} :catch_512
    .catchall {:try_start_175 .. :try_end_193} :catchall_6d2

    goto/16 :goto_db

    .line 1437
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_195
    move-exception v6

    move-object/from16 v15, v16

    .line 1438
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_198
    const/4 v14, 0x0

    .line 1439
    :try_start_199
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bf
    .catchall {:try_start_199 .. :try_end_1bf} :catchall_647

    .line 1452
    if-nez v14, :cond_583

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_583

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_1d5
    if-ltz v8, :cond_583

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_1d5

    .line 1377
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_204
    :try_start_204
    const-string v20, "failed-password-attempts"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2aa

    .line 1378
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_236

    .line 1379
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 1382
    :cond_236
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_239
    .catch Ljava/lang/NullPointerException; {:try_start_204 .. :try_end_239} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_204 .. :try_end_239} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_204 .. :try_end_239} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_204 .. :try_end_239} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_239} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_204 .. :try_end_239} :catch_512
    .catchall {:try_start_204 .. :try_end_239} :catchall_6d2

    goto/16 :goto_db

    .line 1440
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_23b
    move-exception v6

    move-object/from16 v15, v16

    .line 1441
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_23e
    const/4 v14, 0x0

    .line 1442
    :try_start_23f
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_265
    .catchall {:try_start_23f .. :try_end_265} :catchall_647

    .line 1452
    if-nez v14, :cond_583

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_583

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_27b
    if-ltz v8, :cond_583

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_27b

    .line 1383
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_2aa
    :try_start_2aa
    const-string v20, "password-owner"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_329

    .line 1384
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2dc

    .line 1385
    const/16 v20, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1388
    :cond_2dc
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2df
    .catch Ljava/lang/NullPointerException; {:try_start_2aa .. :try_end_2df} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_2aa .. :try_end_2df} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2aa .. :try_end_2df} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_2aa .. :try_end_2df} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_2aa .. :try_end_2df} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2aa .. :try_end_2df} :catch_512
    .catchall {:try_start_2aa .. :try_end_2df} :catchall_6d2

    goto/16 :goto_db

    .line 1443
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_2e1
    move-exception v20

    move-object/from16 v15, v16

    .line 1452
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_2e4
    if-nez v14, :cond_583

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_583

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_2fa
    if-ltz v8, :cond_583

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_2fa

    .line 1389
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_329
    :try_start_329
    const-string v20, "active-password"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4f1

    .line 1390
    const/16 v20, 0x0

    const-string v21, "quality"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_359

    .line 1391
    const/16 v20, 0x0

    const-string v21, "quality"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1394
    :cond_359
    const/16 v20, 0x0

    const-string v21, "length"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_37d

    .line 1395
    const/16 v20, 0x0

    const-string v21, "length"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1398
    :cond_37d
    const/16 v20, 0x0

    const-string/jumbo v21, "uppercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3a3

    .line 1399
    const/16 v20, 0x0

    const-string/jumbo v21, "uppercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1402
    :cond_3a3
    const/16 v20, 0x0

    const-string v21, "lowercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3c7

    .line 1403
    const/16 v20, 0x0

    const-string v21, "lowercase"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1406
    :cond_3c7
    const/16 v20, 0x0

    const-string v21, "letters"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3eb

    .line 1407
    const/16 v20, 0x0

    const-string v21, "letters"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1410
    :cond_3eb
    const/16 v20, 0x0

    const-string v21, "numeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_40f

    .line 1411
    const/16 v20, 0x0

    const-string v21, "numeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1414
    :cond_40f
    const/16 v20, 0x0

    const-string/jumbo v21, "symbols"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_435

    .line 1415
    const/16 v20, 0x0

    const-string/jumbo v21, "symbols"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1418
    :cond_435
    const/16 v20, 0x0

    const-string v21, "nonletter"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_459

    .line 1419
    const/16 v20, 0x0

    const-string v21, "nonletter"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1423
    :cond_459
    const/16 v20, 0x0

    const-string v21, "recoverable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_47d

    .line 1424
    const/16 v20, 0x0

    const-string v21, "recoverable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    .line 1428
    :cond_47d
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_480
    .catch Ljava/lang/NullPointerException; {:try_start_329 .. :try_end_480} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_329 .. :try_end_480} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_329 .. :try_end_480} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_329 .. :try_end_480} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_329 .. :try_end_480} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_329 .. :try_end_480} :catch_512
    .catchall {:try_start_329 .. :try_end_480} :catchall_6d2

    goto/16 :goto_db

    .line 1445
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_482
    move-exception v6

    move-object/from16 v15, v16

    .line 1446
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_485
    const/4 v14, 0x0

    .line 1447
    :try_start_486
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4ac
    .catchall {:try_start_486 .. :try_end_4ac} :catchall_647

    .line 1452
    if-nez v14, :cond_583

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_583

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_4c2
    if-ltz v8, :cond_583

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_4c2

    .line 1430
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_4f1
    :try_start_4f1
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown tag: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_510
    .catch Ljava/lang/NullPointerException; {:try_start_4f1 .. :try_end_510} :catch_64
    .catch Ljava/lang/NumberFormatException; {:try_start_4f1 .. :try_end_510} :catch_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f1 .. :try_end_510} :catch_23b
    .catch Ljava/io/FileNotFoundException; {:try_start_4f1 .. :try_end_510} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_4f1 .. :try_end_510} :catch_482
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4f1 .. :try_end_510} :catch_512
    .catchall {:try_start_4f1 .. :try_end_510} :catchall_6d2

    goto/16 :goto_db

    .line 1448
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_512
    move-exception v6

    move-object/from16 v15, v16

    .line 1449
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_515
    const/4 v14, 0x0

    .line 1450
    :try_start_516
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53c
    .catchall {:try_start_516 .. :try_end_53c} :catchall_647

    .line 1452
    if-nez v14, :cond_583

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_583

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_552
    if-ltz v8, :cond_583

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_552

    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_581
    move-object/from16 v15, v16

    .line 1461
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :cond_583
    if-eqz v15, :cond_588

    .line 1462
    :try_start_585
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_588
    .catch Ljava/io/IOException; {:try_start_585 .. :try_end_588} :catch_644

    .line 1472
    :cond_588
    :goto_588
    new-instance v19, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1473
    .local v19, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_62d

    .line 1474
    const-string v20, "DevicePolicyManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Active password quality 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not match actual quality 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "persona"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PersonaManager;

    .line 1480
    .local v13, "persona":Landroid/os/PersonaManager;
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v20

    if-nez v20, :cond_62d

    .line 1482
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1483
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1484
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1485
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1486
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1487
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1488
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1489
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1493
    .end local v13    # "persona":Landroid/os/PersonaManager;
    :cond_62d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1494
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1495
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1497
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1500
    return v14

    .line 1452
    .end local v19    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_640
    throw v20

    .line 1338
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :catch_641
    move-exception v20

    goto/16 :goto_47

    .line 1464
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_644
    move-exception v20

    goto/16 :goto_588

    .line 1452
    :catchall_647
    move-exception v20

    :goto_648
    if-nez v14, :cond_640

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v21, v0

    if-nez v21, :cond_640

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v8, v21, -0x1

    .restart local v8    # "i":I
    :goto_65e
    if-ltz v8, :cond_640

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_65e

    .line 1452
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_68d
    if-nez v14, :cond_581

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_581

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    .restart local v8    # "i":I
    :goto_6a3
    if-ltz v8, :cond_581

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1455
    .restart local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_6a3

    .line 1452
    .end local v4    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    :catchall_6d2
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_648

    .line 1448
    :catch_6d7
    move-exception v6

    goto/16 :goto_515

    .line 1445
    :catch_6da
    move-exception v6

    goto/16 :goto_485

    .line 1443
    :catch_6dd
    move-exception v20

    goto/16 :goto_2e4

    .line 1440
    :catch_6e0
    move-exception v6

    goto/16 :goto_23e

    .line 1437
    :catch_6e3
    move-exception v6

    goto/16 :goto_198

    .line 1434
    :catch_6e6
    move-exception v6

    goto/16 :goto_67
.end method

.method private lockNowUnchecked()V
    .registers 7

    .prologue
    .line 2685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2688
    .local v0, "ident":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JI)V

    .line 2691
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_21
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 2694
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2696
    return-void

    .line 2694
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2692
    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userHandle"    # I

    .prologue
    .line 1196
    if-nez p0, :cond_27

    const-string v0, "/data/system/device_policies.xml"

    .line 1200
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

    .line 1196
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

.method private manageMonitoringCertificateNotification(Landroid/content/Intent;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1611
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    .line 1613
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v8

    .line 1614
    .local v8, "hasCert":Z
    if-nez v8, :cond_43

    .line 1615
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 1616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1617
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1618
    .local v16, "user":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10401a5

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2b

    .line 1624
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ef

    const/4 v10, 0x1

    .line 1627
    .local v10, "isManaged":Z
    :goto_4a
    if-eqz v10, :cond_f2

    .line 1628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10401a7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1630
    .local v7, "contentText":Ljava/lang/String;
    const v14, 0x10807dd

    .line 1636
    .local v14, "smallIconId":I
    :goto_64
    new-instance v3, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1638
    const-string v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1644
    .local v13, "notifyIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10401a5

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 1655
    .local v11, "noti":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 1656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1657
    .restart local v15    # "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_d7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1658
    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10401a5

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_d7

    .line 1624
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "isManaged":Z
    .end local v11    # "noti":Landroid/app/Notification;
    .end local v13    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v14    # "smallIconId":I
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_ef
    const/4 v10, 0x0

    goto/16 :goto_4a

    .line 1632
    .restart local v10    # "isManaged":Z
    :cond_f2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10401a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1633
    .restart local v7    # "contentText":Ljava/lang/String;
    const v14, 0x108008a

    .restart local v14    # "smallIconId":I
    goto/16 :goto_64

    .line 1662
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v11    # "noti":Landroid/app/Notification;
    .restart local v13    # "notifyIntent":Landroid/app/PendingIntent;
    :cond_102
    const/4 v1, 0x0

    const v2, 0x10401a5

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1665
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v10    # "isManaged":Z
    .end local v11    # "noti":Landroid/app/Notification;
    .end local v13    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v14    # "smallIconId":I
    :cond_10b
    return-void
.end method

.method private static moveFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 5091
    const/4 v3, 0x1

    .line 5093
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

    .line 5098
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

    .line 5104
    .local v1, "base_target":Ljava/lang/String;
    :goto_2b
    :try_start_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5105
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5107
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 5108
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 5109
    :cond_44
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_47} :catch_64

    .line 5117
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    :cond_47
    :goto_47
    return v3

    .line 5093
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

    .line 5098
    .restart local v0    # "base_source":Ljava/lang/String;
    :cond_56
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 5111
    .restart local v1    # "base_target":Ljava/lang/String;
    :catch_64
    move-exception v2

    .line 5112
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 5113
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "moveFile() : Cannot move file"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5114
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2737
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2738
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private removePackageFromHarmonyEAS(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 5068
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 5070
    :try_start_3
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/IHarmonyEAS;->removeInstallationPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    .line 5073
    :goto_9
    return-void

    .line 5071
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private resetAppPolicies(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 5061
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V

    .line 5062
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V

    .line 5063
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    .line 5064
    return-void
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 3240
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3241
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_21

    .line 3242
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3243
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_1e

    .line 3244
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1d
    return-void

    .line 3241
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3249
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_21
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3253
    if-nez p2, :cond_6

    .line 3254
    const-string p2, ""

    .line 3256
    :cond_6
    if-nez p1, :cond_a

    .line 3257
    const-string p1, ""

    .line 3260
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3261
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3262
    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 3263
    .local v1, "proxyPort":I
    array-length v4, v0

    if-le v4, v6, :cond_20

    .line 3265
    const/4 v4, 0x1

    :try_start_1a
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1f} :catch_66

    move-result v1

    .line 3268
    :cond_20
    :goto_20
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3270
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3272
    .local v3, "res":Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3273
    .local v2, "proxyProperties":Landroid/net/ProxyProperties;
    invoke-virtual {v2}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v4

    if-nez v4, :cond_54

    .line 3274
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    :goto_53
    return-void

    .line 3277
    :cond_54
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3278
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3279
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    .line 3266
    .end local v2    # "proxyProperties":Landroid/net/ProxyProperties;
    .end local v3    # "res":Landroid/content/ContentResolver;
    :catch_66
    move-exception v4

    goto :goto_20
.end method

.method private saveSettingsLocked(IZ)V
    .registers 17
    .param p1, "userHandle"    # I
    .param p2, "isNotiFromLockScreen"    # Z

    .prologue
    .line 1204
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1205
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 1206
    .local v4, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 1208
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_166

    .line 1209
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1210
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v10, "utf-8"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1211
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1213
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1216
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v0, :cond_62

    .line 1217
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1218
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_5f

    .line 1219
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    const/4 v10, 0x0

    const-string v11, "name"

    iget-object v12, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    invoke-virtual {v1, v6}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1222
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1216
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1226
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_62
    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v10, :cond_7f

    .line 1227
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1228
    const/4 v10, 0x0

    const-string/jumbo v11, "value"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1232
    :cond_7f
    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v10, :cond_9c

    .line 1233
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1234
    const/4 v10, 0x0

    const-string/jumbo v11, "value"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1235
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1238
    :cond_9c
    if-nez p1, :cond_ae

    .line 1239
    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v5

    .line 1240
    .local v5, "maxFailedAllowed":I
    const/4 v10, 0x0

    const-string v11, "security.ode.maxattempts"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1243
    .end local v5    # "maxFailedAllowed":I
    :cond_ae
    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v10, :cond_d2

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v10, :cond_d2

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v10, :cond_d2

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v10, :cond_d2

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v10, :cond_d2

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v10, :cond_d2

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v10, :cond_d2

    iget v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-nez v10, :cond_d2

    iget-boolean v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    if-eqz v10, :cond_14c

    .line 1251
    :cond_d2
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1252
    const/4 v10, 0x0

    const-string v11, "quality"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1253
    const/4 v10, 0x0

    const-string v11, "length"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1254
    const/4 v10, 0x0

    const-string/jumbo v11, "uppercase"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    const/4 v10, 0x0

    const-string v11, "lowercase"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    const/4 v10, 0x0

    const-string v11, "letters"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const/4 v10, 0x0

    const-string v11, "numeric"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    const/4 v10, 0x0

    const-string/jumbo v11, "symbols"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const/4 v10, 0x0

    const-string v11, "nonletter"

    iget v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    const/4 v10, 0x0

    const-string v11, "recoverable"

    iget-boolean v12, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    :cond_14c
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1269
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1271
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1272
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1274
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1275
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 1276
    invoke-direct/range {p0 .. p2}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(IZ)V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_164} :catch_172

    move-object v8, v9

    .line 1287
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_165
    return-void

    .line 1277
    :catch_166
    move-exception v2

    .line 1279
    .local v2, "e":Ljava/io/IOException;
    :goto_167
    if-eqz v8, :cond_16c

    .line 1280
    :try_start_169
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_170

    .line 1285
    :cond_16c
    :goto_16c
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_165

    .line 1282
    :catch_170
    move-exception v10

    goto :goto_16c

    .line 1277
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_172
    move-exception v2

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_167
.end method

.method private sendChangedNotification(IZ)V
    .registers 9
    .param p1, "userHandle"    # I
    .param p2, "isNotiFromLockScreen"    # Z

    .prologue
    .line 1294
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v3, :cond_5

    .line 1314
    :goto_4
    return-void

    .line 1298
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1302
    const-string/jumbo v3, "userhandle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1305
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendChangedNotification : isNotiFromLockScreen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    if-eqz p2, :cond_36

    .line 1307
    const-string v3, "isNotiFromLockScreen"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1308
    :cond_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1310
    .local v0, "ident":J
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_43

    .line 1312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_43
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEncryptionRequested(Z)V
    .registers 2
    .param p1, "encrypt"    # Z

    .prologue
    .line 3412
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 3093
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3094
    .local v5, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3095
    .local v0, "N":I
    if-lez v0, :cond_39

    .line 3096
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_35

    .line 3097
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3098
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 3099
    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 3100
    .local v6, "timeout":J
    cmp-long v10, v6, v8

    if-lez v10, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v6, v10

    .line 3101
    .local v2, "expiration":J
    :goto_2e
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 3096
    .end local v2    # "expiration":J
    .end local v6    # "timeout":J
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .restart local v6    # "timeout":J
    :cond_33
    move-wide v2, v8

    .line 3100
    goto :goto_2e

    .line 3104
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "timeout":J
    :cond_35
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3106
    .end local v4    # "i":I
    :cond_39
    return-void
.end method

.method static validateQualityConstant(I)V
    .registers 4
    .param p0, "quality"    # I

    .prologue
    .line 1504
    sparse-switch p0, :sswitch_data_22

    .line 1517
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

    .line 1515
    :sswitch_20
    return-void

    .line 1504
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_20
        0x8000 -> :sswitch_20
        0x9000 -> :sswitch_20
        0x10000 -> :sswitch_20
        0x20000 -> :sswitch_20
        0x40000 -> :sswitch_20
        0x41000 -> :sswitch_20
        0x50000 -> :sswitch_20
        0x60000 -> :sswitch_20
        0x90000 -> :sswitch_20
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 2931
    if-nez p2, :cond_6

    .line 2932
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    .line 2960
    :goto_5
    return-void

    .line 2934
    :cond_6
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2935
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$4;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method private wipeDeviceOrUserLocked(IILcom/android/server/DevicePolicyManagerService$ActiveAdmin;)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I
    .param p3, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .prologue
    .line 2964
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Overloaded wipeDeviceOrUserLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    if-nez p2, :cond_63

    .line 2970
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

    .line 2972
    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.threelm.dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.anmane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.wipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2973
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLockedFor3LM(I)V

    .line 3003
    :goto_5e
    return-void

    .line 2975
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    goto :goto_5e

    .line 2977
    :cond_63
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2978
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$5;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$5;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e
.end method


# virtual methods
.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4326
    monitor-enter p0

    .line 4327
    if-nez p1, :cond_e

    .line 4328
    :try_start_3
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4342
    :catchall_b
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v5

    .line 4330
    :cond_e
    const/16 v5, 0xa

    :try_start_10
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4333
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_b

    move-result-wide v1

    .line 4335
    .local v1, "ident":J
    :try_start_18
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4336
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 4338
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    move-result v5

    .line 4340
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4338
    monitor-exit p0

    return v5

    .line 4340
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
    .line 5077
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

    .line 5082
    .local v0, "base_target":Ljava/lang/String;
    :goto_15
    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5083
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5084
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_32

    .line 5088
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_23
    :goto_23
    return-void

    .line 5077
    .end local v0    # "base_target":Ljava/lang/String;
    :cond_24
    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 5085
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
    .line 4631
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4633
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v14, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4634
    if-eqz p1, :cond_44

    .line 4637
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4638
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 4639
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4640
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4641
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_36
    .catchall {:try_start_b .. :try_end_26} :catchall_41

    move-result v3

    if-nez v3, :cond_32

    .line 4644
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

    .line 4650
    :cond_32
    :goto_32
    :try_start_32
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_41

    goto :goto_17

    .line 4652
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "s":Ljava/lang/String;
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_36
    move-exception v9

    .line 4653
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_37
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4676
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    monitor-exit v14
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_41

    .line 4677
    return-void

    .line 4645
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_3c
    move-exception v9

    .line 4646
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3d
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_36
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_32

    .line 4676
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

    .line 4657
    :cond_44
    :try_start_44
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4658
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4659
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v3, :cond_3a

    .line 4660
    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 4662
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

    .line 4665
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

    .line 4666
    :catch_74
    move-exception v9

    .line 4667
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_75
    invoke-direct {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_41

    goto :goto_5d

    .line 4672
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "app":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_79
    move-exception v9

    .line 4673
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
    .line 3629
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_33

    .line 3632
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

    .line 3661
    :goto_32
    return-void

    .line 3638
    :cond_33
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3640
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 3641
    :try_start_39
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3643
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3644
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_45
    if-ge v5, v6, :cond_b3

    .line 3645
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3646
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

    .line 3647
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3648
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_76
    if-ge v2, v0, :cond_a1

    .line 3649
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3650
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_9e

    .line 3651
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3652
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3648
    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 3657
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_a1
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 3644
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 3660
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
    .line 4815
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    .line 4817
    .local v8, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$800(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 4819
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4821
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :goto_10
    :try_start_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4822
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_2f

    .line 4825
    .local v1, "s":Ljava/lang/String;
    :try_start_1c
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 4826
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2b} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2f

    .line 4831
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_10

    .line 4833
    .end local v1    # "s":Ljava/lang/String;
    :catch_2f
    move-exception v6

    .line 4834
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4836
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_33
    return-void

    .line 4828
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

    .line 4680
    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4682
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4683
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v2, :cond_51

    .line 4685
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4687
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 4689
    .local v10, "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowUnsignedApp(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_56

    .line 4690
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 4691
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

    .line 4693
    .local v1, "unknown":Ljava/lang/String;
    :try_start_39
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2d

    .line 4694
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

    .line 4696
    :catch_48
    move-exception v8

    .line 4697
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_49
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_7b

    goto :goto_2d

    .line 4714
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "unknown":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4d
    move-exception v8

    .line 4715
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4e
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4717
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_51
    monitor-exit v12
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_7b

    .line 4718
    return-void

    .line 4700
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_53
    :try_start_53
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4702
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

    .line 4705
    .local v3, "app":Ljava/lang/String;
    :try_start_66
    invoke-interface {v0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_5a

    .line 4706
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

    .line 4708
    :catch_76
    move-exception v8

    .line 4709
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_77
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_4d
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_5a

    .line 4717
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
    .registers 14
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 1147
    iget-boolean v7, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_7

    move-object v7, v8

    .line 1191
    :goto_6
    return-object v7

    .line 1150
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1151
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1152
    .local v6, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1153
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v9, 0x8080

    invoke-virtual {v7, v6, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1157
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_b9

    .line 1161
    :cond_27
    :try_start_27
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1162
    .local v4, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1163
    .local v3, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_46} :catch_9c

    move-result v7

    if-eqz v7, :cond_33

    .line 1165
    :try_start_49
    new-instance v7, Landroid/app/admin/DeviceAdminInfo;

    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_9c

    goto :goto_6

    .line 1166
    :catch_51
    move-exception v0

    .line 1167
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_52
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1169
    goto :goto_6

    .line 1170
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_76
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_99} :catch_9c

    move-object v7, v8

    .line 1173
    goto/16 :goto_6

    .line 1177
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_9c
    move-exception v5

    .line 1178
    .local v5, "re":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1181
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_a0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown admin: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1185
    :cond_b9
    :try_start_b9
    new-instance v9, Landroid/app/admin/DeviceAdminInfo;

    iget-object v10, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v10, v7}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_c7} :catch_ca
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c7} :catch_f0

    move-object v7, v9

    goto/16 :goto_6

    .line 1186
    :catch_ca
    move-exception v0

    .line 1187
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1188
    goto/16 :goto_6

    .line 1189
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_f0
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1191
    goto/16 :goto_6
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 967
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 969
    .local v1, "userHandle":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    return-object v2
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3e8

    .line 976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 978
    .local v2, "callingUid":I
    if-eq v2, v6, :cond_c

    .line 979
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 983
    :cond_c
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 984
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_d2

    .line 985
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 986
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_35

    .line 987
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 991
    :cond_35
    if-ne v2, v6, :cond_6e

    .line 992
    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 993
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not specify uses-policy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1001
    :cond_6e
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v5

    if-eq v5, v2, :cond_9b

    .line 1002
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1005
    :cond_9b
    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 1006
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not specify uses-policy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1012
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_d2
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1013
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d9
    if-ge v3, v0, :cond_ff

    .line 1014
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1016
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v2, v6, :cond_ee

    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 1019
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_ed
    return-object v1

    .line 1018
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_ee
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v5

    if-ne v5, v2, :cond_fc

    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 1013
    :cond_fc
    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    .line 1023
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_ff
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active admin owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for policy #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 954
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 955
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

    .line 960
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
    .line 1743
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_7

    .line 1744
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1758
    :goto_6
    return-object v3

    .line 1747
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1748
    monitor-enter p0

    .line 1749
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1750
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1751
    .local v0, "N":I
    if-gtz v0, :cond_1d

    .line 1752
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_6

    .line 1759
    .end local v0    # "N":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1a
    move-exception v4

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v4

    .line 1754
    .restart local v0    # "N":I
    .restart local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1755
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_39

    .line 1756
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1758
    :cond_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_1a

    goto :goto_6
.end method

.method public getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4527
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4529
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4530
    .local v3, "allowList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 4531
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 4532
    :try_start_b
    iget-object v7, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4533
    .local v0, "N":I
    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4535
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    const/4 v7, 0x1

    if-le v0, v7, :cond_17

    .line 4536
    const/4 v5, 0x1

    .line 4538
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

    .line 4539
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

    .line 4541
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

    .line 4539
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_49
    :try_start_49
    const-string v7, ""

    goto :goto_3a

    .line 4541
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    .line 4542
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x2

    .line 4192
    monitor-enter p0

    .line 4193
    const/4 v8, 0x2

    .line 4194
    .local v8, "value":I
    const/4 v9, 0x2

    .line 4196
    .local v9, "value_root":I
    if-eqz p1, :cond_12

    .line 4197
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4198
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :goto_e
    monitor-exit p0

    .line 4225
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 4198
    goto :goto_e

    .line 4201
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 4202
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4203
    .local v1, "N_ROOT":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v1, :cond_2f

    .line 4204
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4205
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 4206
    iget v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 4203
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 4210
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-eq v9, v11, :cond_4c

    .line 4211
    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value_root retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 4215
    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4216
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4217
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_57
    if-ge v4, v0, :cond_68

    .line 4218
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4219
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_65

    .line 4220
    iget v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 4217
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 4224
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_68
    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 4226
    .end local v0    # "N":I
    .end local v1    # "N_ROOT":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_83
    move-exception v10

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_6 .. :try_end_85} :catchall_83

    throw v10
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4095
    monitor-enter p0

    .line 4096
    const/4 v4, 0x1

    .line 4098
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 4099
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4100
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :goto_c
    monitor-exit p0

    .line 4111
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 4100
    goto :goto_c

    .line 4103
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4104
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4105
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 4106
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4107
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 4108
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 4105
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4111
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 4112
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
    .line 3930
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
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 4250
    monitor-enter p0

    .line 4251
    const/4 v8, 0x1

    .line 4252
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 4254
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 4255
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4256
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :goto_e
    monitor-exit p0

    .line 4279
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 4256
    goto :goto_e

    .line 4259
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 4260
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4261
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 4262
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4263
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 4264
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 4261
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 4268
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 4269
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 4271
    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4272
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4273
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 4274
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4275
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 4276
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 4273
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 4279
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 4280
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 4137
    monitor-enter p0

    .line 4138
    const/4 v8, 0x1

    .line 4139
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 4141
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 4142
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4143
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :goto_e
    monitor-exit p0

    .line 4166
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 4143
    goto :goto_e

    .line 4146
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 4147
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4148
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 4149
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4150
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 4151
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 4148
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 4155
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 4156
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 4158
    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4159
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4160
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 4161
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4162
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 4163
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 4160
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 4166
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 4167
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4305
    monitor-enter p0

    .line 4306
    const/4 v4, 0x1

    .line 4308
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 4309
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4310
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :goto_c
    monitor-exit p0

    .line 4321
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 4310
    goto :goto_c

    .line 4313
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4314
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4315
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 4316
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4317
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 4318
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 4315
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4321
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 4322
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
    .line 4053
    monitor-enter p0

    .line 4054
    const/4 v4, 0x1

    .line 4056
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 4057
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4058
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :goto_c
    monitor-exit p0

    .line 4069
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 4058
    goto :goto_c

    .line 4061
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4062
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4063
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 4064
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4065
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 4066
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 4063
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4069
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 4070
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
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 3849
    monitor-enter p0

    .line 3850
    const/4 v8, 0x1

    .line 3851
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 3853
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 3854
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 3855
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :goto_e
    monitor-exit p0

    .line 3878
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 3855
    goto :goto_e

    .line 3858
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3859
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3860
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 3861
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3862
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 3863
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3860
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 3867
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 3868
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 3870
    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3871
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3872
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 3873
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3874
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 3875
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3872
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 3878
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 3879
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4011
    monitor-enter p0

    .line 4012
    const/4 v4, 0x1

    .line 4014
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 4015
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4016
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :goto_c
    monitor-exit p0

    .line 4027
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 4016
    goto :goto_c

    .line 4019
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4020
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4021
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 4022
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4023
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 4024
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 4021
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4027
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 4028
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
    .line 4926
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4928
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4930
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 4931
    const/4 v4, 0x1

    .line 4932
    .local v4, "value":Z
    if-eqz p1, :cond_16

    .line 4933
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4934
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    :goto_12
    monitor-exit p0

    .line 4942
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_13
    return v5

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    move v5, v4

    .line 4934
    goto :goto_12

    .line 4937
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

    .line 4938
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 4939
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    goto :goto_1a

    .line 4942
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    .line 4943
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
    .line 4978
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4979
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4981
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 4982
    const/4 v4, 0x1

    .line 4984
    .local v4, "value":Z
    if-eqz p1, :cond_16

    .line 4985
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4986
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    :goto_12
    monitor-exit p0

    .line 4994
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_13
    return v5

    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    move v5, v4

    .line 4986
    goto :goto_12

    .line 4989
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

    .line 4990
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 4991
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    goto :goto_1a

    .line 4994
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    .line 4995
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getAllowWifi(Landroid/content/ComponentName;I)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 3955
    monitor-enter p0

    .line 3956
    const/4 v8, 0x1

    .line 3957
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 3959
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 3960
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 3961
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :goto_e
    monitor-exit p0

    .line 3985
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 3961
    goto :goto_e

    .line 3965
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3966
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3967
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 3968
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3969
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 3970
    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3967
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 3974
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 3975
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 3977
    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3978
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3979
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 3980
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3981
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 3982
    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3979
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 3985
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 3986
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4722
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4724
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 4726
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4727
    .local v3, "blockList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 4728
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 4729
    :try_start_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4730
    .local v0, "N":I
    const/4 v7, 0x1

    if-le v0, v7, :cond_15

    .line 4731
    const/4 v5, 0x1

    .line 4733
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

    .line 4734
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

    .line 4736
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_44
    move-exception v7

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_44

    throw v7

    .line 4734
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_47
    :try_start_47
    const-string v7, ""

    goto :goto_38

    .line 4736
    .end local v1    # "a":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_44

    .line 4737
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3447
    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v10, :cond_7

    .line 3474
    :goto_6
    return v8

    .line 3450
    :cond_7
    monitor-enter p0

    .line 3451
    if-eqz p1, :cond_17

    .line 3452
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 3453
    .local v2, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_12

    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_12
    monitor-exit p0

    goto :goto_6

    .line 3475
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_14
    move-exception v8

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v8

    .line 3456
    :cond_17
    const/4 v10, 0x0

    :try_start_18
    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3457
    .local v7, "policy_root":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3458
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_23
    if-ge v5, v0, :cond_37

    .line 3459
    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3460
    .local v3, "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v10, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_34

    .line 3461
    monitor-exit p0

    move v8, v9

    goto :goto_6

    .line 3458
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 3465
    .end local v3    # "admin_root":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_37
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3467
    .local v6, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3468
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    if-ge v4, v1, :cond_56

    .line 3469
    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3470
    .restart local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_53

    .line 3471
    monitor-exit p0

    move v8, v9

    goto :goto_6

    .line 3468
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 3474
    .end local v2    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_14

    goto :goto_6
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 2381
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2382
    monitor-enter p0

    .line 2389
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    .line 2390
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3563
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    .line 3571
    :goto_5
    return-object v0

    .line 3566
    :cond_6
    monitor-enter p0

    .line 3567
    :try_start_7
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_16

    .line 3568
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    .line 3570
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    goto :goto_5
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3576
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    .line 3585
    :goto_5
    return-object v0

    .line 3579
    :cond_6
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    monitor-enter p0

    .line 3581
    :try_start_e
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1d

    .line 3582
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    .line 3584
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    goto :goto_5
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3217
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 3236
    :goto_5
    return-object v4

    .line 3220
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3221
    monitor-enter p0

    .line 3222
    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3225
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3226
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_32

    .line 3227
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3228
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_2f

    .line 3231
    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_5

    .line 3234
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v4

    .line 3226
    .restart local v0    # "N":I
    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 3234
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2c

    goto :goto_5
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3505
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 3523
    :goto_5
    return v4

    .line 3508
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3509
    monitor-enter p0

    .line 3510
    if-eqz p1, :cond_19

    .line 3511
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3512
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_14

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_14
    monitor-exit p0

    goto :goto_5

    .line 3524
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_16
    move-exception v5

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v5

    .line 3516
    :cond_19
    :try_start_19
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3517
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3518
    .local v0, "N":I
    const/4 v4, 0x0

    .line 3519
    .local v4, "which":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_35

    .line 3520
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3521
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 3519
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 3523
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_16

    goto :goto_5
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2415
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 2416
    const/4 v2, 0x0

    .line 2438
    :goto_5
    return v2

    .line 2418
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2419
    monitor-enter p0

    .line 2420
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2421
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v2, 0x0

    .line 2423
    .local v2, "count":I
    if-eqz p1, :cond_1e

    .line 2424
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2425
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_19

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .end local v2    # "count":I
    :cond_19
    monitor-exit p0

    goto :goto_5

    .line 2439
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1b
    move-exception v5

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v5

    .line 2428
    .restart local v2    # "count":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1e
    :try_start_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2429
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v0, :cond_41

    .line 2430
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2431
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v2, :cond_36

    .line 2432
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2429
    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2433
    :cond_36
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v5, :cond_33

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v5, :cond_33

    .line 2435
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_33

    .line 2438
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_1b

    goto :goto_5
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2644
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_8

    move-wide v4, v6

    .line 2667
    :goto_7
    return-wide v4

    .line 2647
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2648
    monitor-enter p0

    .line 2649
    const-wide/16 v4, 0x0

    .line 2651
    .local v4, "time":J
    if-eqz p1, :cond_1d

    .line 2652
    :try_start_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2653
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1b

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_18
    monitor-exit p0

    move-wide v4, v6

    goto :goto_7

    :cond_1b
    move-wide v6, v4

    goto :goto_18

    .line 2656
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2657
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2658
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v0, :cond_4a

    .line 2659
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2660
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-nez v8, :cond_3b

    .line 2661
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2658
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2662
    :cond_3b
    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_38

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_38

    .line 2664
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_38

    .line 2667
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4a
    monitor-exit p0

    goto :goto_7

    .line 2668
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_4c
    move-exception v6

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_10 .. :try_end_4e} :catchall_4c

    throw v6
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5142
    const-string v0, ""

    return-object v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2057
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_7

    .line 2058
    const-wide/16 v0, 0x0

    .line 2062
    :goto_6
    return-wide v0

    .line 2060
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2061
    monitor-enter p0

    .line 2062
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_6

    .line 2063
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2009
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_8

    move-wide v4, v6

    .line 2029
    :goto_7
    return-wide v4

    .line 2012
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2013
    monitor-enter p0

    .line 2014
    if-eqz p1, :cond_1d

    .line 2015
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2016
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1b

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_16
    monitor-exit p0

    goto :goto_7

    .line 2030
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_18
    move-exception v6

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v6

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1b
    move-wide v4, v6

    .line 2016
    goto :goto_16

    .line 2019
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1d
    const-wide/16 v4, 0x0

    .line 2020
    .local v4, "timeout":J
    :try_start_1f
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2021
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2022
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v0, :cond_49

    .line 2023
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2024
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_44

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_46

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_46

    .line 2026
    :cond_44
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2022
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 2029
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_18

    goto :goto_7
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1949
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 1950
    const/4 v3, 0x0

    .line 1969
    :goto_5
    return v3

    .line 1952
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1953
    monitor-enter p0

    .line 1954
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1955
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1957
    .local v3, "length":I
    if-eqz p1, :cond_1e

    .line 1958
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1959
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_19

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .end local v3    # "length":I
    :cond_19
    monitor-exit p0

    goto :goto_5

    .line 1970
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1b
    move-exception v5

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v5

    .line 1962
    .restart local v3    # "length":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1e
    :try_start_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1963
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 1964
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1965
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v5, :cond_35

    .line 1966
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1963
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1969
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    goto :goto_5
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1904
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 1905
    const/4 v3, 0x0

    .line 1924
    :goto_5
    return v3

    .line 1907
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1908
    monitor-enter p0

    .line 1909
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1910
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1912
    .local v3, "length":I
    if-eqz p1, :cond_1e

    .line 1913
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1914
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_19

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .end local v3    # "length":I
    :cond_19
    monitor-exit p0

    goto :goto_5

    .line 1925
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1b
    move-exception v5

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v5

    .line 1917
    .restart local v3    # "length":I
    .restart local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1e
    :try_start_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1918
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 1919
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1920
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v5, :cond_35

    .line 1921
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1918
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1924
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    goto :goto_5
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2174
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 2175
    const/4 v3, 0x0

    .line 2194
    :goto_5
    return v3

    .line 2177
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2178
    monitor-enter p0

    .line 2179
    const/4 v3, 0x0

    .line 2181
    .local v3, "length":I
    if-eqz p1, :cond_1a

    .line 2182
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2183
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    .line 2186
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2187
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2188
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 2189
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2190
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v5, :cond_35

    .line 2191
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2188
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2194
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0

    goto :goto_5

    .line 2195
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2129
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 2130
    const/4 v3, 0x0

    .line 2149
    :goto_5
    return v3

    .line 2132
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2133
    monitor-enter p0

    .line 2134
    const/4 v3, 0x0

    .line 2136
    .local v3, "length":I
    if-eqz p1, :cond_1a

    .line 2137
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2138
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    .line 2141
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2142
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2143
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 2144
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2145
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v5, :cond_35

    .line 2146
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2143
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2149
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0

    goto :goto_5

    .line 2150
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2309
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 2310
    const/4 v3, 0x0

    .line 2329
    :goto_5
    return v3

    .line 2312
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2313
    monitor-enter p0

    .line 2314
    const/4 v3, 0x0

    .line 2316
    .local v3, "length":I
    if-eqz p1, :cond_1a

    .line 2317
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2318
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    .line 2321
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2322
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2323
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 2324
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2325
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v5, :cond_35

    .line 2326
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2323
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2329
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0

    goto :goto_5

    .line 2330
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2219
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 2220
    const/4 v3, 0x0

    .line 2239
    :goto_5
    return v3

    .line 2222
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2223
    monitor-enter p0

    .line 2224
    const/4 v3, 0x0

    .line 2226
    .local v3, "length":I
    if-eqz p1, :cond_1a

    .line 2227
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2228
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    .line 2231
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2232
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2233
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 2234
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2235
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v5, :cond_35

    .line 2236
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2233
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2239
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0

    goto :goto_5

    .line 2240
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2264
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 2265
    const/4 v3, 0x0

    .line 2284
    :goto_5
    return v3

    .line 2267
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2268
    monitor-enter p0

    .line 2269
    const/4 v3, 0x0

    .line 2271
    .local v3, "length":I
    if-eqz p1, :cond_1a

    .line 2272
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2273
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    .line 2276
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2277
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2278
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 2279
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2280
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v5, :cond_35

    .line 2281
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2278
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2284
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0

    goto :goto_5

    .line 2285
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2087
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 2088
    const/4 v3, 0x0

    .line 2107
    :goto_5
    return v3

    .line 2090
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2091
    monitor-enter p0

    .line 2092
    const/4 v3, 0x0

    .line 2094
    .local v3, "length":I
    if-eqz p1, :cond_1a

    .line 2095
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2096
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    .line 2099
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2100
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2101
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 2102
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2103
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v5, :cond_35

    .line 2104
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2101
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2107
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0

    goto :goto_5

    .line 2108
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1858
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 1859
    const/4 v3, 0x0

    .line 1879
    :goto_5
    return v3

    .line 1861
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1862
    monitor-enter p0

    .line 1863
    const/4 v3, 0x0

    .line 1864
    .local v3, "mode":I
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1866
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_1e

    .line 1867
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1868
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1c

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_19
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_1c
    move v5, v3

    goto :goto_19

    .line 1871
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1872
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_38

    .line 1873
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1874
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v5, :cond_35

    .line 1875
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1872
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1879
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_38
    monitor-exit p0

    goto :goto_5

    .line 1880
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3807
    monitor-enter p0

    .line 3808
    const/4 v4, 0x0

    .line 3810
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3811
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3812
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :goto_c
    monitor-exit p0

    .line 3823
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3812
    goto :goto_c

    .line 3815
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3816
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3817
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2c

    .line 3818
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3819
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_29

    .line 3820
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 3817
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3823
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3824
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

.method public getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 5349
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_6

    .line 5373
    :goto_5
    return-object v3

    .line 5352
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5353
    const/4 v1, 0x0

    .line 5355
    .local v1, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 5356
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_20

    .line 5357
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 5358
    if-nez v1, :cond_28

    .line 5359
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Can\'t get mount interface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5363
    :cond_20
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Can\'t get mount service"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5368
    :cond_28
    :try_start_28
    invoke-interface {v1, p2}, Landroid/os/storage/IMountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2d

    move-result-object v3

    goto :goto_5

    .line 5369
    :catch_2d
    move-exception v0

    .line 5370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .registers 14
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3007
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_6

    .line 3036
    :goto_5
    return-void

    .line 3010
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3011
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    monitor-enter p0

    .line 3015
    :try_start_11
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1d

    move-result-object v9

    .line 3016
    .local v9, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_20

    .line 3018
    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_46
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    .line 3021
    :goto_1b
    :try_start_1b
    monitor-exit p0

    goto :goto_5

    .line 3035
    .end local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 3023
    .restart local v9    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_20
    :try_start_20
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3024
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, v9, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3025
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$6;

    invoke-direct {v4, p0, p2}, Lcom/android/server/DevicePolicyManagerService$6;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3035
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_1d

    goto :goto_5

    .line 3019
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_46
    move-exception v0

    goto :goto_1b
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 4424
    monitor-enter p0

    .line 4425
    const/4 v4, 0x0

    .line 4427
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 4428
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4429
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :goto_c
    monitor-exit p0

    .line 4440
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 4429
    goto :goto_c

    .line 4432
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4433
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4434
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2c

    .line 4435
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 4436
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_29

    .line 4437
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 4434
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4440
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 4441
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

.method public getSamsungEncryptionStatus(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 5189
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_6

    .line 5210
    :cond_5
    :goto_5
    return v2

    .line 5193
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5194
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 5195
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v1

    .line 5197
    .local v1, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v1, :cond_1b

    .line 5198
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v1    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 5201
    .restart local v1    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1b
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v3

    if-nez v3, :cond_5

    .line 5203
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_39

    const/4 v3, 0x2

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v3, v4, :cond_5

    .line 5207
    :cond_39
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;I)I
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 5221
    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v10, :cond_8

    .line 5283
    :cond_7
    :goto_7
    return v7

    .line 5224
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5226
    const/4 v3, -0x1

    .line 5227
    .local v3, "internalStorage":I
    const/4 v2, -0x1

    .line 5228
    .local v2, "externalStorage":I
    const/4 v4, 0x0

    .line 5232
    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 5233
    .local v6, "service":Landroid/os/IBinder;
    if-eqz v6, :cond_24

    .line 5234
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 5235
    if-nez v4, :cond_2c

    .line 5236
    const-string v8, "DevicePolicyManagerService"

    const-string v9, "Can\'t get mount interface"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5240
    :cond_24
    const-string v8, "DevicePolicyManagerService"

    const-string v9, "Can\'t get mount service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5245
    :cond_2c
    :try_start_2c
    invoke-interface {v4}, Landroid/os/storage/IMountService;->isStorageFullyEncrypted()I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_53

    move-result v3

    .line 5252
    :goto_30
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v10, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 5253
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v5

    .line 5255
    .local v5, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v5, :cond_42

    .line 5256
    new-instance v5, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v5}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 5259
    .restart local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_42
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v10

    if-eqz v10, :cond_58

    .line 5260
    const/4 v2, -0x1

    .line 5271
    :goto_49
    if-eq v3, v7, :cond_7

    if-eq v2, v7, :cond_7

    .line 5273
    if-eq v3, v8, :cond_6e

    if-eq v2, v8, :cond_6e

    .line 5274
    const/4 v7, 0x0

    goto :goto_7

    .line 5246
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :catch_53
    move-exception v1

    .line 5247
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 5261
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_58
    iget v10, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v9, v10, :cond_5e

    .line 5262
    const/4 v2, 0x0

    goto :goto_49

    .line 5263
    :cond_5e
    const/4 v10, 0x5

    iget v11, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v10, v11, :cond_65

    .line 5264
    const/4 v2, 0x2

    goto :goto_49

    .line 5265
    :cond_65
    const/4 v10, 0x6

    iget v11, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v11, :cond_6c

    .line 5266
    const/4 v2, 0x2

    goto :goto_49

    .line 5268
    :cond_6c
    const/4 v2, 0x1

    goto :goto_49

    .line 5275
    :cond_6e
    if-ne v3, v8, :cond_74

    if-ne v2, v8, :cond_74

    move v7, v8

    .line 5276
    goto :goto_7

    .line 5277
    :cond_74
    if-ne v3, v8, :cond_7a

    if-eq v2, v8, :cond_7a

    .line 5278
    const/4 v7, 0x2

    goto :goto_7

    .line 5279
    :cond_7a
    if-eq v3, v8, :cond_7

    if-ne v2, v8, :cond_7

    move v7, v9

    .line 5280
    goto :goto_7
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3904
    monitor-enter p0

    .line 3905
    const/4 v4, 0x1

    .line 3907
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 3908
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3909
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    :goto_c
    monitor-exit p0

    .line 3920
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 3909
    goto :goto_c

    .line 3912
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3913
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3914
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 3915
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3916
    .restart local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 3917
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 3914
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3920
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 3921
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

    .line 3342
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_7

    move v4, v5

    .line 3363
    :goto_6
    return v4

    .line 3345
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3346
    monitor-enter p0

    .line 3348
    if-eqz p1, :cond_1c

    .line 3350
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3351
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1a

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_15
    monitor-exit p0

    goto :goto_6

    .line 3364
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_17
    move-exception v4

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v4

    .restart local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    move v4, v5

    .line 3351
    goto :goto_15

    .line 3356
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3357
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3358
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v0, :cond_3b

    .line 3359
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_38

    .line 3360
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_6

    .line 3358
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 3363
    :cond_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_17

    move v4, v5

    goto :goto_6
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 3371
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_4

    .line 3374
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3375
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 838
    monitor-enter p0

    .line 839
    :try_start_1
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 840
    .local v0, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_18

    .line 841
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 842
    .restart local v0    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 843
    invoke-direct {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    .line 845
    :cond_18
    monitor-exit p0

    return-object v0

    .line 846
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
    .line 4875
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4877
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4878
    .local v13, "unsignedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4880
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

    .line 4881
    if-eqz p1, :cond_6c

    .line 4882
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4883
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_68

    .line 4884
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4885
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4886
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :goto_34
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 4887
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_4f
    .catchall {:try_start_f .. :try_end_40} :catchall_a0

    .line 4891
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_42
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_4f
    .catchall {:try_start_42 .. :try_end_49} :catchall_a0

    goto :goto_34

    .line 4892
    :catch_4a
    move-exception v7

    .line 4893
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4b
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_a0

    goto :goto_34

    .line 4916
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_4f
    move-exception v7

    .line 4917
    .local v7, "e":Ljava/lang/Exception;
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

    .line 4919
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_68
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4922
    return-void

    .line 4898
    :cond_6c
    :try_start_6c
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 4900
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 4901
    .local v11, "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4902
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 4903
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8a} :catch_4f
    .catchall {:try_start_6c .. :try_end_8a} :catchall_a0

    .line 4906
    .restart local v2    # "pkgName":Ljava/lang/String;
    :try_start_8a
    move/from16 v0, p2

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9c

    .line 4907
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_9c} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9c} :catch_4f
    .catchall {:try_start_8a .. :try_end_9c} :catchall_a0

    .line 4913
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_4f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_7e

    .line 4919
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v11    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_a0
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4909
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v11    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_a5
    move-exception v7

    .line 4910
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a6
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_4f
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a0

    goto :goto_9c
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1728
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    .line 1729
    const/4 v1, 0x0

    .line 1737
    :goto_5
    return v1

    .line 1731
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1732
    monitor-enter p0

    .line 1733
    :try_start_a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1734
    .local v0, "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_2c

    .line 1735
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

    .line 1738
    .end local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v1

    .line 1737
    .restart local v0    # "administrator":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    :try_start_2c
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_5
.end method

.method initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 14
    .param p1, "userHandle"    # I
    .param p2, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 5008
    iget-object v1, p2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 5009
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;>;"
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v6

    .line 5010
    .local v6, "mAllowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$800(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 5013
    .local v7, "mBlockListRecordInRom":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 5014
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 5017
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 5020
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

    .line 5023
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

    .line 5025
    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5026
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_47} :catch_89

    .line 5029
    .local v2, "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_47
    :try_start_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    .line 5030
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

    .line 5032
    :catch_5f
    move-exception v3

    .line 5033
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_60
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5035
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_63
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5037
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5038
    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockListRecordInRom:Ljava/util/HashSet;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5041
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5042
    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_77} :catch_89

    move-result v9

    if-eqz v9, :cond_8d

    .line 5045
    :try_start_7a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_83} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_83} :catch_89

    goto :goto_74

    .line 5046
    :catch_84
    move-exception v3

    .line 5048
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_85
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_74

    .line 5054
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_89
    move-exception v3

    .line 5055
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5057
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_8d
    return-void
.end method

.method public installCaCert([B)Z
    .registers 13
    .param p1, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2704
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    const/4 v4, 0x0

    .line 2708
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_b
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 2709
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/security/cert/Certificate;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_18
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_18} :catch_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_37

    move-result-object v5

    .line 2718
    .local v5, "pemCert":[B
    :try_start_19
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_49

    move-result-object v4

    .line 2720
    :try_start_1f
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_41

    .line 2723
    if-eqz v4, :cond_2c

    .line 2724
    :try_start_28
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_49

    .line 2725
    const/4 v4, 0x0

    .line 2732
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "pemCert":[B
    :cond_2c
    :goto_2c
    return v6

    .line 2710
    :catch_2d
    move-exception v0

    .line 2711
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem converting cert"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2712
    goto :goto_2c

    .line 2713
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_37
    move-exception v3

    .line 2714
    .local v3, "ioe":Ljava/io/IOException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem reading cert"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2715
    goto :goto_2c

    .line 2723
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "pemCert":[B
    :catchall_41
    move-exception v6

    if-eqz v4, :cond_48

    .line 2724
    :try_start_44
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2725
    const/4 v4, 0x0

    .line 2723
    :cond_48
    throw v6
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_49} :catch_49

    .line 2728
    :catch_49
    move-exception v2

    .line 2729
    .local v2, "e1":Ljava/lang/InterruptedException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "installCaCertsToKeyChain(): "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2730
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    move v6, v7

    .line 2732
    goto :goto_2c
.end method

.method public isActivePasswordSufficient(I)Z
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2336
    .local v0, "ident":J
    :try_start_6
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_6d

    if-nez v6, :cond_e

    .line 2376
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2368
    :goto_d
    return v4

    .line 2339
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2340
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_6d

    .line 2341
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2345
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2348
    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_2d

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v7

    if-ge v6, v7, :cond_33

    .line 2350
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_6a

    .line 2376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    .line 2350
    goto :goto_d

    .line 2353
    :cond_33
    const/4 v6, 0x0

    :try_start_34
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 2354
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_58

    .line 2355
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2356
    .local v2, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isDevicePasswordSimple(I)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2357
    const-string v4, "DevicePolicyManagerService"

    const-string v6, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_6a

    .line 2376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    .line 2358
    goto :goto_d

    .line 2361
    .end local v2    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_58
    :try_start_58
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "isActivePasswordSufficient() : fail to get isDevicePasswordSimple() due to mContext == null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :cond_5f
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    const/high16 v7, 0x60000

    if-eq v6, v7, :cond_72

    .line 2366
    monitor-exit p0

    goto :goto_a

    .line 2374
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_6a
    move-exception v4

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 2376
    :catchall_6d
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2368
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_72
    :try_start_72
    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_ab

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_ab

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_ab

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_ab

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_ab

    iget v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v7

    if-lt v6, v7, :cond_ab

    :goto_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_72 .. :try_end_a9} :catchall_6a

    goto/16 :goto_a

    :cond_ab
    move v4, v5

    goto :goto_a8
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 1718
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    .line 1723
    :goto_5
    return v0

    .line 1721
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1722
    monitor-enter p0

    .line 1723
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    monitor-exit p0

    goto :goto_5

    .line 1724
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3552
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    .line 3556
    :goto_5
    return v0

    .line 3555
    :cond_6
    monitor-enter p0

    .line 3556
    :try_start_7
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    monitor-exit p0

    goto :goto_5

    .line 3558
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public isSupportTrustZoneForODE(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 5291
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_6

    .line 5304
    :cond_5
    :goto_5
    return v3

    .line 5294
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5296
    const-string v4, "ro.securestorage.support"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5297
    .local v2, "ssStatus":Ljava/lang/String;
    const-string v4, "ro.securestorage.knox"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5298
    .local v1, "ssKnoxStatus":Ljava/lang/String;
    const-string v4, "security.mdpp"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5300
    .local v0, "mdppStatus":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "Enabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "Ready"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "Enforcing"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5302
    :cond_4b
    const/4 v3, 0x1

    goto :goto_5
.end method

.method loadDeviceOwner()V
    .registers 2

    .prologue
    .line 881
    monitor-enter p0

    .line 882
    :try_start_1
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 883
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 885
    :cond_e
    monitor-exit p0

    .line 886
    return-void

    .line 885
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
    .line 2672
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_5

    .line 2682
    :goto_4
    return-void

    .line 2675
    :cond_5
    monitor-enter p0

    .line 2678
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2680
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2681
    monitor-exit p0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method manageAllowThirdPartyApps(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4582
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    .line 4583
    .local v11, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$700(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 4585
    .local v7, "allowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v6

    .line 4587
    .local v6, "allowList":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4588
    .local v8, "arr":[Ljava/lang/String;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 4589
    .local v12, "thirdPartyList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v12, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4590
    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4592
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 4594
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_75

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    .line 4595
    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    .line 4604
    :goto_38
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4607
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :try_start_3c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4608
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_40
    :goto_40
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 4609
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4610
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, v1, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4611
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_55} :catch_70

    move-result v2

    if-nez v2, :cond_40

    .line 4614
    :try_start_58
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 4615
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 4616
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_6a} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6a} :catch_70

    goto :goto_40

    .line 4618
    :catch_6b
    move-exception v9

    .line 4619
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6c
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_40

    .line 4624
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_70
    move-exception v9

    .line 4625
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4627
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_74
    :goto_74
    return-void

    .line 4596
    :cond_75
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 4597
    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    goto :goto_38

    .line 4599
    :cond_7f
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 4600
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllThirdPartyApps(I)V

    goto :goto_74
.end method

.method manageBlockedApplications(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    .line 4773
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v8

    .line 4774
    .local v8, "blockedList":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4775
    .local v12, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$800(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 4778
    .local v7, "blockListInROM":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 4779
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllBlockedListApps(I)V

    .line 4781
    :cond_16
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4783
    .local v6, "arr":[Ljava/lang/String;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 4784
    .local v11, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v11, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4785
    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4787
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4788
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 4811
    :cond_32
    :goto_32
    return-void

    .line 4794
    :cond_33
    :try_start_33
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4795
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4796
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_3b
    :goto_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 4797
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4798
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4c} :catch_5d

    move-result v2

    if-nez v2, :cond_3b

    .line 4800
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_51
    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 4801
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5a} :catch_5d

    goto :goto_3b

    .line 4802
    :catch_5b
    move-exception v2

    goto :goto_3b

    .line 4808
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_5d
    move-exception v9

    .line 4809
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
    .line 4502
    const/4 v1, 0x0

    .line 4504
    .local v1, "enforceNotification":Z
    if-nez p1, :cond_4

    .line 4524
    :cond_3
    :goto_3
    return-void

    .line 4508
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 4509
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "notifyChanges(): Not Email Admin not proceeding."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4513
    :cond_18
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4514
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_3

    .line 4517
    if-eqz p2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v2, :cond_25

    .line 4518
    const/4 v1, 0x1

    .line 4520
    :cond_25
    iput-boolean p2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 4521
    if-eqz v1, :cond_3

    .line 4522
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(IZ)V

    goto :goto_3
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1763
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_7

    move v3, v4

    .line 1775
    :goto_6
    return v3

    .line 1766
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1767
    monitor-enter p0

    .line 1768
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1769
    .local v2, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1770
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_35

    .line 1771
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1772
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_6

    .line 1776
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2f
    move-exception v3

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v3

    .line 1770
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1775
    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2f

    move v3, v4

    goto :goto_6
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5123
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5126
    .local v1, "ident":J
    const v3, 0x10402c7

    :try_start_f
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5128
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 5129
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, p1, v5}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_23
    .catchall {:try_start_f .. :try_end_1f} :catchall_2c

    .line 5133
    :cond_1f
    :goto_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5135
    return-void

    .line 5130
    :catch_23
    move-exception v0

    .line 5131
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failure talking with power manager"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_1f

    .line 5133
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public recoverPassword(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 4446
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4449
    monitor-enter p0

    .line 4450
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    move-result-wide v0

    .line 4452
    .local v0, "ident":J
    :try_start_d
    const-string v2, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 4456
    :try_start_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4458
    monitor-exit p0

    .line 4459
    return-void

    .line 4456
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4458
    .end local v0    # "ident":J
    :catchall_1e
    move-exception v2

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1780
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_5

    .line 1814
    :cond_4
    :goto_4
    return-void

    .line 1783
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1786
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_57

    move-result v3

    if-eqz v3, :cond_4

    .line 1793
    :goto_12
    monitor-enter p0

    .line 1794
    :try_start_13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1795
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1e

    .line 1796
    monitor-exit p0

    goto :goto_4

    .line 1813
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v3

    .line 1798
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_46

    .line 1800
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v3, :cond_3e

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1802
    monitor-exit p0

    goto :goto_4

    .line 1804
    :cond_3e
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_1b

    move-result-wide v1

    .line 1809
    .local v1, "ident":J
    :try_start_4a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_52

    .line 1811
    :try_start_4d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    monitor-exit p0

    goto :goto_4

    .line 1811
    :catchall_52
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_1b

    .line 1789
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "ident":J
    :catch_57
    move-exception v3

    goto :goto_12
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1102
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_10

    .line 1103
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1144
    :cond_10
    return-void
.end method

.method removeUserData(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 850
    monitor-enter p0

    .line 851
    if-nez p1, :cond_c

    .line 852
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit p0

    .line 878
    :goto_b
    return-void

    .line 855
    :cond_c
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 856
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v3, :cond_60

    .line 858
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5b

    .line 859
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_58

    .line 861
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_start_2c
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_39} :catch_3a
    .catchall {:try_start_2c .. :try_end_39} :catchall_58

    goto :goto_20

    .line 863
    :catch_3a
    move-exception v1

    .line 864
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3b
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to remove active admin from edm database "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 877
    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_58
    move-exception v5

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_58

    throw v5

    .line 871
    .restart local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_5b
    :try_start_5b
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 873
    :cond_60
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    const-string v6, "device_policies.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 875
    .local v4, "policyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 876
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed device policy file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_5b .. :try_end_8b} :catchall_58

    goto :goto_b
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 3109
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3110
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    monitor-enter p0

    .line 3114
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3115
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_32

    move-result-wide v0

    .line 3117
    .local v0, "ident":J
    :try_start_14
    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3118
    const/4 v2, 0x1

    .line 3119
    .local v2, "isNotiFromLockScreen":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3120
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v4, :cond_28

    .line 3128
    const-string v4, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_2d

    .line 3132
    :cond_28
    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3134
    monitor-exit p0

    .line 3135
    return-void

    .line 3132
    .end local v2    # "isNotiFromLockScreen":Z
    :catchall_2d
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3134
    .end local v0    # "ident":J
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v4
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 3138
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3139
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    monitor-enter p0

    .line 3143
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3144
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v4, :cond_18

    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v4, :cond_33

    .line 3145
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_3a

    move-result-wide v0

    .line 3147
    .local v0, "ident":J
    const/4 v4, 0x0

    :try_start_1d
    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3148
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 3149
    const/4 v2, 0x1

    .line 3150
    .local v2, "isNotiFromLockScreen":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3151
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v4, :cond_30

    .line 3152
    const-string v4, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_35

    .line 3156
    :cond_30
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3159
    .end local v0    # "ident":J
    .end local v2    # "isNotiFromLockScreen":Z
    :cond_33
    monitor-exit p0

    .line 3160
    return-void

    .line 3156
    .restart local v0    # "ident":J
    :catchall_35
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3159
    .end local v0    # "ident":J
    .end local v3    # "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v4

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .registers 36
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2443
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v29, v0

    if-nez v29, :cond_b

    .line 2444
    const/16 v29, 0x0

    .line 2581
    :goto_a
    return v29

    .line 2446
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2448
    monitor-enter p0

    .line 2452
    const/16 v29, 0x0

    const/16 v30, 0x2

    :try_start_17
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2455
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v24

    .line 2456
    .local v24, "quality":I
    if-eqz v24, :cond_7b

    .line 2457
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .line 2458
    .local v25, "realQuality":I
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_73

    const/high16 v29, 0x60000

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_73

    .line 2460
    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: password quality 0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

    .line 2464
    const/16 v29, 0x0

    monitor-exit p0

    goto :goto_a

    .line 2543
    .end local v24    # "quality":I
    .end local v25    # "realQuality":I
    :catchall_70
    move-exception v29

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_17 .. :try_end_72} :catchall_70

    throw v29

    .line 2466
    .restart local v24    # "quality":I
    .restart local v25    # "realQuality":I
    :cond_73
    :try_start_73
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 2469
    .end local v25    # "realQuality":I
    :cond_7b
    const/high16 v29, 0x70000

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_8f

    .line 2470
    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: current password quality is smartcard numeric and can\'t set reset password"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2473
    :cond_8f
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v11

    .line 2474
    .local v11, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v0, v11, :cond_d0

    .line 2475
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

    .line 2477
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2479
    :cond_d0
    const/high16 v29, 0x60000

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_2a1

    .line 2480
    const/4 v12, 0x0

    .line 2481
    .local v12, "letters":I
    const/16 v27, 0x0

    .line 2482
    .local v27, "uppercase":I
    const/4 v13, 0x0

    .line 2483
    .local v13, "lowercase":I
    const/16 v22, 0x0

    .line 2484
    .local v22, "numbers":I
    const/16 v26, 0x0

    .line 2485
    .local v26, "symbols":I
    const/16 v21, 0x0

    .line 2486
    .local v21, "nonletter":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_12b

    .line 2487
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2488
    .local v5, "c":C
    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v5, v0, :cond_104

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v5, v0, :cond_104

    .line 2489
    add-int/lit8 v12, v12, 0x1

    .line 2490
    add-int/lit8 v27, v27, 0x1

    .line 2486
    :goto_101
    add-int/lit8 v7, v7, 0x1

    goto :goto_e3

    .line 2491
    :cond_104
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v5, v0, :cond_115

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v5, v0, :cond_115

    .line 2492
    add-int/lit8 v12, v12, 0x1

    .line 2493
    add-int/lit8 v13, v13, 0x1

    goto :goto_101

    .line 2494
    :cond_115
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v5, v0, :cond_126

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v5, v0, :cond_126

    .line 2495
    add-int/lit8 v22, v22, 0x1

    .line 2496
    add-int/lit8 v21, v21, 0x1

    goto :goto_101

    .line 2498
    :cond_126
    add-int/lit8 v26, v26, 0x1

    .line 2499
    add-int/lit8 v21, v21, 0x1

    goto :goto_101

    .line 2502
    .end local v5    # "c":C
    :cond_12b
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v14

    .line 2503
    .local v14, "neededLetters":I
    if-ge v12, v14, :cond_164

    .line 2504
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

    .line 2506
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2508
    :cond_164
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v17

    .line 2509
    .local v17, "neededNumbers":I
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a5

    .line 2510
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

    .line 2513
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2515
    :cond_1a5
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v15

    .line 2516
    .local v15, "neededLowerCase":I
    if-ge v13, v15, :cond_1de

    .line 2517
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

    .line 2520
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2522
    :cond_1de
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v19

    .line 2523
    .local v19, "neededUpperCase":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_21f

    .line 2524
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

    .line 2527
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2529
    :cond_21f
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v18

    .line 2530
    .local v18, "neededSymbols":I
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_260

    .line 2531
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

    .line 2533
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2535
    :cond_260
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v16

    .line 2536
    .local v16, "neededNonLetter":I
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_2a1

    .line 2537
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

    .line 2540
    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 2543
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
    :cond_2a1
    monitor-exit p0
    :try_end_2a2
    .catchall {:try_start_73 .. :try_end_2a2} :catchall_70

    .line 2545
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2546
    .local v6, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v23

    .line 2547
    .local v23, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    if-ltz v29, :cond_2cb

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v6, :cond_2cb

    .line 2548
    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 2554
    :cond_2cb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2556
    .local v8, "ident":J
    :try_start_2cf
    new-instance v28, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2558
    .local v28, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v29

    if-eqz v29, :cond_2eb

    .line 2559
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 2562
    :cond_2eb
    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v29

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 2563
    monitor-enter p0
    :try_end_2fb
    .catchall {:try_start_2cf .. :try_end_2fb} :catchall_347

    .line 2564
    and-int/lit8 v29, p2, 0x1

    if-eqz v29, :cond_341

    move/from16 v20, v6

    .line 2566
    .local v20, "newOwner":I
    :goto_301
    :try_start_301
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v20

    if-eq v0, v1, :cond_31e

    .line 2567
    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2568
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2570
    :cond_31e
    monitor-exit p0
    :try_end_31f
    .catchall {:try_start_301 .. :try_end_31f} :catchall_344

    .line 2572
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2576
    new-instance v10, Landroid/content/Intent;

    const-string v29, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2577
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v29, 0x40000000

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2581
    const/16 v29, 0x1

    goto/16 :goto_a

    .line 2564
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v20    # "newOwner":I
    :cond_341
    const/16 v20, -0x1

    goto :goto_301

    .line 2570
    .restart local v20    # "newOwner":I
    :catchall_344
    move-exception v29

    :try_start_345
    monitor-exit p0
    :try_end_346
    .catchall {:try_start_345 .. :try_end_346} :catchall_344

    :try_start_346
    throw v29
    :try_end_347
    .catchall {:try_start_346 .. :try_end_347} :catchall_347

    .line 2572
    .end local v20    # "newOwner":I
    .end local v28    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_347
    move-exception v29

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29
.end method

.method public satisfyFIPSPassword(I)Z
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 5155
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_6

    .line 5156
    const/4 v5, 0x0

    .line 5181
    :goto_5
    return v5

    .line 5159
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 5160
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 5161
    .local v3, "mode":I
    const/4 v5, 0x0

    .line 5163
    .local v5, "ret":Z
    monitor-enter p0

    .line 5164
    :try_start_d
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5165
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_27

    .line 5166
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 5167
    .local v1, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v6, :cond_24

    .line 5168
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 5165
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 5172
    .end local v1    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_27
    const/high16 v6, 0x20000

    if-lt v3, v6, :cond_35

    .line 5173
    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-lt v6, v3, :cond_30

    .line 5174
    const/4 v5, 0x1

    .line 5180
    :cond_30
    :goto_30
    monitor-exit p0

    goto :goto_5

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_32
    move-exception v6

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_32

    throw v6

    .line 5176
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_35
    :try_start_35
    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v7, 0x50000

    if-lt v6, v7, :cond_30

    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_32

    const/4 v7, 0x6

    if-lt v6, v7, :cond_30

    .line 5178
    const/4 v5, 0x1

    goto :goto_30
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .registers 4
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1030
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 20
    .param p1, "admin"    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1033
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v2, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1035
    const-string v1, "android.app.action.ACTION_PASSWORD_EXPIRING"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1036
    const-string v1, "expiration"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1038
    :cond_25
    if-eqz p3, :cond_bf

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaManager;

    .line 1041
    .local v12, "persona":Landroid/os/PersonaManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1044
    .local v13, "token":J
    :try_start_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v11

    .line 1045
    .local v11, "isUserRunning":Z
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserRunning -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-nez v11, :cond_a1

    .line 1047
    const-string v1, "DevicePolicyManagerService"

    const-string v3, "result.onReceive called"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_80} :catch_84
    .catchall {:try_start_45 .. :try_end_80} :catchall_ba

    .line 1054
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1085
    .end local v11    # "isUserRunning":Z
    .end local v13    # "token":J
    :goto_83
    return-void

    .line 1051
    .restart local v13    # "token":J
    :catch_84
    move-exception v10

    .line 1052
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_85
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_ba

    .line 1054
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_a1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    .end local v13    # "token":J
    :cond_a4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_83

    .line 1054
    .restart local v13    # "token":J
    :catchall_ba
    move-exception v1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1065
    .end local v12    # "persona":Landroid/os/PersonaManager;
    .end local v13    # "token":J
    :cond_bf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    .line 1067
    .local v15, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaManager;

    .line 1068
    .restart local v12    # "persona":Landroid/os/PersonaManager;
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 1070
    :try_start_d9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v11

    .line 1071
    .restart local v11    # "isUserRunning":Z
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserRunning -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    if-nez v11, :cond_102

    .line 1073
    sget-object v15, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_102} :catch_127

    .line 1080
    .end local v11    # "isUserRunning":Z
    :cond_102
    :goto_102
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending admin enabled broadcast intent to user -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_83

    .line 1075
    :catch_127
    move-exception v10

    .line 1076
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1088
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1089
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1090
    .local v1, "count":I
    if-lez v1, :cond_25

    .line 1091
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_25

    .line 1092
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1093
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1094
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1091
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1098
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
    .line 1672
    iget-boolean v9, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_5

    .line 1715
    :goto_4
    return-void

    .line 1675
    :cond_5
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1679
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1680
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1681
    .local v4, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v4, :cond_33

    .line 1682
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

    .line 1684
    :cond_33
    monitor-enter p0

    .line 1685
    :try_start_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4d

    move-result-wide v2

    .line 1687
    .local v2, "ident":J
    if-nez p2, :cond_50

    :try_start_3a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v9

    if-eqz v9, :cond_50

    .line 1688
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_48

    .line 1712
    :catchall_48
    move-exception v9

    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1714
    .end local v2    # "ident":J
    :catchall_4d
    move-exception v9

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v9

    .line 1690
    .restart local v2    # "ident":J
    :cond_50
    :try_start_50
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1691
    .local v5, "newAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    const/4 v8, -0x1

    .line 1693
    .local v8, "replaceIndex":I
    if-eqz p2, :cond_7b

    .line 1694
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1695
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_64
    if-ge v1, v0, :cond_7b

    .line 1696
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1697
    .local v6, "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 1698
    move v8, v1

    .line 1703
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_7b
    const/4 v9, -0x1

    if-ne v8, v9, :cond_9c

    .line 1704
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1709
    :goto_8a
    const/4 v9, 0x0

    invoke-direct {p0, p3, v9}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1710
    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_50 .. :try_end_93} :catchall_48

    .line 1712
    :try_start_93
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1714
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_4d

    goto/16 :goto_4

    .line 1695
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 1707
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "oldAdmin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_9c
    :try_start_9c
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_48

    goto :goto_8a
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
    .line 3040
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_5

    .line 3087
    :goto_4
    return-void

    .line 3043
    :cond_5
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3044
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3050
    .local v2, "p":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/high16 v3, 0x70000

    if-ne p1, v3, :cond_3d

    .line 3051
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 3052
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

    .line 3056
    :cond_3d
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 3060
    :cond_40
    monitor-enter p0

    .line 3061
    :try_start_41
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_65

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_91

    .line 3066
    :cond_65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_68
    .catchall {:try_start_41 .. :try_end_68} :catchall_94

    move-result-wide v0

    .line 3068
    .local v0, "ident":J
    :try_start_69
    iput p1, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 3069
    iput p2, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 3070
    iput p3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 3071
    iput p5, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 3072
    iput p4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 3073
    iput p6, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 3074
    iput p7, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 3075
    iput p8, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 3076
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3077
    const/4 v3, 0x1

    invoke-direct {p0, p9, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3078
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 3079
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3080
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_8e
    .catchall {:try_start_69 .. :try_end_8e} :catchall_97

    .line 3083
    :try_start_8e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3086
    .end local v0    # "ident":J
    :cond_91
    monitor-exit p0

    goto/16 :goto_4

    :catchall_94
    move-exception v3

    monitor-exit p0
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_94

    throw v3

    .line 3083
    .restart local v0    # "ident":J
    :catchall_97
    move-exception v3

    :try_start_98
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_94
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3763
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3764
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_7

    .line 3783
    :goto_6
    return-void

    .line 3769
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 3770
    .local v3, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v3, :cond_26

    .line 3771
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

    .line 3774
    :cond_26
    monitor-enter p0

    .line 3775
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3d

    move-result-wide v1

    .line 3777
    .local v1, "ident":J
    :try_start_2b
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPermissions()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo;->setPermissions(J)V

    .line 3778
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_40

    .line 3780
    :try_start_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    monitor-exit p0

    goto :goto_6

    .end local v1    # "ident":J
    :catchall_3d
    move-exception v4

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw v4

    .line 3780
    .restart local v1    # "ident":J
    :catchall_40
    move-exception v4

    :try_start_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_3d
.end method

.method public setAllowAppListThirdParty(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4547
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4549
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 4551
    if-nez p1, :cond_12

    .line 4552
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4575
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 4556
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 4557
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4558
    monitor-exit p0

    .line 4576
    :goto_26
    return-void

    .line 4561
    :cond_27
    const/16 v4, 0x16

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4564
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 4565
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    .line 4566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v1

    .line 4569
    .local v1, "ident":J
    const/4 v4, 0x0

    :try_start_40
    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 4570
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_4b

    .line 4572
    :try_start_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4575
    .end local v1    # "ident":J
    :cond_49
    monitor-exit p0

    goto :goto_26

    .line 4572
    .restart local v1    # "ident":J
    :catchall_4b
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_f
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 4171
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4172
    monitor-enter p0

    .line 4173
    if-nez p1, :cond_11

    .line 4174
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4188
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 4176
    :cond_11
    const/16 v3, 0x11

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4178
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    if-eq v3, p2, :cond_28

    .line 4179
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 4181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4183
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4185
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4188
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4189
    return-void

    .line 4185
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4074
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4075
    monitor-enter p0

    .line 4076
    if-nez p1, :cond_11

    .line 4077
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4091
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 4079
    :cond_11
    const/16 v3, 0xf

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4081
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    if-eq v3, p2, :cond_28

    .line 4082
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 4084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4086
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4088
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4091
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4092
    return-void

    .line 4088
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowCamera(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3926
    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/DevicePolicyManagerService;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 3927
    return-void

    .line 3926
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
    .line 4229
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4230
    monitor-enter p0

    .line 4231
    if-nez p1, :cond_11

    .line 4232
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4246
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 4234
    :cond_11
    const/16 v3, 0x12

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4236
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    if-eq v3, p2, :cond_28

    .line 4237
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 4239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4241
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4243
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4246
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4247
    return-void

    .line 4243
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4116
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4117
    monitor-enter p0

    .line 4118
    if-nez p1, :cond_11

    .line 4119
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4133
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 4121
    :cond_11
    const/16 v3, 0x10

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4123
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    if-eq v3, p2, :cond_28

    .line 4124
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 4126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4128
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4130
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4133
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4134
    return-void

    .line 4130
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4284
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4285
    monitor-enter p0

    .line 4286
    if-nez p1, :cond_11

    .line 4287
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4301
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 4289
    :cond_11
    const/16 v3, 0x13

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4291
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    if-eq v3, p2, :cond_28

    .line 4292
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 4294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4296
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4298
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4301
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4302
    return-void

    .line 4298
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4032
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4033
    monitor-enter p0

    .line 4034
    if-nez p1, :cond_11

    .line 4035
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4049
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 4037
    :cond_11
    const/16 v3, 0xe

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4039
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    if-eq v3, p2, :cond_28

    .line 4040
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 4042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4044
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4046
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4049
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4050
    return-void

    .line 4046
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3828
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3829
    monitor-enter p0

    .line 3830
    if-nez p1, :cond_11

    .line 3831
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3845
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3833
    :cond_11
    const/16 v3, 0xb

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3835
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    if-eq v3, p2, :cond_28

    .line 3836
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 3838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3840
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 3842
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3845
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 3846
    return-void

    .line 3842
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3990
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3991
    monitor-enter p0

    .line 3992
    if-nez p1, :cond_11

    .line 3993
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4007
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3995
    :cond_11
    const/16 v3, 0xd

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3997
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    if-eq v3, p2, :cond_28

    .line 3998
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 4000
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4002
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4004
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4007
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4008
    return-void

    .line 4004
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowUnsignedApp(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4840
    monitor-enter p0

    .line 4841
    if-nez p1, :cond_e

    .line 4842
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4870
    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    .line 4845
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 4846
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    monitor-exit p0

    .line 4871
    :goto_22
    return-void

    .line 4849
    :cond_23
    const/4 v1, 0x0

    .line 4850
    .local v1, "handle":Z
    const/16 v4, 0x19

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4852
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    if-eq v4, p2, :cond_4d

    .line 4853
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    .line 4854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_b

    move-result-wide v2

    .line 4856
    .local v2, "ident":J
    if-nez p2, :cond_43

    .line 4858
    :try_start_36
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4861
    const/4 v1, 0x1

    .line 4863
    :cond_43
    invoke-virtual {p0, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    .line 4865
    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_4f

    .line 4867
    :try_start_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4870
    .end local v2    # "ident":J
    :cond_4d
    monitor-exit p0

    goto :goto_22

    .line 4867
    .restart local v2    # "ident":J
    :catchall_4f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_b
.end method

.method public setAllowUnsignedInstallationPkg(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4948
    monitor-enter p0

    .line 4949
    if-nez p1, :cond_e

    .line 4950
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4973
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 4953
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 4954
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Not Email Admin not proceeding."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    monitor-exit p0

    .line 4974
    :goto_22
    return-void

    .line 4957
    :cond_23
    const/16 v3, 0x1a

    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4960
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    if-eq v3, p2, :cond_48

    .line 4961
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    .line 4962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4964
    .local v1, "ident":J
    if-nez p2, :cond_41

    .line 4965
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_b

    .line 4968
    :cond_41
    const/4 v3, 0x0

    :try_start_42
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4a

    .line 4970
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4973
    .end local v1    # "ident":J
    :cond_48
    monitor-exit p0

    goto :goto_22

    .line 4970
    .restart local v1    # "ident":J
    :catchall_4a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_b
.end method

.method public setAllowWifi(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3934
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3935
    monitor-enter p0

    .line 3936
    if-nez p1, :cond_11

    .line 3937
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3951
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3939
    :cond_11
    const/16 v3, 0xc

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3941
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    if-eq v3, p2, :cond_28

    .line 3942
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 3944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3946
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 3948
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3951
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 3952
    return-void

    .line 3948
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setBlockListInRom(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4742
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4744
    .local v3, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 4745
    if-nez p1, :cond_12

    .line 4746
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4768
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 4750
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 4751
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    monitor-exit p0

    .line 4769
    :goto_26
    return-void

    .line 4754
    :cond_27
    const/16 v4, 0x17

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4756
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 4758
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    .line 4760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v1

    .line 4762
    .local v1, "ident":J
    const/4 v4, 0x0

    :try_start_40
    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 4763
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_4b

    .line 4765
    :try_start_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4768
    .end local v1    # "ident":J
    :cond_49
    monitor-exit p0

    goto :goto_26

    .line 4765
    .restart local v1    # "ident":J
    :catchall_4b
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_f
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3424
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 3440
    :goto_4
    return-void

    .line 3427
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3428
    monitor-enter p0

    .line 3429
    if-nez p1, :cond_16

    .line 3430
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3439
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3432
    :cond_16
    const/16 v1, 0x8

    :try_start_18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3434
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_26

    .line 3435
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 3436
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3438
    :cond_26
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3439
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_13

    goto :goto_4
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 3529
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_6

    .line 3530
    const/4 v0, 0x0

    .line 3541
    :goto_5
    return v0

    .line 3532
    :cond_6
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 3534
    :cond_14
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

    .line 3537
    :cond_33
    monitor-enter p0

    .line 3538
    :try_start_34
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-nez v0, :cond_50

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_50

    .line 3539
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0, p1, p2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 3540
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFile()V

    .line 3541
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_5

    .line 3547
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_4d

    throw v0

    .line 3543
    :cond_50
    :try_start_50
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
    :try_end_87
    .catchall {:try_start_50 .. :try_end_87} :catchall_4d
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 893
    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v10

    .line 894
    .local v10, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 895
    .local v12, "now":J
    sub-long v15, v10, v12

    .line 897
    .local v15, "timeToExpire":J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_68

    .line 899
    const-wide/16 v7, 0x0

    .line 913
    .local v7, "alarmTime":J
    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 915
    .local v17, "token":J
    :try_start_24
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 916
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

    .line 920
    .local v14, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v9, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 921
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_64

    .line 922
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7, v8, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_85

    .line 925
    :cond_64
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 927
    return-void

    .line 900
    .end local v7    # "alarmTime":J
    .end local v9    # "am":Landroid/app/AlarmManager;
    .end local v14    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "token":J
    :cond_68
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_74

    .line 902
    const-wide/32 v19, 0x5265c00

    add-long v7, v12, v19

    .restart local v7    # "alarmTime":J
    goto :goto_20

    .line 906
    .end local v7    # "alarmTime":J
    :cond_74
    const-wide/32 v19, 0x5265c00

    rem-long v5, v15, v19

    .line 907
    .local v5, "alarmInterval":J
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_82

    .line 908
    const-wide/32 v5, 0x5265c00

    .line 910
    :cond_82
    add-long v7, v12, v5

    .restart local v7    # "alarmTime":J
    goto :goto_20

    .line 925
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
    .line 3164
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_6

    .line 3165
    const/4 v3, 0x0

    .line 3212
    :goto_5
    return-object v3

    .line 3167
    :cond_6
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3168
    monitor-enter p0

    .line 3169
    if-nez p1, :cond_17

    .line 3170
    :try_start_c
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3213
    :catchall_14
    move-exception v8

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v8

    .line 3174
    :cond_17
    const/4 v8, 0x0

    :try_start_18
    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 3175
    .local v7, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3180
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3181
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3182
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 3183
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2b

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 3186
    monitor-exit p0

    goto :goto_5

    .line 3191
    .end local v1    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_4b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_72

    .line 3192
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

    .line 3194
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_5

    .line 3196
    :cond_72
    if-nez p2, :cond_8b

    .line 3197
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3198
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3199
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 3209
    :goto_7d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3210
    .local v5, "origId":J
    invoke-direct {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3211
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3212
    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_5

    .line 3202
    .end local v5    # "origId":J
    :cond_8b
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3203
    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3204
    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_92
    .catchall {:try_start_18 .. :try_end_92} :catchall_14

    goto :goto_7d
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3482
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 3498
    :goto_4
    return-void

    .line 3485
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3486
    monitor-enter p0

    .line 3487
    if-nez p1, :cond_16

    .line 3488
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3497
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3490
    :cond_16
    const/16 v1, 0x9

    :try_start_18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3492
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_26

    .line 3493
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 3494
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3496
    :cond_26
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3497
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_13

    goto :goto_4
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2394
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 2412
    :goto_4
    return-void

    .line 2397
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2398
    monitor-enter p0

    .line 2402
    const/4 v1, 0x4

    :try_start_a
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2404
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2407
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_1c

    .line 2408
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2409
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2411
    :cond_1c
    monitor-exit p0

    goto :goto_4

    .end local v0    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2585
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 2603
    :goto_4
    return-void

    .line 2588
    :cond_5
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2589
    monitor-enter p0

    .line 2590
    if-nez p1, :cond_16

    .line 2591
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2602
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2594
    :cond_16
    const/4 v1, 0x3

    :try_start_17
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2597
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_2e

    .line 2598
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2599
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2600
    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2602
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_13

    goto :goto_4
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v3, 0x0

    .line 1974
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_7

    .line 2002
    :goto_6
    return-void

    .line 1977
    :cond_7
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1978
    monitor-enter p0

    .line 1979
    if-nez p1, :cond_18

    .line 1980
    :try_start_d
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2001
    :catchall_15
    move-exception v3

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v3

    .line 1982
    :cond_18
    cmp-long v5, p2, v3

    if-gez v5, :cond_24

    .line 1983
    :try_start_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1986
    :cond_24
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5, p4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1990
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, p2, v3

    if-lez v5, :cond_71

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    .line 1991
    .local v1, "expiration":J
    :goto_33
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1992
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1993
    cmp-long v3, p2, v3

    if-lez v3, :cond_62

    .line 1994
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

    .line 1998
    :cond_62
    const/4 v3, 0x0

    invoke-direct {p0, p4, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2000
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2001
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_1c .. :try_end_70} :catchall_15

    goto :goto_6

    .end local v1    # "expiration":J
    :cond_71
    move-wide v1, v3

    .line 1990
    goto :goto_33
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1929
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 1946
    :goto_4
    return-void

    .line 1932
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1933
    monitor-enter p0

    .line 1934
    if-nez p1, :cond_16

    .line 1935
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1945
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 1938
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1941
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_25

    .line 1942
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1943
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1945
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1884
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 1901
    :goto_4
    return-void

    .line 1887
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1888
    monitor-enter p0

    .line 1889
    if-nez p1, :cond_16

    .line 1890
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1900
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 1893
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1896
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_25

    .line 1897
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1898
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1900
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2154
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 2171
    :goto_4
    return-void

    .line 2157
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2158
    monitor-enter p0

    .line 2159
    if-nez p1, :cond_16

    .line 2160
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2170
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2163
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2166
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_25

    .line 2167
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2168
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2170
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2112
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2113
    monitor-enter p0

    .line 2114
    if-nez p1, :cond_11

    .line 2115
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2125
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 2118
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2121
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_20

    .line 2122
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2123
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2125
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_e

    .line 2126
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2289
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 2306
    :goto_4
    return-void

    .line 2292
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2293
    monitor-enter p0

    .line 2294
    if-nez p1, :cond_16

    .line 2295
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2305
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2298
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2301
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_25

    .line 2302
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2303
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2305
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2199
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 2216
    :goto_4
    return-void

    .line 2202
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2203
    monitor-enter p0

    .line 2204
    if-nez p1, :cond_16

    .line 2205
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2215
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2208
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2211
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_25

    .line 2212
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2213
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2215
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2244
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 2261
    :goto_4
    return-void

    .line 2247
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2248
    monitor-enter p0

    .line 2249
    if-nez p1, :cond_16

    .line 2250
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2260
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2253
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2256
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_25

    .line 2257
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2258
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2260
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2067
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 2084
    :goto_4
    return-void

    .line 2070
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2071
    monitor-enter p0

    .line 2072
    if-nez p1, :cond_16

    .line 2073
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2083
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2076
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2079
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_25

    .line 2080
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2081
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 2083
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1817
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_5

    .line 1855
    :goto_4
    return-void

    .line 1823
    :cond_5
    const/high16 v4, 0x70000

    if-ne p2, v4, :cond_46

    .line 1824
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1825
    .local v3, "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1827
    .local v1, "ident":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_24

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1829
    :cond_24
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid quality constant: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_41

    .line 1832
    :catchall_41
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1836
    .end local v1    # "ident":J
    .end local v3    # "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_46
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1840
    :goto_49
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1842
    monitor-enter p0

    .line 1843
    if-nez p1, :cond_5a

    .line 1844
    :try_start_4f
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1854
    :catchall_57
    move-exception v4

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw v4

    .line 1847
    :cond_5a
    const/4 v4, 0x0

    :try_start_5b
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1850
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v4, p2, :cond_69

    .line 1851
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1852
    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 1854
    :cond_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_57

    goto :goto_4

    .line 1832
    .end local v0    # "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "ident":J
    .restart local v3    # "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_6b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_49
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3786
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3787
    monitor-enter p0

    .line 3788
    if-nez p1, :cond_11

    .line 3789
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3803
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3791
    :cond_11
    const/16 v3, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3793
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    if-eq v3, p2, :cond_28

    .line 3794
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 3796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 3798
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 3800
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3803
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 3804
    return-void

    .line 3800
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 5313
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    .line 5343
    :cond_5
    :goto_5
    return v4

    .line 5316
    :cond_6
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5317
    const/4 v1, 0x0

    .line 5320
    .local v1, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 5321
    .local v3, "service":Landroid/os/IBinder;
    if-eqz v3, :cond_20

    .line 5322
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 5323
    if-nez v1, :cond_28

    .line 5324
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount interface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5328
    :cond_20
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount service"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5333
    :cond_28
    :try_start_28
    invoke-interface {v1, p2, p3}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_30

    move-result v2

    .line 5334
    .local v2, "ret":I
    if-nez v2, :cond_5

    .line 5335
    const/4 v4, 0x1

    goto :goto_5

    .line 5339
    .end local v2    # "ret":I
    :catch_30
    move-exception v0

    .line 5340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4462
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4463
    monitor-enter p0

    .line 4464
    if-nez p1, :cond_11

    .line 4465
    :try_start_6
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4489
    :catchall_e
    move-exception v5

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v5

    .line 4467
    :cond_11
    const/16 v5, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4470
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_3d

    .line 4471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_e

    move-result-wide v1

    .line 4473
    .local v1, "ident":J
    :try_start_1e
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4475
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 4476
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 4479
    :cond_32
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 4480
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_3f

    .line 4486
    :try_start_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4489
    .end local v1    # "ident":J
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "mRecoveryPassword":Ljava/lang/String;
    :cond_3d
    monitor-exit p0

    .line 4491
    return-void

    .line 4486
    .restart local v1    # "ident":J
    :catchall_3f
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_e
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4346
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4347
    monitor-enter p0

    .line 4348
    if-nez p1, :cond_11

    .line 4349
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4363
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 4351
    :cond_11
    const/16 v3, 0x14

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4353
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    if-eq v3, p2, :cond_28

    .line 4354
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 4356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    .line 4358
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_22
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 4360
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4363
    .end local v1    # "ident":J
    :cond_28
    monitor-exit p0

    .line 4364
    return-void

    .line 4360
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3883
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3884
    monitor-enter p0

    .line 3885
    if-nez p1, :cond_11

    .line 3886
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3900
    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    .line 3888
    :cond_11
    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3890
    .local v0, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v3, p2, :cond_27

    .line 3891
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 3893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_e

    move-result-wide v1

    .line 3895
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_21
    invoke-direct {p0, p3, v3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 3897
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3900
    .end local v1    # "ident":J
    :cond_27
    monitor-exit p0

    .line 3901
    return-void

    .line 3897
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3288
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_6

    .line 3331
    :goto_5
    return v5

    .line 3291
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3292
    monitor-enter p0

    .line 3294
    if-nez p1, :cond_17

    .line 3295
    :try_start_c
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3334
    :catchall_14
    move-exception v5

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v5

    .line 3298
    :cond_17
    if-nez p3, :cond_1f

    :try_start_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_43

    .line 3300
    :cond_1f
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

    .line 3302
    monitor-exit p0

    goto :goto_5

    .line 3305
    :cond_43
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3309
    .local v1, "ap":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_50

    .line 3310
    monitor-exit p0

    goto :goto_5

    .line 3314
    :cond_50
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_5a

    .line 3315
    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 3316
    const/4 v5, 0x0

    invoke-direct {p0, p3, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(IZ)V

    .line 3319
    :cond_5a
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3321
    .local v4, "policy":Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 3322
    .local v3, "newRequested":Z
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3323
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_67
    if-ge v2, v0, :cond_77

    .line 3324
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 3323
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 3328
    :cond_77
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 3331
    if-eqz v3, :cond_7f

    const/4 v5, 0x3

    :goto_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_19 .. :try_end_7e} :catchall_14

    goto :goto_5

    :cond_7f
    const/4 v5, 0x1

    goto :goto_7d
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 9
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1545
    const-string/jumbo v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1546
    .local v1, "systemState":Z
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1547
    .local v0, "cameraDisabled":Z
    if-eq v0, v1, :cond_22

    .line 1548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1550
    .local v2, "token":J
    if-eqz v0, :cond_23

    :try_start_17
    const-string v4, "1"

    .line 1553
    .local v4, "value":Ljava/lang/String;
    :goto_19
    const-string/jumbo v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_26

    .line 1555
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    .end local v2    # "token":J
    .end local v4    # "value":Ljava/lang/String;
    :cond_22
    return-void

    .line 1550
    .restart local v2    # "token":J
    :cond_23
    :try_start_23
    const-string v4, "0"
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_26

    goto :goto_19

    .line 1555
    :catchall_26
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 1561
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    .line 1580
    :goto_4
    return-void

    .line 1564
    :cond_5
    monitor-enter p0

    .line 1565
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1567
    const-string v1, "device_policies_backup.xml"

    const-string v2, "device_policies.xml"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1568
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 1569
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1571
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    .line 1575
    :cond_2f
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 1576
    .local v0, "maximumFailedPasswordsForWipe":I
    if-eqz v0, :cond_42

    .line 1577
    const/4 v1, 0x0

    const-string v2, "security.ode.maxattempts"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1579
    :cond_42
    monitor-exit p0

    goto :goto_4

    .end local v0    # "maximumFailedPasswordsForWipe":I
    :catchall_44
    move-exception v1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public uninstallCaCert([B)V
    .registers 14
    .param p1, "certBuffer"    # [B

    .prologue
    .line 2743
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 2745
    .local v3, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v0, 0x0

    .line 2747
    .local v0, "alias":Ljava/lang/String;
    :try_start_e
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 2748
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_15} :catch_28
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_31

    move-result-object v0

    .line 2757
    :try_start_16
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7

    .line 2758
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1f} :catch_46

    move-result-object v8

    .line 2760
    .local v8, "service":Landroid/security/IKeyChainService;
    :try_start_20
    invoke-interface {v8, v0}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_3a
    .catchall {:try_start_20 .. :try_end_23} :catchall_56

    .line 2764
    :try_start_23
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_46

    .line 2765
    :goto_26
    const/4 v7, 0x0

    .line 2771
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "service":Landroid/security/IKeyChainService;
    :goto_27
    return-void

    .line 2749
    :catch_28
    move-exception v1

    .line 2750
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem creating X509Certificate"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 2752
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    :catch_31
    move-exception v6

    .line 2753
    .local v6, "ioe":Ljava/io/IOException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem reading certificate"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 2761
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "service":Landroid/security/IKeyChainService;
    :catch_3a
    move-exception v4

    .line 2762
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3b
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "from CaCertUninstaller: "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_56

    .line 2764
    :try_start_42
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_26

    .line 2767
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "service":Landroid/security/IKeyChainService;
    :catch_46
    move-exception v5

    .line 2768
    .local v5, "ie":Ljava/lang/InterruptedException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "CaCertUninstaller: "

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2769
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_27

    .line 2764
    .end local v5    # "ie":Ljava/lang/InterruptedException;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "service":Landroid/security/IKeyChainService;
    :catchall_56
    move-exception v9

    :try_start_57
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2765
    const/4 v7, 0x0

    .line 2764
    throw v9
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5c} :catch_46
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 11
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 2606
    const/4 v6, 0x0

    iget v7, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v6, v7}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    .line 2607
    .local v4, "timeMs":J
    iget-wide v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_e

    .line 2641
    :goto_d
    return-void

    .line 2611
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2613
    .local v1, "ident":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_41

    .line 2614
    const-wide/32 v4, 0x7fffffff

    .line 2622
    :goto_1b
    :try_start_1b
    iput-wide v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_4f

    .line 2626
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 2627
    .local v3, "persona":Landroid/os/PersonaManager;
    if-eqz v3, :cond_54

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 2628
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Setting a timeout in personamanager manager this time"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_3d} :catch_64
    .catchall {:try_start_1d .. :try_end_3d} :catchall_4f

    .line 2639
    .end local v3    # "persona":Landroid/os/PersonaManager;
    :goto_3d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .line 2618
    :cond_41
    :try_start_41
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4f

    goto :goto_1b

    .line 2639
    :catchall_4f
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2632
    .restart local v3    # "persona":Landroid/os/PersonaManager;
    :cond_54
    :try_start_54
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Setting a timeout in power manager this time"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v6

    long-to-int v7, v4

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_63} :catch_64
    .catchall {:try_start_54 .. :try_end_63} :catchall_4f

    goto :goto_3d

    .line 2635
    .end local v3    # "persona":Landroid/os/PersonaManager;
    :catch_64
    move-exception v0

    .line 2636
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_65
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Failure talking with power manager"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_4f

    goto :goto_3d
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1, "policy"    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1522
    iget v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_45

    .line 1523
    const/4 v0, 0x0

    .line 1524
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_20

    .line 1525
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_46

    .line 1526
    const/4 v0, 0x1

    .line 1530
    :cond_20
    if-nez v0, :cond_45

    .line 1531
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

    .line 1533
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1536
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_45
    return-void

    .line 1524
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
    .line 2905
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_5

    .line 2928
    :goto_4
    return-void

    .line 2908
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2909
    monitor-enter p0

    .line 2912
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_b
    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2914
    .local v0, "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1b

    move-result-wide v1

    .line 2923
    .local v1, "ident":J
    :try_start_13
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1e

    .line 2925
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2927
    monitor-exit p0

    goto :goto_4

    .end local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "ident":J
    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v3

    .line 2925
    .restart local v0    # "admin":Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "ident":J
    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1b
.end method

.method wipeDataLocked(I)V
    .registers 10
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2800
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-nez v6, :cond_40

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v6

    if-eqz v6, :cond_40

    move v2, v5

    .line 2801
    .local v2, "forceExtWipe":Z
    :goto_f
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_14

    move v4, v5

    .line 2804
    .local v4, "wipeExtRequested":Z
    :cond_14
    if-nez v2, :cond_18

    if-eqz v4, :cond_42

    .line 2805
    :cond_18
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2806
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "always_reset"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2807
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2808
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getExternalSD()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2809
    .local v1, "extSD":Landroid/os/storage/StorageVolume;
    const-string/jumbo v5, "storage_volume"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2810
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2811
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2819
    .end local v1    # "extSD":Landroid/os/storage/StorageVolume;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_3f
    return-void

    .end local v2    # "forceExtWipe":Z
    .end local v4    # "wipeExtRequested":Z
    :cond_40
    move v2, v4

    .line 2800
    goto :goto_f

    .line 2814
    .restart local v2    # "forceExtWipe":Z
    .restart local v4    # "wipeExtRequested":Z
    :cond_42
    :try_start_42
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_3f

    .line 2815
    :catch_48
    move-exception v0

    .line 2816
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed requesting data wipe"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method wipeDataLockedFor3LM(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2826
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v4

    if-eqz v4, :cond_36

    move v0, v2

    .line 2827
    .local v0, "forceExtWipe":Z
    :goto_f
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_38

    .line 2830
    .local v2, "wipeExtRequested":Z
    :goto_13
    if-nez v0, :cond_17

    if-eqz v2, :cond_3a

    :cond_17
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2832
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2833
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2834
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2835
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2869
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_35
    return-void

    .end local v0    # "forceExtWipe":Z
    .end local v2    # "wipeExtRequested":Z
    :cond_36
    move v0, v3

    .line 2826
    goto :goto_f

    .restart local v0    # "forceExtWipe":Z
    :cond_38
    move v2, v3

    .line 2827
    goto :goto_13

    .line 2855
    .restart local v2    # "wipeExtRequested":Z
    :cond_3a
    const-string v3, "DevicePolicyManagerService"

    const-string/jumbo v4, "wipeDataLockedFor3LM() called"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_35
.end method
