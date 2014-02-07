.class public Lcom/android/server/enterprise/application/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$3;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final APPS_TO_RECONCILE:Ljava/lang/String; = "appToReconcile"

.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x493e0L

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INTENT_SAMSUNG_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field private static final INTENT_SAMSUNG_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field private static final INTENT_SURFACE_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

.field private static final INTENT_SURFACE_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_CLEARCACHE_BLACKLIST:Ljava/lang/String; = "PackageNameClearCacheBlacklist"

.field private static final PKGNAME_CLEARCACHE_WHITELIST:Ljava/lang/String; = "PackageNameClearCacheWhitelist"

.field private static final PKGNAME_CLEARDATA_BLACKLIST:Ljava/lang/String; = "PackageNameClearDataBlacklist"

.field private static final PKGNAME_CLEARDATA_WHITELIST:Ljava/lang/String; = "PackageNameClearDataWhitelist"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PKGNAME_NOTIFICATION_BLACKLIST:Ljava/lang/String; = "PackageNameNotificationBlacklist"

.field private static final PKGNAME_NOTIFICATION_WHITELIST:Ljava/lang/String; = "PackageNameNotificationWhitelist"

.field private static final PKGNAME_OCSP_CHECK:Ljava/lang/String; = "OcspCheck"

.field private static final PKGNAME_REVOCATION_CHECK:Ljava/lang/String; = "RevocationCheck"

.field private static final PKGNAME_STOP_BLACKLIST:Ljava/lang/String; = "PackageNameStopBlacklist"

.field private static final PKGNAME_STOP_WHITELIST:Ljava/lang/String; = "PackageNameStopWhitelist"

.field private static final PKGNAME_WIDGET_BLACKLIST:Ljava/lang/String; = "PackageNameWidgetBlacklist"

.field private static final PKGNAME_WIDGET_WHITELIST:Ljava/lang/String; = "PackageNameWidgetWhitelist"

.field private static final SIGNATURE_INSTALLATION_BLACKLIST:Ljava/lang/String; = "SignatureInstallationBlacklist"

.field private static final SIGNATURE_INSTALLATION_WHITELIST:Ljava/lang/String; = "SignatureInstallationWhitelist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static final UNINSTALLATION_BLACKLIST:Ljava/lang/String; = "UninstallationBlacklist"

.field private static final UNINSTALLATION_WHITELIST:Ljava/lang/String; = "UninstallationWhitelist"

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static mAppControlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mAppIconChangedPkgNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field private final mAppControlStateLock:Ljava/lang/Object;

.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private mBackupReturnCode:I

.field mContext:Landroid/content/Context;

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mNotificationMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private final mProcessStats:Lcom/android/internal/os/ProcessStats;

.field final mRefreshWidgetStatusLock:Ljava/lang/Object;

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 172
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 187
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 240
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 289
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    .line 181
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 183
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    .line 234
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    .line 235
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    .line 236
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    .line 237
    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 238
    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 241
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 244
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 245
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 246
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 250
    new-instance v1, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 290
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 291
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 292
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 293
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 294
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V

    .line 295
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIconChangedList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 296
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 299
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V

    .line 306
    return-void
.end method

.method private _installApplication(ILjava/lang/String;Z)Z
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 1397
    const/4 v3, 0x0

    .line 1399
    .local v3, "success":Z
    if-eqz p3, :cond_14

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1400
    const-string v8, "ApplicationPolicy"

    const-string v9, "installApplication : External Storage Emulated"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :goto_13
    return v7

    .line 1404
    :cond_14
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1406
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    :cond_26
    move v7, v3

    .line 1407
    goto :goto_13

    .line 1409
    :cond_28
    const/4 v1, 0x2

    .line 1411
    .local v1, "installFlags":I
    if-eqz p3, :cond_6d

    .line 1412
    or-int/lit8 v1, v1, 0x8

    .line 1416
    :goto_2d
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 1418
    .local v2, "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1420
    .local v4, "token":J
    const/4 v6, 0x0

    .line 1425
    .local v6, "verificationDisabled":Z
    :try_start_37
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_53

    .line 1427
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1429
    const/4 v6, 0x1

    .line 1432
    :cond_53
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v1, v9}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 1434
    monitor-enter v2
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_63} :catch_9c
    .catchall {:try_start_37 .. :try_end_63} :catchall_bc

    .line 1435
    :goto_63
    :try_start_63
    iget-boolean v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_99

    if-nez v7, :cond_70

    .line 1437
    :try_start_67
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_99

    goto :goto_63

    .line 1438
    :catch_6b
    move-exception v7

    goto :goto_63

    .line 1414
    .end local v2    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    .end local v4    # "token":J
    .end local v6    # "verificationDisabled":Z
    :cond_6d
    or-int/lit8 v1, v1, 0x10

    goto :goto_2d

    .line 1441
    .restart local v2    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    .restart local v4    # "token":J
    .restart local v6    # "verificationDisabled":Z
    :cond_70
    :try_start_70
    iget v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    if-ne v7, v10, :cond_97

    .line 1442
    const/4 v3, 0x1

    .line 1446
    :goto_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_99

    .line 1451
    if-eqz v3, :cond_84

    if-eq p1, v11, :cond_84

    .line 1454
    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1455
    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1459
    :cond_84
    if-eqz v6, :cond_91

    .line 1460
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1464
    :cond_91
    :goto_91
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v3

    .line 1466
    goto/16 :goto_13

    .line 1444
    :cond_97
    const/4 v3, 0x0

    goto :goto_75

    .line 1446
    :catchall_99
    move-exception v7

    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v7
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9c} :catch_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_bc

    .line 1447
    :catch_9c
    move-exception v0

    .line 1448
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_bc

    .line 1451
    if-eqz v3, :cond_ae

    if-eq p1, v11, :cond_ae

    .line 1454
    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1455
    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1459
    :cond_ae
    if-eqz v6, :cond_91

    .line 1460
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_91

    .line 1451
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_bc
    move-exception v7

    if-eqz v3, :cond_cb

    if-eq p1, v11, :cond_cb

    .line 1454
    iget-object v8, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1455
    iget-object v8, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1459
    :cond_cb
    if-eqz v6, :cond_d8

    .line 1460
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "package_verifier_enable"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1464
    :cond_d8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    throw v7
.end method

.method private _setApplicationInstallationDisabled(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 1658
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1659
    if-eqz p2, :cond_12

    .line 1661
    const/4 v1, 0x4

    :try_start_7
    invoke-direct {p0, p2, p1, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1664
    const/16 v2, 0x8

    if-nez p3, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_15

    .line 1671
    :cond_12
    :goto_12
    return-void

    .line 1664
    :cond_13
    const/4 v1, 0x0

    goto :goto_f

    .line 1667
    :catch_15
    move-exception v0

    .line 1668
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private _setApplicationUninstallationDisabled(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppUninstallation"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1849
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1850
    if-eqz p2, :cond_12

    .line 1852
    const/4 v2, 0x1

    :try_start_8
    invoke-direct {p0, p2, p1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1854
    const/16 v2, 0x400

    if-nez p3, :cond_13

    :goto_f
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_15

    .line 1860
    :cond_12
    :goto_12
    return-void

    .line 1854
    :cond_13
    const/4 v1, 0x0

    goto :goto_f

    .line 1856
    :catch_15
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private _uninstallApplication(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keepDataAndCache"    # Z

    .prologue
    .line 1532
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1533
    if-nez p1, :cond_8

    .line 1534
    const/4 v1, 0x0

    .line 1551
    :goto_7
    return v1

    .line 1535
    :cond_8
    const/4 v4, 0x0

    .line 1536
    .local v4, "unInstallFlags":I
    if-eqz p2, :cond_c

    .line 1537
    const/4 v4, 0x1

    .line 1540
    :cond_c
    const/4 v1, 0x0

    .line 1542
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1545
    .local v2, "token":J
    :try_start_11
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, p1, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackage(Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_1b
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    move-result v1

    .line 1549
    :goto_17
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 1546
    :catch_1b
    move-exception v0

    .line 1547
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_17

    .line 1549
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_20
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3904
    .local p4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p4, :cond_5

    if-nez p2, :cond_8

    .line 3905
    :cond_5
    const/4 v8, 0x0

    .line 3925
    :cond_6
    monitor-exit p0

    return v8

    .line 3906
    :cond_8
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    .line 3907
    .local v2, "callingUid":I
    const/4 v8, 0x1

    .line 3909
    .local v8, "result":Z
    if-eqz p4, :cond_3a

    .line 3910
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3911
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3912
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3913
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_33

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3914
    :cond_33
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_37

    goto :goto_13

    .line 3904
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "result":Z
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3919
    .restart local v2    # "callingUid":I
    .restart local v8    # "result":Z
    :cond_3a
    if-eqz p4, :cond_6

    .line 3920
    :try_start_3c
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3921
    .restart local v1    # "pkg":Ljava/lang/String;
    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_37

    move-result v0

    and-int/2addr v8, v0

    goto :goto_40
.end method

.method private addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3899
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private checkApplicationsStateToBeReconciled(I)V
    .registers 13
    .param p1, "uid"    # I

    .prologue
    .line 4775
    const/4 v1, 0x0

    .line 4778
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4780
    .local v3, "exist":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4782
    .local v5, "pkgs":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_19

    .line 4783
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4786
    :cond_19
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "APPLICATION"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "controlState"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4789
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 4790
    const-string v6, "packageName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4792
    .local v4, "pkgName":Ljava/lang/String;
    const-string v6, "controlState"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4795
    .local v0, "controlState":I
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2e

    .line 4796
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4797
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_55
    .catchall {:try_start_1 .. :try_end_54} :catchall_77

    goto :goto_2e

    .line 4806
    .end local v0    # "controlState":I
    .end local v3    # "exist":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":Ljava/lang/StringBuilder;
    :catch_55
    move-exception v2

    .line 4807
    .local v2, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnAppReconcileNeeded"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_77

    .line 4810
    if-eqz v1, :cond_62

    .line 4811
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4814
    :cond_62
    return-void

    .line 4801
    .restart local v3    # "exist":Ljava/lang/String;
    .restart local v5    # "pkgs":Ljava/lang/StringBuilder;
    :cond_63
    :try_start_63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_74

    .line 4802
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_55
    .catchall {:try_start_63 .. :try_end_74} :catchall_77

    .line 4810
    :cond_74
    if-eqz v1, :cond_62

    goto :goto_5f

    .end local v3    # "exist":Ljava/lang/String;
    .end local v5    # "pkgs":Ljava/lang/StringBuilder;
    :catchall_77
    move-exception v6

    if-eqz v1, :cond_7d

    .line 4811
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4810
    :cond_7d
    throw v6
.end method

.method private checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 2271
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2272
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2274
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2276
    const/4 v1, 0x1

    monitor-exit v2

    .line 2280
    :goto_29
    return v1

    .line 2279
    :cond_2a
    monitor-exit v2

    .line 2280
    const/4 v1, 0x0

    goto :goto_29

    .line 2279
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 3107
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 3112
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 3108
    :catch_5
    move-exception v0

    .line 3109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3110
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "aRawData"    # Ljava/lang/String;

    .prologue
    .line 3663
    if-nez p1, :cond_5

    .line 3664
    const-string p1, "<invalid>"

    .line 3671
    .end local p1    # "aRawData":Ljava/lang/String;
    :cond_4
    :goto_4
    return-object p1

    .line 3666
    .restart local p1    # "aRawData":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 3667
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3668
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 3666
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private createAdminMap(J)V
    .registers 7
    .param p1, "adminUid"    # J

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_db

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 524
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v1, "PermissionInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, "SignatureInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "SignatureInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "UninstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v1, "UninstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v1, "PackageNameStopBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v1, "PackageNameStopWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v1, "PackageNameWidgetBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v1, "PackageNameWidgetWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v1, "PackageNameNotificationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "PackageNameNotificationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "RevocationCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "OcspCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "PackageNameClearDataBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "PackageNameClearDataWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "PackageNameClearCacheBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "PackageNameClearCacheWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_db
    monitor-exit v2

    .line 554
    return-void

    .line 553
    :catchall_dd
    move-exception v1

    monitor-exit v2
    :try_end_df
    .catchall {:try_start_3 .. :try_end_df} :catchall_dd

    throw v1
.end method

.method private enforceAppPermission()I
    .registers 3

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceAppPermission(I)I
    .registers 4
    .param p1, "containerId"    # I

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 271
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private enforceBackupAppPermission()I
    .registers 3

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_BACKUP"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceCertificatePermission()I
    .registers 3

    .prologue
    .line 4850
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 4851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getActualApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1215
    const/4 v1, 0x0

    .line 1216
    .local v1, "enabled":Z
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1218
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1231
    :goto_c
    return v3

    .line 1221
    :cond_d
    if-eqz p1, :cond_19

    .line 1223
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_35

    move-result v2

    .line 1224
    .local v2, "value":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_33

    move v1, v3

    .line 1230
    .end local v2    # "value":I
    :cond_19
    :goto_19
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualApplicationStateEnabled() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 1231
    goto :goto_c

    .line 1224
    .restart local v2    # "value":I
    :cond_33
    const/4 v1, 0x0

    goto :goto_19

    .line 1225
    .end local v2    # "value":I
    :catch_35
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method private getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3296
    const/4 v1, 0x0

    .line 3297
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3298
    if-eqz p1, :cond_f

    .line 3300
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    .line 3307
    :cond_f
    :goto_f
    return-object v1

    .line 3302
    :catch_10
    move-exception v0

    .line 3303
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 4823
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4824
    :try_start_3
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 4826
    .local v5, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v5, :cond_44

    .line 4827
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4828
    .local v3, "uid":J
    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_f

    .line 4831
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4832
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_f

    .line 4833
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 4834
    .local v2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_f

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4835
    const/4 v6, 0x1

    monitor-exit v7

    .line 4841
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "uid":J
    :goto_43
    return v6

    .line 4840
    :cond_44
    monitor-exit v7

    .line 4841
    const/4 v6, 0x0

    goto :goto_43

    .line 4840
    .end local v5    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_47
    move-exception v6

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v6
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2196
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2198
    .local v4, "pkg":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    if-eqz p2, :cond_4e

    .line 2200
    :try_start_7
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2201
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_13

    .line 2202
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2204
    :cond_13
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    .line 2205
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1b
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    .line 2206
    .local v6, "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2b

    .line 2205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2209
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :catch_2b
    move-exception v1

    .line 2210
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ApplicationPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-object v4

    .line 2215
    :cond_4e
    if-nez p1, :cond_88

    const-string p1, ""

    .line 2216
    :goto_52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4d

    .line 2218
    :try_start_58
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2220
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_4d

    .line 2221
    iput-object p1, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2222
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_70

    .line 2223
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2225
    :cond_70
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    .line 2226
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_78
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    .line 2227
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_85} :catch_8d

    .line 2226
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 2215
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    .line 2231
    :catch_8d
    move-exception v1

    .line 2232
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2233
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method private getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2709
    const/4 v1, 0x0

    .line 2710
    .local v1, "pkgst":Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2711
    if-eqz p1, :cond_2a

    .line 2712
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2713
    .local v0, "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2715
    .local v2, "token":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 2716
    monitor-enter v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2e

    .line 2717
    :goto_16
    :try_start_16
    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_2b

    if-nez v4, :cond_20

    .line 2719
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b

    goto :goto_16

    .line 2720
    :catch_1e
    move-exception v4

    goto :goto_16

    .line 2723
    :cond_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2b

    .line 2725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2726
    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_2a

    .line 2727
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2731
    .end local v0    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .end local v2    # "token":J
    :cond_2a
    return-object v1

    .line 2723
    .restart local v0    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .restart local v2    # "token":J
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 2725
    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2726
    iget-boolean v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_38

    .line 2727
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2725
    :cond_38
    throw v4
.end method

.method private getApplicationStateList(ILjava/lang/String;)Ljava/util/List;
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3967
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    .line 3969
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3970
    :try_start_6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3971
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 3973
    .local v8, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v8, :cond_68

    .line 3974
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3975
    .local v6, "uid":J
    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v9

    if-ne v9, p1, :cond_17

    .line 3978
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3979
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_17

    .line 3980
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 3981
    .local v3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3982
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 3988
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "uid":J
    .end local v8    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_65
    move-exception v9

    monitor-exit v10
    :try_end_67
    .catchall {:try_start_6 .. :try_end_67} :catchall_65

    throw v9

    .line 3987
    .restart local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_68
    :try_start_68
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v10
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_65

    return-object v9
.end method

.method private getApplicationStateList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
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

    .prologue
    .line 3963
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2053
    const/4 v7, 0x0

    .line 2054
    .local v7, "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2055
    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "packageName"

    aput-object v0, v5, v9

    const-string v0, "applicationInstallationCount"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v1, "applicationUninstallationCount"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "managedApp"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "install_sourceMDM"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "controlState"

    aput-object v1, v5, v0

    .line 2060
    .local v5, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2063
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_b8

    .line 2064
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2065
    .restart local v7    # "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    :goto_39
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 2066
    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    .line 2067
    .local v6, "appInfo":Landroid/app/enterprise/ManagedAppInfo;
    const-string v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 2069
    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 2071
    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 2073
    const-string v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 2075
    const-string v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 2077
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    move v0, v9

    :goto_91
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 2080
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move v0, v9

    :goto_9c
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 2082
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v9

    :goto_a7
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 2084
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_ad
    move v0, v10

    .line 2077
    goto :goto_91

    :cond_af
    move v0, v9

    goto :goto_91

    :cond_b1
    move v0, v10

    .line 2080
    goto :goto_9c

    :cond_b3
    move v0, v10

    .line 2082
    goto :goto_a7

    .line 2086
    .end local v6    # "appInfo":Landroid/app/enterprise/ManagedAppInfo;
    :cond_b5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2089
    :cond_b8
    if-eqz v7, :cond_cf

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_cf

    .line 2090
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    .line 2092
    :goto_ce
    return-object v0

    :cond_cf
    const/4 v0, 0x0

    goto :goto_ce
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4897
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDebugMemoryInfo(ILandroid/app/ActivityManager;)J
    .registers 7
    .param p1, "pid"    # I
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    const/4 v3, 0x0

    .line 2650
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 2651
    .local v1, "pidArray":[I
    aput p1, v1, v3

    .line 2652
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 2653
    .local v0, "memInfoArray":[Landroid/os/Debug$MemoryInfo;
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    return-wide v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 254
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 257
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1236
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "pkg":Ljava/lang/String;
    :goto_a
    return-object v0

    .line 1236
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 3888
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPidList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3680
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3681
    .local v3, "lProcDir":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3682
    .local v2, "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 3684
    .local v1, "lFiles":[Ljava/lang/String;
    if-nez v1, :cond_13

    .line 3697
    :cond_12
    return-object v2

    .line 3688
    :cond_13
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPidList: process count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    array-length v4, v1

    if-ge v0, v4, :cond_12

    .line 3692
    const/4 v4, 0x1

    aget-object v5, v1, v0

    const-string v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_48

    .line 3693
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3690
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method

.method private getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3314
    const/4 v1, 0x0

    .line 3315
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3316
    if-eqz p1, :cond_f

    .line 3318
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    .line 3325
    :cond_f
    :goto_f
    return-object v1

    .line 3320
    :catch_10
    move-exception v0

    .line 3321
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ApplicationPolicy"

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

    goto :goto_f
.end method

.method private getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4187
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4188
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4189
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4192
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_36

    const/4 v0, 0x0

    .line 4193
    .local v0, "N":I
    :goto_1a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_3b

    .line 4194
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 4195
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4192
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1a

    .line 4198
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_3b
    return-object v4
.end method

.method private getSamsungWidgets()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4223
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4224
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4225
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4226
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4227
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4229
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4230
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 4232
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3d
    return-object v4
.end method

.method private getSurfaceWidgets()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4238
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4239
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4240
    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4241
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4243
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4244
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 4246
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3d
    return-object v4
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3345
    if-nez p0, :cond_4

    .line 3349
    :cond_3
    :goto_3
    return-object v1

    .line 3345
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

    .line 3346
    :catch_10
    move-exception v0

    .line 3347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getWidgetProviderDisabledList()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4328
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 4329
    .local v6, "ret":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "disabledWidgetComponents"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4331
    .local v5, "list":Ljava/lang/String;
    if-eqz v5, :cond_2c

    .line 4332
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4333
    .local v2, "components":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_18
    if-ge v3, v4, :cond_2c

    aget-object v1, v0, v3

    .line 4334
    .local v1, "component":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 4335
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4333
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 4339
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "components":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2c
    return-object v6
.end method

.method private isActiveAdmin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3876
    if-nez p1, :cond_5

    .line 3884
    :cond_4
    :goto_4
    return v0

    .line 3880
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_4

    move v0, v1

    .line 3881
    goto :goto_4
.end method

.method private isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "showMsg"    # Z

    .prologue
    .line 2284
    const/4 v5, 0x1

    .line 2286
    .local v5, "install":Z
    const-string v9, "ApplicationPolicy"

    const-string v10, "isApplicationInstallationEnabled"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2289
    :try_start_b
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v9, :cond_17

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2290
    :cond_17
    monitor-exit v10

    move v6, v5

    .line 2387
    .end local v5    # "install":Z
    .local v6, "install":I
    :goto_19
    return v6

    .line 2292
    .end local v6    # "install":I
    .restart local v5    # "install":Z
    :cond_1a
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_259

    move-result-object v1

    .line 2295
    .local v1, "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_start_1e
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2297
    .local v8, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25c

    .line 2298
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 2299
    .local v7, "uid":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v9

    if-nez v9, :cond_28

    .line 2307
    const-string v9, "PackageNameInstallationWhitelist"

    invoke-direct {p0, v7, v9, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 2309
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    if-nez v5, :cond_28

    .line 2318
    const-string v9, "PackageNameInstallationBlacklist"

    invoke-direct {p0, v7, v9, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bb

    const/4 v5, 0x1

    .line 2320
    :goto_67
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    if-nez v5, :cond_bd

    .line 2323
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_99} :catch_1f4
    .catchall {:try_start_1e .. :try_end_99} :catchall_239

    .line 2378
    if-eqz p3, :cond_b7

    if-nez v5, :cond_b7

    .line 2379
    :try_start_9d
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2380
    .local v4, "i":Landroid/content/Intent;
    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x104029a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2324
    .end local v4    # "i":Landroid/content/Intent;
    :cond_b7
    monitor-exit v10
    :try_end_b8
    .catchall {:try_start_9d .. :try_end_b8} :catchall_259

    move v6, v5

    .restart local v6    # "install":I
    goto/16 :goto_19

    .line 2318
    .end local v6    # "install":I
    :cond_bb
    const/4 v5, 0x0

    goto :goto_67

    .line 2328
    :cond_bd
    :try_start_bd
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2331
    .local v0, "appPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "PermissionInstallationBlacklist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v0, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 2333
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    .line 2335
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    if-nez v5, :cond_12f

    .line 2338
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_10d} :catch_1f4
    .catchall {:try_start_bd .. :try_end_10d} :catchall_239

    .line 2378
    if-eqz p3, :cond_12b

    if-nez v5, :cond_12b

    .line 2379
    :try_start_111
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2380
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x104029a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2339
    .end local v4    # "i":Landroid/content/Intent;
    :cond_12b
    monitor-exit v10
    :try_end_12c
    .catchall {:try_start_111 .. :try_end_12c} :catchall_259

    move v6, v5

    .restart local v6    # "install":I
    goto/16 :goto_19

    .line 2345
    .end local v6    # "install":I
    :cond_12f
    :try_start_12f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2348
    .local v2, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationWhitelist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v2, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2350
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationWhitelist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v11, "*"

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_28

    .line 2355
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2358
    .restart local v2    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationBlacklist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v2, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 2359
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationBlacklist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v11, "*"

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19f

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a0

    .line 2361
    :cond_19f
    const/4 v5, 0x0

    .line 2365
    :cond_1a0
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    if-nez v5, :cond_28

    .line 2368
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_1d2} :catch_1f4
    .catchall {:try_start_12f .. :try_end_1d2} :catchall_239

    .line 2378
    if-eqz p3, :cond_1f0

    if-nez v5, :cond_1f0

    .line 2379
    :try_start_1d6
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2380
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x104029a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2369
    .end local v4    # "i":Landroid/content/Intent;
    :cond_1f0
    monitor-exit v10
    :try_end_1f1
    .catchall {:try_start_1d6 .. :try_end_1f1} :catchall_259

    move v6, v5

    .restart local v6    # "install":I
    goto/16 :goto_19

    .line 2374
    .end local v0    # "appPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "install":I
    .end local v7    # "uid":Ljava/lang/Long;
    .end local v8    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_1f4
    move-exception v3

    .line 2375
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1f5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2376
    const-string v9, "ApplicationPolicy"

    const-string v11, "Could not retrieve permissions & signature for package"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ff
    .catchall {:try_start_1f5 .. :try_end_1ff} :catchall_239

    .line 2378
    if-eqz p3, :cond_21d

    if-nez v5, :cond_21d

    .line 2379
    :try_start_203
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2380
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x104029a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2385
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_21d
    :goto_21d
    monitor-exit v10
    :try_end_21e
    .catchall {:try_start_203 .. :try_end_21e} :catchall_259

    .line 2386
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 2387
    .restart local v6    # "install":I
    goto/16 :goto_19

    .line 2378
    .end local v6    # "install":I
    :catchall_239
    move-exception v9

    if-eqz p3, :cond_258

    if-nez v5, :cond_258

    .line 2379
    :try_start_23e
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2380
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v11, "message"

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v13, 0x104029a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2378
    .end local v4    # "i":Landroid/content/Intent;
    :cond_258
    throw v9

    .line 2385
    .end local v1    # "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :catchall_259
    move-exception v9

    monitor-exit v10
    :try_end_25b
    .catchall {:try_start_23e .. :try_end_25b} :catchall_259

    throw v9

    .line 2378
    .restart local v1    # "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    .restart local v8    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_25c
    if-eqz p3, :cond_21d

    if-nez v5, :cond_21d

    .line 2379
    :try_start_260
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2380
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x104029a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_27a
    .catchall {:try_start_260 .. :try_end_27a} :catchall_259

    goto :goto_21d
.end method

.method private declared-synchronized isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .param p1, "containerId"    # I
    .param p2, "keyBlack"    # Ljava/lang/String;
    .param p3, "keyWhite"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4007
    monitor-enter p0

    :try_start_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    move-result v11

    if-eqz v11, :cond_a

    .line 4008
    const/4 v1, 0x0

    .line 4042
    :goto_8
    monitor-exit p0

    return v1

    .line 4011
    :cond_a
    :try_start_a
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 4012
    :try_start_d
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-nez v11, :cond_1a

    .line 4013
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_8

    .line 4043
    :catchall_14
    move-exception v11

    monitor-exit v12
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    :try_start_16
    throw v11
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 4007
    :catchall_17
    move-exception v11

    monitor-exit p0

    throw v11

    .line 4015
    :cond_1a
    :try_start_1a
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 4016
    .local v10, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 4017
    .local v1, "blocked":Z
    if-eqz v10, :cond_a8

    .line 4020
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 4021
    .local v8, "uid":J
    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v11

    if-ne v11, p1, :cond_27

    .line 4024
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 4025
    .local v4, "packagesBlack":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 4026
    .local v5, "packagesWhite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4027
    .local v6, "pkgB":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_85

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 4029
    :cond_85
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4030
    .local v7, "pkgW":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a5

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 4031
    :cond_a5
    const/4 v1, 0x0

    .line 4032
    goto :goto_27

    .line 4036
    .end local v7    # "pkgW":Ljava/lang/String;
    :cond_a7
    const/4 v1, 0x1

    .line 4042
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packagesBlack":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "packagesWhite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkgB":Ljava/lang/String;
    .end local v8    # "uid":J
    :cond_a8
    monitor-exit v12
    :try_end_a9
    .catchall {:try_start_1a .. :try_end_a9} :catchall_14

    goto/16 :goto_8
.end method

.method private isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "keyBlack"    # Ljava/lang/String;
    .param p2, "keyWhite"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4003
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadApplicationBlacklistWhitelist()V
    .registers 27

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 339
    :try_start_7
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    sput-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v19

    .line 344
    .local v19, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v22, "packageName"

    aput-object v22, v7, v20

    const/16 v20, 0x1

    const-string v22, "controlState"

    aput-object v22, v7, v20

    .line 345
    .local v7, "columns":[Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v8, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v22, "signature"

    aput-object v22, v8, v20

    const/16 v20, 0x1

    const-string v22, "controlState"

    aput-object v22, v8, v20

    .line 348
    .local v8, "columnsSignTbl":[Ljava/lang/String;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 351
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4a9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 353
    .local v5, "adminUid":J
    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v17

    .line 354
    .local v17, "storedUid":I
    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_38f

    move-result v10

    .line 355
    .local v10, "containerId":I
    const/4 v15, 0x1

    .line 357
    .local v15, "isAdminUsesAppPolicy":Z
    :try_start_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v9

    .line 359
    .local v9, "compName":Landroid/content/ComponentName;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v20

    const/16 v22, 0x1b

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_4ab
    .catchall {:try_start_64 .. :try_end_7f} :catchall_38f

    move-result v15

    .line 362
    .end local v9    # "compName":Landroid/content/ComponentName;
    :goto_80
    if-eqz v15, :cond_4b

    .line 366
    :try_start_82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v4, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v20, "PackageNameInstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v20, "PackageNameInstallationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v20, "PermissionInstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v20, "SignatureInstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v20, "SignatureInstallationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v20, "UninstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v20, "UninstallationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v20, "PackageNameStopBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v20, "PackageNameStopWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v20, "PackageNameWidgetWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v20, "PackageNameWidgetBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v20, "PackageNameNotificationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v20, "PackageNameNotificationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v20, "RevocationCheck"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v20, "OcspCheck"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v20, "PackageNameClearDataBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v20, "PackageNameClearDataWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v20, "PackageNameClearCacheBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v20, "PackageNameClearCacheWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v22, "APPLICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 397
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_395

    .line 398
    :cond_1a5
    :goto_1a5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_392

    .line 399
    const-string v20, "packageName"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 400
    .local v16, "pkgName":Ljava/lang/String;
    const-string v20, "controlState"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 402
    .local v11, "controlState":I
    const/16 v20, 0x4

    and-int/lit8 v22, v11, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e2

    .line 403
    const-string v20, "PackageNameInstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_1e2
    const/16 v20, 0x8

    and-int/lit8 v22, v11, 0x8

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1fd

    .line 406
    const-string v20, "PackageNameInstallationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_1fd
    const/16 v20, 0x1

    and-int/lit8 v22, v11, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_218

    .line 409
    const-string v20, "UninstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_218
    const/16 v20, 0x400

    and-int/lit16 v0, v11, 0x400

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_235

    .line 412
    const-string v20, "UninstallationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_235
    const/16 v20, 0x10

    and-int/lit8 v22, v11, 0x10

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_250

    .line 417
    const-string v20, "PackageNameStopBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_250
    const/16 v20, 0x20

    and-int/lit8 v22, v11, 0x20

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_26b

    .line 420
    const-string v20, "PackageNameStopWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_26b
    const/16 v20, 0x40

    and-int/lit8 v22, v11, 0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_286

    .line 423
    const-string v20, "PackageNameWidgetBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_286
    const/16 v20, 0x80

    and-int/lit16 v0, v11, 0x80

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a3

    .line 427
    const-string v20, "PackageNameWidgetWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_2a3
    const/16 v20, 0x100

    and-int/lit16 v0, v11, 0x100

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c0

    .line 431
    const-string v20, "PackageNameNotificationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2c0
    const/16 v20, 0x200

    and-int/lit16 v0, v11, 0x200

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2dd

    .line 435
    const-string v20, "PackageNameNotificationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_2dd
    const/16 v20, 0x800

    and-int/lit16 v0, v11, 0x800

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2fa

    .line 442
    const-string v20, "RevocationCheck"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_2fa
    const/16 v20, 0x1000

    and-int/lit16 v0, v11, 0x1000

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_317

    .line 446
    const-string v20, "OcspCheck"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_317
    const/16 v20, 0x2000

    and-int/lit16 v0, v11, 0x2000

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_334

    .line 452
    const-string v20, "PackageNameClearDataBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_334
    const/16 v20, 0x4000

    and-int/lit16 v0, v11, 0x4000

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_351

    .line 455
    const-string v20, "PackageNameClearDataWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_351
    const v20, 0x8000

    const v22, 0x8000

    and-int v22, v22, v11

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_370

    .line 460
    const-string v20, "PackageNameClearCacheBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_370
    const/high16 v20, 0x10000

    const/high16 v22, 0x10000

    and-int v22, v22, v11

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a5

    .line 463
    const-string v20, "PackageNameClearCacheWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a5

    .line 514
    .end local v4    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "adminUid":J
    .end local v7    # "columns":[Ljava/lang/String;
    .end local v8    # "columnsSignTbl":[Ljava/lang/String;
    .end local v10    # "containerId":I
    .end local v11    # "controlState":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "isAdminUsesAppPolicy":Z
    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "storedUid":I
    .end local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_38f
    move-exception v20

    monitor-exit v21
    :try_end_391
    .catchall {:try_start_82 .. :try_end_391} :catchall_38f

    throw v20

    .line 467
    .restart local v4    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "adminUid":J
    .restart local v7    # "columns":[Ljava/lang/String;
    .restart local v8    # "columnsSignTbl":[Ljava/lang/String;
    .restart local v10    # "containerId":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "isAdminUsesAppPolicy":Z
    .restart local v17    # "storedUid":I
    .restart local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_392
    :try_start_392
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v22, "APPLICATION_PERMISSION"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "permission"

    aput-object v25, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v17

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 475
    if-eqz v12, :cond_3e2

    .line 476
    :goto_3b9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3df

    .line 477
    const-string v20, "PermissionInstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    const-string v22, "permission"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3b9

    .line 480
    :cond_3df
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_3e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v22, "APPLICATION_SIGNATURE2"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v10, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 485
    if-eqz v12, :cond_452

    .line 486
    :cond_3f6
    :goto_3f6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_44f

    .line 487
    const-string v20, "signature"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 488
    .local v18, "str":Ljava/lang/String;
    const-string v20, "controlState"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 490
    .restart local v11    # "controlState":I
    const/16 v20, 0x1

    and-int/lit8 v22, v11, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_433

    .line 492
    const-string v20, "SignatureInstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_433
    const/16 v20, 0x2

    and-int/lit8 v22, v11, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3f6

    .line 496
    const-string v20, "SignatureInstallationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3f6

    .line 499
    .end local v11    # "controlState":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_44f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_452
    .catchall {:try_start_392 .. :try_end_452} :catchall_38f

    .line 505
    :cond_452
    :try_start_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_MISC"

    const-string v25, "appNotificationMode"

    move-object/from16 v0, v23

    move/from16 v1, v17

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_452 .. :try_end_47f} :catch_48e
    .catchall {:try_start_452 .. :try_end_47f} :catchall_38f

    .line 512
    :goto_47f
    :try_start_47f
    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4b

    .line 507
    :catch_48e
    move-exception v14

    .line 508
    .local v14, "ignore":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47f

    .line 514
    .end local v4    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "adminUid":J
    .end local v10    # "containerId":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v14    # "ignore":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    .end local v15    # "isAdminUsesAppPolicy":Z
    .end local v17    # "storedUid":I
    :cond_4a9
    monitor-exit v21
    :try_end_4aa
    .catchall {:try_start_47f .. :try_end_4aa} :catchall_38f

    .line 517
    return-void

    .line 361
    .restart local v5    # "adminUid":J
    .restart local v10    # "containerId":I
    .restart local v15    # "isAdminUsesAppPolicy":Z
    .restart local v17    # "storedUid":I
    :catch_4ab
    move-exception v20

    goto/16 :goto_80
.end method

.method private manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "homePkgName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 4454
    const/16 v16, 0x0

    .line 4456
    .local v16, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 4457
    .local v12, "pMgr":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4458
    .local v13, "pickAppShortcut":Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4459
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 4460
    .local v15, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v15, :cond_4c

    .line 4461
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 4462
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 4463
    const/16 v16, 0x1

    .line 4470
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4c
    if-eqz v16, :cond_fb

    .line 4471
    const/4 v2, 0x0

    .line 4473
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    const/16 v18, 0x80

    :try_start_51
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4474
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 4475
    .local v17, "shortcutIntent":Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4476
    .local v10, "installAppShorcut":Landroid/content/Intent;
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4477
    const-string v18, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 4479
    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4480
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_8f

    .line 4481
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4482
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4484
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8f
    const-string v18, "duplicate"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4485
    if-eqz p2, :cond_f0

    .line 4486
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4487
    .local v7, "homeIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 4489
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 4490
    .local v6, "flag":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_c5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_eb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 4491
    .local v14, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c5

    .line 4492
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4493
    const/4 v6, 0x1

    .line 4497
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_eb
    if-nez v6, :cond_f0

    .line 4498
    const/16 v18, 0x0

    .line 4506
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "flag":Z
    .end local v7    # "homeIntent":Landroid/content/Intent;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "installAppShorcut":Landroid/content/Intent;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "shortcutIntent":Landroid/content/Intent;
    :goto_ef
    return v18

    .line 4500
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "installAppShorcut":Landroid/content/Intent;
    .restart local v17    # "shortcutIntent":Landroid/content/Intent;
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_fb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_fb} :catch_fe

    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "installAppShorcut":Landroid/content/Intent;
    .end local v17    # "shortcutIntent":Landroid/content/Intent;
    :cond_fb
    :goto_fb
    move/from16 v18, v16

    .line 4506
    goto :goto_ef

    .line 4501
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_fe
    move-exception v5

    .line 4502
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "ApplicationPolicy"

    const-string v19, "something wrong here , package name not found"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4503
    const/16 v16, 0x0

    goto :goto_fb
.end method

.method private putWidgetProviderDisabledList(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4318
    .local p1, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4319
    .local v2, "list":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 4320
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4322
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_30
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "disabledWidgetComponents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4324
    return-void
.end method

.method private readAppMemoryInfo(Z)Ljava/util/List;
    .registers 27
    .param p1, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3397
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3401
    .local v21, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 3403
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/4 v14, 0x0

    .line 3405
    .local v14, "lPidArray":[I
    if-nez p1, :cond_ed

    .line 3406
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 3409
    .local v20, "lRunningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 3410
    const/4 v8, 0x0

    .line 3411
    .local v8, "k":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "k":I
    .local v9, "k":I
    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_63

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3412
    .local v19, "lRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "k":I
    .restart local v8    # "k":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    aput v22, v14, v9

    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    goto :goto_4b

    .end local v19    # "lRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_63
    move v8, v9

    .line 3423
    .end local v9    # "k":I
    .end local v20    # "lRunningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v8    # "k":I
    :goto_64
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    .line 3424
    .local v12, "lMemInfoArray":[Landroid/os/Debug$MemoryInfo;
    if-eqz v12, :cond_94

    if-eqz v14, :cond_94

    .line 3425
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "memory length : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v12

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "pids length"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    :cond_94
    if-eqz v12, :cond_119

    .line 3429
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_97
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_119

    .line 3430
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/proc/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v14, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/cmdline"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3431
    .local v16, "lPkgName":Ljava/lang/String;
    if-eqz v16, :cond_ea

    .line 3432
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3433
    .local v10, "lCmdLine":Ljava/lang/String;
    aget-object v11, v12, v6

    .line 3434
    .local v11, "lMemInfo":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 3435
    .local v17, "lRamSize":J
    new-instance v22, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3429
    .end local v10    # "lCmdLine":Ljava/lang/String;
    .end local v11    # "lMemInfo":Landroid/os/Debug$MemoryInfo;
    .end local v17    # "lRamSize":J
    :cond_ea
    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    .line 3415
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "k":I
    .end local v12    # "lMemInfoArray":[Landroid/os/Debug$MemoryInfo;
    .end local v16    # "lPkgName":Ljava/lang/String;
    :cond_ed
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v15

    .line 3416
    .local v15, "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 3417
    const/4 v8, 0x0

    .line 3418
    .restart local v8    # "k":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    :goto_ff
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3419
    .local v13, "lPid":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "k":I
    .restart local v8    # "k":I
    aput v13, v14, v9
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_113} :catch_115

    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    goto :goto_ff

    .line 3439
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "k":I
    .end local v13    # "lPid":I
    .end local v14    # "lPidArray":[I
    .end local v15    # "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_115
    move-exception v5

    .line 3440
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3443
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_119
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo end"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    return-object v21

    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "k":I
    .restart local v14    # "lPidArray":[I
    .restart local v15    # "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_121
    move v8, v9

    .end local v9    # "k":I
    .restart local v8    # "k":I
    goto/16 :goto_64
.end method

.method private readAppSizeInfo()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3489
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 3492
    .local v3, "lPkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3493
    .local v6, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3495
    .local v9, "token":J
    :try_start_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3496
    .local v2, "lPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3497
    .local v4, "lPkgName":Ljava/lang/String;
    if-eqz v4, :cond_1b

    .line 3498
    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 3499
    .local v5, "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 3500
    monitor-enter v5
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_36} :catch_61
    .catchall {:try_start_17 .. :try_end_36} :catchall_73

    .line 3501
    :goto_36
    :try_start_36
    iget-boolean v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_70

    if-nez v11, :cond_40

    .line 3503
    :try_start_3a
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_70

    goto :goto_36

    .line 3504
    :catch_3e
    move-exception v11

    goto :goto_36

    .line 3507
    :cond_40
    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_70

    .line 3508
    :try_start_41
    iget-boolean v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_1b

    .line 3509
    iget-object v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_1b

    .line 3510
    iget-object v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    .line 3514
    .local v7, "lTotalSize":J
    new-instance v11, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    invoke-direct {v11, p0, v4, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_60} :catch_61
    .catchall {:try_start_41 .. :try_end_60} :catchall_73

    goto :goto_1b

    .line 3519
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lPkgName":Ljava/lang/String;
    .end local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .end local v7    # "lTotalSize":J
    :catch_61
    move-exception v0

    .line 3520
    .local v0, "e":Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_73

    .line 3522
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3525
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    return-object v6

    .line 3507
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "lPkgName":Ljava/lang/String;
    .restart local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    :catchall_70
    move-exception v11

    :try_start_71
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v11
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_73} :catch_61
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 3522
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lPkgName":Ljava/lang/String;
    .end local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    :catchall_73
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "aFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3625
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_1e

    .line 3632
    .local v2, "lFstream":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 3634
    .local v1, "lBufReader":Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_3b
    .catchall {:try_start_d .. :try_end_10} :catchall_68

    move-result-object v3

    .line 3641
    if-eqz v2, :cond_17

    .line 3642
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_7b

    .line 3643
    const/4 v2, 0x0

    .line 3645
    :cond_17
    if-eqz v1, :cond_1d

    .line 3646
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_7d

    .line 3647
    :goto_1c
    const/4 v1, 0x0

    .line 3638
    .end local v1    # "lBufReader":Ljava/io/BufferedReader;
    .end local v2    # "lFstream":Ljava/io/FileReader;
    :cond_1d
    :goto_1d
    return-object v3

    .line 3626
    :catch_1e
    move-exception v0

    .line 3627
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3628
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File access error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 3635
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v2    # "lFstream":Ljava/io/FileReader;
    :catch_3b
    move-exception v0

    .line 3636
    .local v0, "e":Ljava/io/IOException;
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3637
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_68

    .line 3641
    if-eqz v2, :cond_5d

    .line 3642
    :try_start_59
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 3643
    const/4 v2, 0x0

    .line 3645
    :cond_5d
    if-eqz v1, :cond_1d

    .line 3646
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_1c

    .line 3649
    :catch_63
    move-exception v0

    .line 3650
    :goto_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 3640
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_68
    move-exception v3

    .line 3641
    if-eqz v2, :cond_6f

    .line 3642
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 3643
    const/4 v2, 0x0

    .line 3645
    :cond_6f
    if-eqz v1, :cond_75

    .line 3646
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_76

    .line 3647
    const/4 v1, 0x0

    .line 3640
    :cond_75
    :goto_75
    throw v3

    .line 3649
    :catch_76
    move-exception v0

    .line 3650
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    .line 3649
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7b
    move-exception v0

    goto :goto_64

    :catch_7d
    move-exception v0

    goto :goto_64
.end method

.method private reconcileApplicationsState()V
    .registers 11

    .prologue
    .line 4753
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4755
    .local v0, "apps":Ljava/lang/String;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_43

    .line 4756
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4757
    .local v5, "list":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_19
    if-ge v3, v4, :cond_3a

    aget-object v6, v1, v3

    .line 4758
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_37

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 4761
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 4757
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 4765
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_3a
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    .line 4772
    .end local v0    # "apps":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "list":[Ljava/lang/String;
    :cond_43
    :goto_43
    return-void

    .line 4769
    :catch_44
    move-exception v2

    .line 4770
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ApplicationPolicy"

    const-string v8, "error in reconcileApplicationsState"

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method private refreshWidgetStatus()V
    .registers 20

    .prologue
    .line 4254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4256
    :try_start_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2e

    .line 4259
    .local v14, "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v10, 0x0

    .line 4261
    .local v10, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v15}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders()Ljava/util/List;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_22
    .catchall {:try_start_d .. :try_end_14} :catchall_2e

    move-result-object v10

    .line 4267
    :goto_15
    if-nez v10, :cond_31

    .line 4268
    :try_start_17
    const-string v15, "ApplicationPolicy"

    const-string v17, "providerInfoList == null"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    monitor-exit v16

    .line 4314
    :goto_21
    return-void

    .line 4262
    :catch_22
    move-exception v5

    .line 4263
    .local v5, "ex":Landroid/os/RemoteException;
    const/4 v10, 0x0

    .line 4264
    const-string v15, "ApplicationPolicy"

    const-string v17, "Failed to get widget providers"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 4313
    .end local v5    # "ex":Landroid/os/RemoteException;
    .end local v10    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v14    # "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_2e
    move-exception v15

    monitor-exit v16
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_2e

    throw v15

    .line 4272
    .restart local v10    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v14    # "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_31
    :try_start_31
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4273
    .local v2, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v15, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 4276
    .end local v2    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets()Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets()Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4282
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v4

    .line 4283
    .local v4, "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 4284
    .local v11, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4285
    .local v12, "token":J
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_66
    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_91

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4286
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 4287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4289
    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 4292
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_91
    invoke-interface {v4, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4294
    const/4 v6, 0x0

    .line 4296
    .local v6, "hasDisabled":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_99
    :goto_99
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 4297
    .local v9, "p":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_99

    .line 4298
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4301
    const/4 v6, 0x1

    goto :goto_99

    .line 4304
    .end local v9    # "p":Landroid/content/ComponentName;
    :cond_c5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4306
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V

    .line 4309
    if-eqz v6, :cond_dd

    .line 4310
    new-instance v8, Landroid/content/Intent;

    const-string v15, "edm.intent.action.FORCE_LAUNCHER_REFRESH"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4311
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4313
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_dd
    monitor-exit v16
    :try_end_de
    .catchall {:try_start_31 .. :try_end_de} :catchall_2e

    goto/16 :goto_21
.end method

.method private refreshWidgetStatus(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4203
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4219
    :goto_6
    return-void

    .line 4206
    :cond_7
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4207
    const/4 v5, 0x0

    :try_start_b
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 4208
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v0

    .line 4209
    .local v0, "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4210
    .local v2, "p":Landroid/content/ComponentName;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4212
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4214
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .line 4218
    .end local v0    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Landroid/content/ComponentName;
    .end local v3    # "token":J
    :catchall_41
    move-exception v5

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_41

    throw v5

    .line 4216
    .restart local v0    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_44
    :try_start_44
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V

    .line 4218
    .end local v0    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_47
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_41

    goto :goto_6
.end method

.method private registerBootCompletedListener()V
    .registers 4

    .prologue
    .line 4171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4174
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 4181
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4182
    return-void
.end method

.method private registerPackageChangeReceiver()V
    .registers 5

    .prologue
    .line 1146
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_39

    .line 1147
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1149
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1150
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1151
    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1152
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1154
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    sput-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1197
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1198
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1203
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_39
    :goto_39
    return-void

    .line 1200
    :catch_3a
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private declared-synchronized removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 3935
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_33

    move-result v2

    .line 3937
    .local v2, "callingUid":I
    if-nez p4, :cond_a

    .line 3959
    :cond_8
    monitor-exit p0

    return v8

    .line 3941
    :cond_a
    const/4 v8, 0x1

    .line 3943
    .local v8, "result":Z
    if-eqz p4, :cond_36

    .line 3944
    :try_start_d
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3945
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3946
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3947
    .local v1, "pkg":Ljava/lang/String;
    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3948
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_33

    goto :goto_11

    .line 3935
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "result":Z
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3953
    .restart local v2    # "callingUid":I
    .restart local v8    # "result":Z
    :cond_36
    if-eqz p4, :cond_8

    .line 3954
    :try_start_38
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3955
    .restart local v1    # "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_33

    move-result v0

    and-int/2addr v8, v0

    goto :goto_3c
.end method

.method private removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3930
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "add"    # Z

    .prologue
    .line 732
    int-to-long v0, p2

    .line 733
    .local v0, "callingUid":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 735
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 736
    if-eqz p3, :cond_3d

    .line 737
    :try_start_9
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "permission"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    invoke-virtual {v3, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    monitor-exit v4

    .line 745
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_3c
    return v3

    .line 743
    :cond_3d
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 745
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    const-string v6, "permission"

    invoke-virtual {v3, v5, p2, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    monitor-exit v4

    goto :goto_3c

    .line 748
    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_9 .. :try_end_62} :catchall_60

    throw v3
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "containerId"    # I
    .param p4, "controlStateMask"    # I
    .param p5, "enableMask"    # Z

    .prologue
    .line 572
    monitor-enter p0

    int-to-long v7, p2

    .line 573
    .local v7, "callingUid":J
    if-lez p3, :cond_c

    .line 574
    :try_start_4
    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v7

    .line 575
    invoke-static {p3, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 578
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v4, "packageName"

    const-string v6, "controlState"

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 583
    .local v9, "controlState":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1f

    .line 584
    const/4 v9, 0x0

    .line 586
    :cond_1f
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 588
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_66

    .line 590
    sparse-switch p4, :sswitch_data_392

    .line 700
    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_63

    .line 702
    if-eqz p5, :cond_38c

    .line 703
    or-int/2addr v9, p4

    .line 715
    :goto_2c
    :try_start_2c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 716
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v4, "packageName"

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_66

    move-result v0

    monitor-exit p0

    return v0

    .line 593
    .end local v6    # "cv":Landroid/content/ContentValues;
    :sswitch_49
    if-eqz p5, :cond_69

    .line 594
    :try_start_4b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 700
    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_63

    :try_start_65
    throw v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 572
    .end local v9    # "controlState":I
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    .line 596
    .restart local v9    # "controlState":I
    :cond_69
    :try_start_69
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 600
    :sswitch_81
    if-eqz p5, :cond_9b

    .line 601
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 603
    :cond_9b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 607
    :sswitch_b4
    if-eqz p5, :cond_cf

    .line 608
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 610
    :cond_cf
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 614
    :sswitch_e8
    if-eqz p5, :cond_103

    .line 615
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 617
    :cond_103
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 621
    :sswitch_11c
    if-eqz p5, :cond_137

    .line 622
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 624
    :cond_137
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 627
    :sswitch_150
    if-eqz p5, :cond_16b

    .line 628
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 630
    :cond_16b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 633
    :sswitch_184
    if-eqz p5, :cond_19f

    .line 634
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 636
    :cond_19f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 639
    :sswitch_1b8
    if-eqz p5, :cond_1d3

    .line 640
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 642
    :cond_1d3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 645
    :sswitch_1ec
    if-eqz p5, :cond_207

    .line 646
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 648
    :cond_207
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 652
    :sswitch_220
    if-eqz p5, :cond_23b

    .line 653
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 655
    :cond_23b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 661
    :sswitch_254
    if-eqz p5, :cond_26f

    .line 662
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "RevocationCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 664
    :cond_26f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "RevocationCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 667
    :sswitch_288
    if-eqz p5, :cond_2a3

    .line 668
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "OcspCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 670
    :cond_2a3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "OcspCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 675
    :sswitch_2bc
    if-eqz p5, :cond_2d7

    .line 676
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 678
    :cond_2d7
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 681
    :sswitch_2f0
    if-eqz p5, :cond_30b

    .line 682
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 684
    :cond_30b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 687
    :sswitch_324
    if-eqz p5, :cond_33f

    .line 688
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 690
    :cond_33f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 693
    :sswitch_358
    if-eqz p5, :cond_373

    .line 694
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 696
    :cond_373
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_38a
    .catchall {:try_start_69 .. :try_end_38a} :catchall_63

    goto/16 :goto_28

    .line 705
    :cond_38c
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v9, v0

    goto/16 :goto_2c

    .line 590
    nop

    :sswitch_data_392
    .sparse-switch
        0x1 -> :sswitch_b4
        0x4 -> :sswitch_49
        0x8 -> :sswitch_81
        0x10 -> :sswitch_11c
        0x20 -> :sswitch_150
        0x40 -> :sswitch_1b8
        0x80 -> :sswitch_184
        0x100 -> :sswitch_1ec
        0x200 -> :sswitch_220
        0x400 -> :sswitch_e8
        0x800 -> :sswitch_254
        0x1000 -> :sswitch_288
        0x2000 -> :sswitch_2bc
        0x4000 -> :sswitch_2f0
        0x8000 -> :sswitch_324
        0x10000 -> :sswitch_358
    .end sparse-switch
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "controlStateMask"    # I
    .param p4, "enableMask"    # Z

    .prologue
    .line 562
    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z
    .registers 15
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "controlStateMask"    # I
    .param p4, "enableMask"    # Z

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string v3, "signature"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 760
    .local v8, "controlState":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_12

    .line 761
    const/4 v8, 0x0

    .line 764
    :cond_12
    if-nez p4, :cond_1a

    and-int v0, v8, p3

    if-eq v0, p3, :cond_1a

    .line 766
    const/4 v9, 0x1

    .line 807
    :goto_19
    return v9

    .line 769
    :cond_1a
    int-to-long v6, p2

    .line 770
    .local v6, "callingUid":J
    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 772
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    packed-switch p3, :pswitch_data_c0

    .line 789
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_60

    .line 791
    if-eqz p4, :cond_ae

    .line 792
    or-int/2addr v8, p3

    .line 796
    :goto_28
    const/4 v9, 0x1

    .line 797
    .local v9, "result":Z
    if-lez v8, :cond_b3

    .line 798
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 799
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string v3, "signature"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    .line 802
    goto :goto_19

    .line 776
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v9    # "result":Z
    :pswitch_46
    if-eqz p4, :cond_63

    .line 777
    :try_start_48
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 789
    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_60

    throw v0

    .line 779
    :cond_63
    :try_start_63
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    .line 783
    :pswitch_7b
    if-eqz p4, :cond_95

    .line 784
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 786
    :cond_95
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_63 .. :try_end_ac} :catchall_60

    goto/16 :goto_24

    .line 794
    :cond_ae
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v8, v0

    goto/16 :goto_28

    .line 803
    .restart local v9    # "result":Z
    :cond_b3
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string v2, "signature"

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_19

    .line 774
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_7b
    .end packed-switch
.end method

.method private setInstallSourceMDM(ILjava/lang/String;Z)V
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "stateValue"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1610
    if-ne p3, v6, :cond_1d

    .line 1611
    .local v6, "state":I
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1612
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1613
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1617
    return-void

    .line 1610
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "state":I
    :cond_1d
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private setManagedApp(ILjava/lang/String;Z)V
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "stateValue"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1600
    if-ne p3, v6, :cond_1d

    .line 1601
    .local v6, "state":I
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1602
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1603
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1607
    return-void

    .line 1600
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "state":I
    :cond_1d
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private updateCount(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "contentName"    # Ljava/lang/String;

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1208
    .local v6, "count":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1209
    .local v5, "cv":Landroid/content/ContentValues;
    if-gtz v6, :cond_28

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1212
    return-void

    .line 1209
    :cond_28
    add-int/lit8 v0, v6, 0x1

    goto :goto_15
.end method


# virtual methods
.method public addAppNotificationBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4350
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppNotificationWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4373
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3116
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppPackageNameToBlackList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3118
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3119
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3120
    const/4 v1, 0x0

    .line 3123
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_27
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3175
    const-string v1, "ApplicationPolicy"

    const-string v2, "addAppPackageNameToWhiteList"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3177
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3179
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3180
    const/4 v1, 0x0

    .line 3183
    :goto_16
    return v1

    :cond_17
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "appPermission"    # Ljava/lang/String;

    .prologue
    .line 2828
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2829
    .local v0, "callingUid":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2913
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2914
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public addAppSignatureToWhiteList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 2997
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2998
    .local v0, "callingUid":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "homePkgName"    # Ljava/lang/String;

    .prologue
    .line 4444
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 4445
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addPackageToInstallWhiteList(ILjava/lang/String;)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4907
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    .line 4908
    .local v2, "adminUid":I
    const-string v1, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageToInstallList :  pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " containerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4909
    if-nez p2, :cond_31

    .line 4910
    const-string v1, "ApplicationPolicy"

    const-string v3, "addPackageToInstallList() Package name is null"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4928
    :goto_30
    return v0

    .line 4914
    :cond_31
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4915
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4917
    if-eqz v5, :cond_63

    .line 4918
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 4919
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4920
    const-string v0, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4921
    const-string v0, "packageName"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4923
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_30

    .line 4927
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_63
    const-string v1, "ApplicationPolicy"

    const-string v3, "Package name is null. Failed to add the package to White list"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public addPackagesToClearCacheBlackList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5090
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearCacheWhiteList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5110
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataBlackList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5030
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataWhiteList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5050
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4050
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4070
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToWidgetBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4139
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4141
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4142
    return v0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4112
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4114
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4115
    return v0
.end method

.method public backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 23
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 4564
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission()I

    .line 4565
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4566
    .local v18, "validPkgName":Ljava/lang/String;
    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1b

    if-eqz p2, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 4568
    :cond_1b
    const/4 v2, -0x2

    .line 4618
    :goto_1c
    return v2

    .line 4569
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 4571
    :cond_3b
    const/4 v2, -0x3

    goto :goto_1c

    .line 4574
    :cond_3d
    :try_start_3d
    new-instance v15, Ljava/lang/SecurityManager;

    invoke-direct {v15}, Ljava/lang/SecurityManager;-><init>()V

    .line 4575
    .local v15, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_49} :catch_91

    .line 4580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4581
    :try_start_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_8e

    move-result-wide v16

    .line 4583
    .local v16, "token":J
    :try_start_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_9b

    .line 4584
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 4585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_9b

    .line 4586
    const-string v2, "ApplicationPolicy"

    const-string v3, "failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_75} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_75} :catch_141
    .catchall {:try_start_54 .. :try_end_75} :catchall_163

    .line 4587
    const/4 v2, -0x2

    .line 4612
    const/4 v3, 0x0

    :try_start_77
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 4614
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4615
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4587
    monitor-exit v19

    goto :goto_1c

    .line 4619
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v16    # "token":J
    :catchall_8e
    move-exception v2

    monitor-exit v19
    :try_end_90
    .catchall {:try_start_77 .. :try_end_90} :catchall_8e

    throw v2

    .line 4576
    .end local v15    # "sm":Ljava/lang/SecurityManager;
    :catch_91
    move-exception v11

    .line 4577
    .local v11, "ex":Ljava/lang/SecurityException;
    const-string v2, "ApplicationPolicy"

    const-string v3, "can\'t write to file descriptor"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4578
    const/4 v2, -0x2

    goto :goto_1c

    .line 4591
    .end local v11    # "ex":Ljava/lang/SecurityException;
    .restart local v15    # "sm":Ljava/lang/SecurityManager;
    .restart local v16    # "token":J
    :cond_9b
    :try_start_9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;)Z
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_a5} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a5} :catch_141
    .catchall {:try_start_9b .. :try_end_a5} :catchall_163

    move-result v2

    if-nez v2, :cond_c2

    .line 4592
    const/4 v2, -0x3

    .line 4612
    const/4 v3, 0x0

    :try_start_aa
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 4614
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4615
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4592
    monitor-exit v19
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_8e

    goto/16 :goto_1c

    .line 4594
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_c2
    const/4 v2, 0x1

    :try_start_c3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 4595
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    .line 4596
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 4597
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4598
    .local v14, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .line 4599
    .local v13, "packArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

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

    .line 4603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_102
    .catch Ljava/lang/InterruptedException; {:try_start_c3 .. :try_end_102} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_102} :catch_141
    .catchall {:try_start_c3 .. :try_end_102} :catchall_163

    .line 4612
    const/4 v2, 0x0

    :try_start_103
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 4614
    new-instance v12, Landroid/content/Intent;

    const-string v2, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4615
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4618
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    monitor-exit v19
    :try_end_11d
    .catchall {:try_start_103 .. :try_end_11d} :catchall_8e

    goto/16 :goto_1c

    .line 4604
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "packArray":[Ljava/lang/String;
    .end local v14    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_11f
    move-exception v10

    .line 4605
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_120
    const-string v2, "ApplicationPolicy"

    const-string v3, "backupApplicationData interrupted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_120 .. :try_end_127} :catchall_163

    .line 4606
    const/4 v2, -0x2

    .line 4612
    const/4 v3, 0x0

    :try_start_129
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 4614
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4615
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4606
    monitor-exit v19
    :try_end_13f
    .catchall {:try_start_129 .. :try_end_13f} :catchall_8e

    goto/16 :goto_1c

    .line 4607
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "intent":Landroid/content/Intent;
    :catch_141
    move-exception v11

    .line 4608
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_142
    const-string v2, "ApplicationPolicy"

    const-string v3, "Failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_142 .. :try_end_149} :catchall_163

    .line 4609
    const/4 v2, -0x2

    .line 4612
    const/4 v3, 0x0

    :try_start_14b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 4614
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4615
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4609
    monitor-exit v19

    goto/16 :goto_1c

    .line 4612
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "intent":Landroid/content/Intent;
    :catchall_163
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 4614
    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4615
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4612
    throw v2
    :try_end_17b
    .catchall {:try_start_14b .. :try_end_17b} :catchall_8e
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .registers 14
    .param p1, "aPackageName"    # Ljava/lang/String;
    .param p2, "aImageData"    # [B

    .prologue
    const/4 v7, 0x0

    .line 2746
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2747
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeApplicationIcon:packageName "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "called from :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2750
    .local v5, "token":J
    const/4 v3, 0x0

    .line 2752
    .local v3, "success":Z
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gez v8, :cond_3c

    .line 2753
    :cond_33
    const-string v7, "ApplicationPolicy"

    const-string v8, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 2789
    .end local v3    # "success":Z
    .local v4, "success":I
    :goto_3b
    return v4

    .line 2757
    .end local v4    # "success":I
    .restart local v3    # "success":Z
    :cond_3c
    if-nez p2, :cond_93

    .line 2758
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 2761
    :goto_44
    if-eqz v3, :cond_8e

    .line 2763
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-nez v8, :cond_51

    .line 2764
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 2766
    :cond_51
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9a

    if-nez p2, :cond_9a

    .line 2767
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2773
    :cond_61
    :goto_61
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 2774
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_73

    const-string v9, "package"

    invoke-static {v9, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_73
    invoke-direct {v1, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2776
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 2778
    .local v2, "packageUid":I
    :try_start_77
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2779
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_aa

    .line 2784
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_80
    const-string v7, "android.intent.extra.user_handle"

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2785
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2788
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageUid":I
    :cond_8e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v3

    .line 2789
    .restart local v4    # "success":I
    goto :goto_3b

    .line 2760
    .end local v4    # "success":I
    :cond_93
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationIcon(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result v3

    goto :goto_44

    .line 2768
    :cond_9a
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    if-eqz p2, :cond_61

    .line 2770
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 2781
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "packageUid":I
    :catch_aa
    move-exception v7

    goto :goto_80
.end method

.method public deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "homePkgName"    # Ljava/lang/String;

    .prologue
    .line 4449
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 4450
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2103
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2104
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2106
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    if-nez v2, :cond_12

    .line 2155
    :goto_11
    return v1

    .line 2109
    :cond_12
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2110
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(ILjava/lang/String;Z)Z

    .line 2112
    :cond_1b
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2114
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2116
    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2118
    const/16 v2, 0x400

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2121
    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2123
    const/16 v2, 0x20

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2125
    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2127
    const/16 v2, 0x80

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2129
    const/16 v2, 0x100

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2131
    const/16 v2, 0x200

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2133
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    .line 2137
    const/16 v2, 0x800

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2139
    const/16 v2, 0x1000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2144
    const/16 v2, 0x2000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2146
    const/16 v2, 0x4000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2149
    const v2, 0x8000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2151
    const/high16 v2, 0x10000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2155
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION"

    const-string v3, "packageName"

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_11
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3613
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableOcspCheck(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4876
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission()I

    move-result v0

    .line 4877
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4879
    .local v1, "validPkgName":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 4885
    :cond_b
    :goto_b
    return v2

    .line 4881
    :cond_c
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4885
    :cond_1a
    const/16 v2, 0x1000

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v2

    goto :goto_b
.end method

.method public enableRevocationCheck(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4856
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission()I

    move-result v0

    .line 4857
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4859
    .local v1, "validPkgName":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 4865
    :cond_b
    :goto_b
    return v2

    .line 4861
    :cond_c
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4865
    :cond_1a
    const/16 v2, 0x800

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v2

    goto :goto_b
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 3

    .prologue
    .line 3609
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .registers 31
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

    .prologue
    .line 4647
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 4648
    const/16 v22, 0x0

    .line 4651
    .local v22, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_5
    const-string v7, "appwidget"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v11

    .line 4653
    .local v11, "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v11, :cond_20

    .line 4654
    const-wide/16 v23, 0x0

    .line 4655
    .local v23, "token":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 4656
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v22

    .line 4657
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_101

    .line 4663
    .end local v11    # "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    .end local v23    # "token":J
    :cond_20
    :goto_20
    if-nez v22, :cond_27

    .line 4664
    new-instance v22, Ljava/util/HashMap;

    .end local v22    # "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 4667
    .restart local v22    # "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_27
    if-eqz p1, :cond_35

    if-eqz p1, :cond_134

    const-string v7, "com.sec.android.app.launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_134

    .line 4669
    :cond_35
    const-string v7, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4671
    .local v4, "launcher_uri":Landroid/net/Uri;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "appWidgetId"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "intent"

    aput-object v8, v5, v7

    .line 4674
    .local v5, "projection":[Ljava/lang/String;
    const-string v6, "itemType = 900"

    .line 4675
    .local v6, "selectionClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4676
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 4678
    .local v12, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_55
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4679
    :cond_59
    :goto_59
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_177

    .line 4681
    new-instance v20, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v20 .. v20}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 4682
    .local v20, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v7, 0x0

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 4683
    .local v26, "widgetId":I
    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6d} :catch_114
    .catchall {:try_start_55 .. :try_end_6d} :catchall_165

    move-result-object v25

    .line 4684
    .local v25, "uri":Ljava/lang/String;
    const/16 v19, 0x0

    .line 4686
    .local v19, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    :try_start_71
    move-object/from16 v0, v25

    invoke-static {v0, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_76
    .catch Ljava/net/URISyntaxException; {:try_start_71 .. :try_end_76} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_114
    .catchall {:try_start_71 .. :try_end_76} :catchall_165

    move-result-object v19

    .line 4691
    const/4 v13, 0x0

    .line 4693
    .local v13, "ctx":Landroid/content/Context;
    :try_start_78
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_78 .. :try_end_8b} :catch_10e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8b} :catch_114
    .catchall {:try_start_78 .. :try_end_8b} :catchall_165

    move-result-object v13

    .line 4698
    :goto_8c
    if-eqz v13, :cond_59

    .line 4701
    :try_start_8e
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_96} :catch_114
    .catchall {:try_start_8e .. :try_end_96} :catchall_165

    .line 4704
    const/16 v21, 0x0

    .line 4705
    .local v21, "resName":I
    :try_start_98
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "plug_in_name"

    const-string v27, "string"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 4707
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v27, 0x80

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 4709
    .local v9, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v21, :cond_135

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_c8
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_cc
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_98 .. :try_end_cc} :catch_144
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_98 .. :try_end_cc} :catch_147
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_cc} :catch_114
    .catchall {:try_start_98 .. :try_end_cc} :catchall_165

    .line 4717
    const/16 v17, 0x0

    .line 4718
    .local v17, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_ce
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_14a

    .line 4719
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_dc
    :goto_dc
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4720
    .local v10, "auxProvider":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v10, :cond_dc

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v7, :cond_dc

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 4722
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v17, Ljava/util/ArrayList;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_100} :catch_114
    .catchall {:try_start_ce .. :try_end_100} :catchall_165

    .restart local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_dc

    .line 4659
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v4    # "launcher_uri":Landroid/net/Uri;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v6    # "selectionClause":Ljava/lang/String;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "auxProvider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "ctx":Landroid/content/Context;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21    # "resName":I
    .end local v25    # "uri":Ljava/lang/String;
    .end local v26    # "widgetId":I
    :catch_101
    move-exception v14

    .line 4660
    .local v14, "e":Landroid/os/RemoteException;
    const-string v7, "ApplicationPolicy"

    const-string v8, "error in getAllWidgets"

    invoke-static {v7, v8, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 4687
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v3    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v4    # "launcher_uri":Landroid/net/Uri;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v6    # "selectionClause":Ljava/lang/String;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v25    # "uri":Ljava/lang/String;
    .restart local v26    # "widgetId":I
    :catch_10b
    move-exception v14

    .line 4688
    .local v14, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_59

    .line 4695
    .end local v14    # "e":Ljava/net/URISyntaxException;
    .restart local v13    # "ctx":Landroid/content/Context;
    :catch_10e
    move-exception v15

    .line 4696
    .local v15, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_10f
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_114
    .catchall {:try_start_10f .. :try_end_112} :catchall_165

    goto/16 :goto_8c

    .line 4735
    .end local v13    # "ctx":Landroid/content/Context;
    .end local v15    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v25    # "uri":Ljava/lang/String;
    .end local v26    # "widgetId":I
    :catch_114
    move-exception v14

    .line 4736
    .local v14, "e":Ljava/lang/Exception;
    :try_start_115
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getPreferredApn Ex: "

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catchall {:try_start_115 .. :try_end_12f} :catchall_165

    .line 4739
    if-eqz v12, :cond_134

    .line 4740
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_131
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4745
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v4    # "launcher_uri":Landroid/net/Uri;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v6    # "selectionClause":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_134
    return-object v22

    .line 4709
    .restart local v3    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v4    # "launcher_uri":Landroid/net/Uri;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v6    # "selectionClause":Ljava/lang/String;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "ctx":Landroid/content/Context;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v21    # "resName":I
    .restart local v25    # "uri":Ljava/lang/String;
    .restart local v26    # "widgetId":I
    :cond_135
    :try_start_135
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_142
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_135 .. :try_end_142} :catch_144
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_135 .. :try_end_142} :catch_147
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_142} :catch_114
    .catchall {:try_start_135 .. :try_end_142} :catchall_165

    move-result-object v7

    goto :goto_c8

    .line 4711
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_144
    move-exception v18

    .line 4712
    .local v18, "ignore":Landroid/content/res/Resources$NotFoundException;
    goto/16 :goto_59

    .line 4713
    .end local v18    # "ignore":Landroid/content/res/Resources$NotFoundException;
    :catch_147
    move-exception v18

    .line 4714
    .local v18, "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_59

    .line 4726
    .end local v18    # "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_14a
    if-nez v17, :cond_16c

    .line 4727
    :try_start_14c
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 4728
    .restart local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4729
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_163} :catch_114
    .catchall {:try_start_14c .. :try_end_163} :catchall_165

    goto/16 :goto_59

    .line 4739
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "ctx":Landroid/content/Context;
    .end local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21    # "resName":I
    .end local v25    # "uri":Ljava/lang/String;
    .end local v26    # "widgetId":I
    :catchall_165
    move-exception v7

    if-eqz v12, :cond_16b

    .line 4740
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4739
    :cond_16b
    throw v7

    .line 4731
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "ctx":Landroid/content/Context;
    .restart local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v21    # "resName":I
    .restart local v25    # "uri":Ljava/lang/String;
    .restart local v26    # "widgetId":I
    :cond_16c
    :try_start_16c
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_175} :catch_114
    .catchall {:try_start_16c .. :try_end_175} :catchall_165

    goto/16 :goto_59

    .line 4739
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "ctx":Landroid/content/Context;
    .end local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21    # "resName":I
    .end local v25    # "uri":Ljava/lang/String;
    .end local v26    # "widgetId":I
    :cond_177
    if-eqz v12, :cond_134

    goto :goto_131
.end method

.method public getAppInstallToSdCard()Z
    .registers 8

    .prologue
    .line 3279
    const/4 v1, 0x0

    .line 3280
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_GENERAL"

    const-string v6, "installToSdCard"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3282
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3283
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 3284
    move v1, v2

    .line 3288
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public getAppInstallationMode()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 1706
    const-string v3, "ApplicationPolicy"

    const-string v5, "getAppInstallationMode :  mode start: "

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1708
    const/4 v0, 0x1

    .line 1709
    .local v0, "install":Z
    :try_start_c
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1710
    :cond_18
    monitor-exit v5

    move v3, v4

    .line 1729
    :goto_1a
    return v3

    .line 1712
    :cond_1b
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1714
    .local v2, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1715
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1716
    .local v1, "uid":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v3

    if-nez v3, :cond_25

    .line 1721
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "PackageNameInstallationBlacklist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v6, ".*"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "PackageNameInstallationWhitelist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v6, ".*"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1723
    const/4 v0, 0x0

    .line 1727
    .end local v1    # "uid":Ljava/lang/Long;
    :cond_6c
    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInstallationMode :  mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    if-eqz v0, :cond_8c

    move v3, v4

    :goto_87
    monitor-exit v5

    goto :goto_1a

    .line 1731
    .end local v2    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_89
    move-exception v3

    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_c .. :try_end_8b} :catchall_89

    throw v3

    .line 1729
    .restart local v2    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_8c
    const/4 v3, 0x0

    goto :goto_87
.end method

.method public getAppNotificationBlackList(Z)Ljava/util/List;
    .registers 3
    .param p1, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4366
    const-string v0, "PackageNameNotificationBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationWhiteList(Z)Ljava/util/List;
    .registers 3
    .param p1, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4389
    const-string v0, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3140
    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppPackageNamesAllBlackLists "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3143
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3144
    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3145
    :cond_19
    const/4 v2, 0x0

    monitor-exit v7

    .line 3170
    :goto_1b
    return-object v2

    .line 3147
    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3150
    .local v5, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3151
    .local v2, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v1, 0x0

    .line 3153
    .local v1, "adminPackageName":Ljava/lang/String;
    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 3154
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 3155
    .local v4, "uid":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    .line 3158
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3159
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 3160
    if-eqz v1, :cond_2c

    .line 3162
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3163
    .local v0, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3164
    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "PackageNameInstallationBlacklist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3165
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 3166
    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 3171
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v1    # "adminPackageName":Ljava/lang/String;
    .end local v2    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    .end local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    .line 3168
    .restart local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .restart local v1    # "adminPackageName":Ljava/lang/String;
    .restart local v2    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "uid":Ljava/lang/Long;
    .restart local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_91
    :try_start_91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 3170
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3201
    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppPackageNamesAllWhiteLists "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3204
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3205
    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3206
    :cond_19
    const/4 v5, 0x0

    monitor-exit v7

    .line 3231
    :goto_1b
    return-object v5

    .line 3208
    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3211
    .local v4, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3212
    .local v5, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v1, 0x0

    .line 3214
    .local v1, "adminPackageName":Ljava/lang/String;
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 3215
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 3216
    .local v3, "uid":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    .line 3219
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3220
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 3221
    if-eqz v1, :cond_2c

    .line 3223
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3224
    .local v0, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3225
    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "PackageNameInstallationWhitelist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3226
    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 3227
    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 3232
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v1    # "adminPackageName":Ljava/lang/String;
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "uid":Ljava/lang/Long;
    .end local v4    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v5    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    .line 3229
    .restart local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .restart local v1    # "adminPackageName":Ljava/lang/String;
    .restart local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "uid":Ljava/lang/Long;
    .restart local v4    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v5    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_91
    :try_start_91
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 3231
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "uid":Ljava/lang/Long;
    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2876
    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppPermissionAllBlackLists:"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2879
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2880
    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2881
    :cond_19
    const/4 v2, 0x0

    monitor-exit v7

    .line 2906
    :goto_1b
    return-object v2

    .line 2883
    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2886
    .local v5, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2887
    .local v2, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v1, 0x0

    .line 2889
    .local v1, "adminPackageName":Ljava/lang/String;
    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 2890
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2891
    .local v4, "uid":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    .line 2894
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "PermissionInstallationBlacklist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2895
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 2896
    if-eqz v1, :cond_2c

    .line 2898
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2899
    .local v0, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2900
    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "PermissionInstallationBlacklist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2901
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 2902
    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 2907
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v1    # "adminPackageName":Ljava/lang/String;
    .end local v2    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    .end local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    .line 2904
    .restart local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .restart local v1    # "adminPackageName":Ljava/lang/String;
    .restart local v2    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "uid":Ljava/lang/Long;
    .restart local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_91
    :try_start_91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2906
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .registers 9

    .prologue
    .line 2851
    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppPermissionsBlackList:"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    const/4 v1, 0x0

    .line 2853
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION_PERMISSION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2857
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3a

    .line 2858
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2859
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2860
    const-string v2, "permission"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 2862
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2865
    :cond_3a
    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    .line 2866
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 2868
    :goto_50
    return-object v2

    :cond_51
    const/4 v2, 0x0

    goto :goto_50
.end method

.method public getAppSignatureBlackList()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2931
    const-string v2, "ApplicationPolicy"

    const-string v4, "getAppSignatureBlackList()"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    move-object v2, v3

    .line 2945
    :goto_15
    return-object v2

    .line 2936
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2937
    .local v1, "uid":Ljava/lang/Long;
    const/4 v0, 0x0

    .line 2938
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 2939
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "SignatureInstallationBlacklist"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2942
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3d
    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 2943
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    goto :goto_15

    :cond_54
    move-object v2, v3

    .line 2945
    goto :goto_15
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2953
    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppSignatureAllBlackLists:"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2956
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2957
    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2958
    :cond_19
    const/4 v2, 0x0

    monitor-exit v7

    .line 2983
    :goto_1b
    return-object v2

    .line 2960
    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2963
    .local v5, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2964
    .local v2, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v1, 0x0

    .line 2966
    .local v1, "adminPackageName":Ljava/lang/String;
    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 2967
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2968
    .local v4, "uid":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    .line 2971
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "SignatureInstallationBlacklist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2972
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 2973
    if-eqz v1, :cond_2c

    .line 2975
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2976
    .local v0, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2977
    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "SignatureInstallationBlacklist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2978
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 2979
    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 2984
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v1    # "adminPackageName":Ljava/lang/String;
    .end local v2    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    .end local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    .line 2981
    .restart local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .restart local v1    # "adminPackageName":Ljava/lang/String;
    .restart local v2    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "uid":Ljava/lang/Long;
    .restart local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_91
    :try_start_91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2983
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppSignaturesAllWhiteLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3043
    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppSignaturesAllWhiteLists:"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3046
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3047
    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3048
    :cond_19
    const/4 v5, 0x0

    monitor-exit v7

    .line 3075
    :goto_1b
    return-object v5

    .line 3050
    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3051
    .local v4, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3052
    .local v5, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3053
    .local v3, "uid":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 3054
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3055
    .local v0, "aci":Landroid/app/enterprise/AppControlInfo;
    const/4 v1, 0x0

    .line 3057
    .local v1, "adminPackageName":Ljava/lang/String;
    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 3058
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "uid":Ljava/lang/Long;
    check-cast v3, Ljava/lang/Long;

    .line 3059
    .restart local v3    # "uid":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_34

    .line 3063
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "SignatureInstallationWhitelist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3064
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 3065
    if-eqz v1, :cond_34

    .line 3067
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3068
    .restart local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3069
    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "SignatureInstallationWhitelist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3070
    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    .line 3071
    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 3076
    .end local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v1    # "adminPackageName":Ljava/lang/String;
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "uid":Ljava/lang/Long;
    .end local v4    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v5    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_96
    move-exception v6

    monitor-exit v7
    :try_end_98
    .catchall {:try_start_d .. :try_end_98} :catchall_96

    throw v6

    .line 3073
    .restart local v0    # "aci":Landroid/app/enterprise/AppControlInfo;
    .restart local v1    # "adminPackageName":Ljava/lang/String;
    .restart local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "uid":Ljava/lang/Long;
    .restart local v4    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v5    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_99
    :try_start_99
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 3075
    :cond_9d
    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_96

    goto/16 :goto_1b
.end method

.method public getAppSignaturesWhiteList()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 3020
    const-string v2, "ApplicationPolicy"

    const-string v4, "getAppSignaturesWhiteList:"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3022
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3023
    :try_start_b
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v2, :cond_17

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3024
    :cond_17
    monitor-exit v4

    move-object v2, v3

    .line 3035
    :goto_19
    return-object v2

    .line 3026
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3027
    .local v1, "uid":Ljava/lang/Long;
    const/4 v0, 0x0

    .line 3028
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 3029
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "SignatureInstallationWhitelist"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3032
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5c

    .line 3033
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    monitor-exit v4

    goto :goto_19

    .line 3036
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "uid":Ljava/lang/Long;
    :catchall_59
    move-exception v2

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_59

    throw v2

    .line 3035
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "uid":Ljava/lang/Long;
    :cond_5c
    :try_start_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    move-object v2, v3

    goto :goto_19
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2589
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2590
    const-wide/16 v2, -0x1

    .line 2591
    .local v2, "total":J
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2592
    if-eqz p1, :cond_11

    .line 2594
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2595
    .local v1, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    .line 2600
    .end local v1    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_11
    :goto_11
    return-wide v2

    .line 2596
    :catch_12
    move-exception v0

    .line 2597
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2547
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2548
    const-wide/16 v2, -0x1

    .line 2549
    .local v2, "total":J
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2550
    if-eqz p1, :cond_11

    .line 2552
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2553
    .local v1, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    .line 2558
    .end local v1    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_11
    :goto_11
    return-wide v2

    .line 2554
    :catch_12
    move-exception v0

    .line 2555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 2664
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_APP_MGMT"

    const-string v10, "Application Policy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2668
    if-eqz p1, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 2669
    :cond_17
    const-wide/16 v6, -0x1

    .line 2702
    :cond_19
    :goto_19
    return-wide v6

    .line 2672
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Ljava/lang/String;)I

    move-result v2

    .line 2674
    .local v2, "pid":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_19

    .line 2678
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 2680
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    .line 2681
    .local v0, "count":I
    const/4 v3, 0x0

    .line 2682
    .local v3, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_3a

    .line 2683
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8, v1}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v3

    .line 2684
    iget v8, v3, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v8, v2, :cond_68

    .line 2689
    :cond_3a
    if-eqz v3, :cond_19

    .line 2693
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v4, v8

    .line 2698
    .local v4, "totalCPUTime":J
    cmp-long v6, v4, v6

    if-nez v6, :cond_5e

    .line 2699
    const-wide/16 v4, 0x1

    .line 2702
    :cond_5e
    iget v6, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v7, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    div-long/2addr v6, v4

    goto :goto_19

    .line 2682
    .end local v4    # "totalCPUTime":J
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2568
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2569
    const-wide/16 v2, -0x1

    .line 2570
    .local v2, "total":J
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2571
    if-eqz p1, :cond_11

    .line 2573
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2574
    .local v1, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    .line 2579
    .end local v1    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_11
    :goto_11
    return-wide v2

    .line 2575
    :catch_12
    move-exception v0

    .line 2576
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .registers 5
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 2799
    const/4 v0, 0x0

    .line 2802
    .local v0, "lImg":[B
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 2804
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 2805
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 2814
    :cond_14
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "aPacakageName"    # Ljava/lang/String;

    .prologue
    .line 2251
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v0

    return v0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    .line 2610
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_APP_MGMT"

    const-string v12, "Application Policy"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    const-wide/16 v6, 0x0

    .line 2613
    .local v6, "total":J
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2614
    if-eqz p1, :cond_57

    .line 2617
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 2646
    :cond_19
    :goto_19
    return-wide v8

    .line 2623
    :cond_1a
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2625
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2627
    .local v3, "lRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2630
    .local v5, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2633
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 2634
    iget v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v10

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v12

    int-to-long v12, v12

    div-long/2addr v10, v12
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4f} :catch_51

    add-long/2addr v6, v10

    goto :goto_2c

    .line 2641
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_51
    move-exception v1

    .line 2642
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2643
    const-wide/16 v6, -0x1

    .line 2646
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_57
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_19

    move-wide v8, v6

    goto :goto_19
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2481
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2482
    const/4 v1, 0x0

    .line 2483
    .local v1, "appName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2484
    if-eqz p1, :cond_1a

    .line 2486
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2487
    .local v3, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1a

    .line 2488
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    .line 2493
    .end local v3    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1a
    :goto_1a
    return-object v1

    .line 2489
    :catch_1b
    move-exception v2

    .line 2490
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public getApplicationNotificationMode(Z)I
    .registers 7
    .param p1, "allAdmins"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x2

    .line 4420
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 4422
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4430
    :cond_12
    :goto_12
    return v0

    .line 4424
    :cond_13
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v0, v1

    .line 4425
    goto :goto_12

    .line 4426
    :cond_21
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    .line 4427
    goto :goto_12
.end method

.method public getApplicationStateEnabled(ILjava/lang/String;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1898
    const/4 v0, 0x1

    .line 1899
    .local v0, "enabled":Z
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1900
    invoke-static {p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1902
    if-eqz p2, :cond_3e

    .line 1903
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION"

    const-string v6, "packageName"

    const-string v7, "controlState"

    invoke-virtual {v4, v5, v6, p2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1906
    .local v3, "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1907
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1908
    .local v2, "state":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_21

    .line 1910
    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_21

    .line 1913
    const/4 v0, 0x0

    .line 1923
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Ljava/lang/Integer;
    .end local v3    # "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3d
    :goto_3d
    return v0

    .line 1921
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1871
    .local v1, "uid":I
    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 1872
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1877
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1879
    .local v1, "ret":Z
    if-nez v1, :cond_22

    if-eqz p2, :cond_22

    .line 1880
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v4, 0x1040616

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1886
    .end local v0    # "i":Landroid/content/Intent;
    :cond_22
    return v1
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 3826
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3828
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3831
    .local v2, "lAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v0

    .line 3833
    .local v0, "appInstallList":[Ljava/lang/String;
    if-nez v0, :cond_27

    .line 3847
    .end local v0    # "appInstallList":[Ljava/lang/String;
    :goto_26
    return-object v0

    .line 3837
    .restart local v0    # "appInstallList":[Ljava/lang/String;
    :cond_27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    array-length v3, v0

    if-ge v1, v3, :cond_3b

    .line 3838
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p1, :cond_38

    .line 3839
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3837
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3843
    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_43

    .line 3844
    const/4 v0, 0x0

    goto :goto_26

    .line 3847
    :cond_43
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_26
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2526
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2527
    const-wide/16 v2, -0x1

    .line 2528
    .local v2, "total":J
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2529
    if-eqz p1, :cond_18

    .line 2531
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2532
    .local v1, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_19

    add-long v2, v4, v6

    .line 2537
    .end local v1    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_18
    :goto_18
    return-wide v2

    .line 2533
    :catch_19
    move-exception v0

    .line 2534
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2400
    const/4 v3, 0x1

    .line 2402
    .local v3, "uninstall":Z
    const-string v5, "ApplicationPolicy"

    const-string v6, "getApplicationUninstallationEnabled"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2405
    :try_start_b
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2406
    :cond_17
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_89

    move v4, v3

    .line 2440
    .end local v3    # "uninstall":Z
    .local v4, "uninstall":I
    :goto_19
    return v4

    .line 2409
    .end local v4    # "uninstall":I
    .restart local v3    # "uninstall":Z
    :cond_1a
    :try_start_1a
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2411
    .local v2, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 2412
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2413
    .local v1, "uid":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v5

    if-nez v5, :cond_24

    .line 2418
    const-string v5, "UninstallationWhitelist"

    invoke-direct {p0, v1, v5, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 2420
    if-nez v3, :cond_24

    .line 2425
    const-string v5, "UninstallationBlacklist"

    invoke-direct {p0, v1, v5, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_68

    const/4 v3, 0x1

    .line 2427
    :goto_4b
    if-nez v3, :cond_24

    .line 2428
    const-string v5, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_65} :catch_6a
    .catchall {:try_start_1a .. :try_end_65} :catchall_89

    .line 2429
    :try_start_65
    monitor-exit v6

    move v4, v3

    .restart local v4    # "uninstall":I
    goto :goto_19

    .line 2425
    .end local v4    # "uninstall":I
    :cond_68
    const/4 v3, 0x0

    goto :goto_4b

    .line 2434
    .end local v1    # "uid":Ljava/lang/Long;
    .end local v2    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_6a
    move-exception v0

    .line 2435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6e
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_89

    .line 2439
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 2440
    .restart local v4    # "uninstall":I
    goto :goto_19

    .line 2437
    .end local v4    # "uninstall":I
    :catchall_89
    move-exception v5

    :try_start_8a
    monitor-exit v6
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v5
.end method

.method public getApplicationUninstallationMode()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 1782
    const-string v3, "ApplicationPolicy"

    const-string v5, "getApplicationUninstallationMode"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1785
    const/4 v2, 0x1

    .line 1786
    .local v2, "uninstall":Z
    :try_start_c
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1787
    :cond_18
    monitor-exit v5

    move v3, v4

    .line 1805
    :goto_1a
    return v3

    .line 1789
    :cond_1b
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1791
    .local v1, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1792
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1793
    .local v0, "uid":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v3

    if-nez v3, :cond_25

    .line 1798
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "UninstallationBlacklist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v6, ".*"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1799
    const/4 v2, 0x0

    .line 1803
    .end local v0    # "uid":Ljava/lang/Long;
    :cond_54
    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInstallationMode :  mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    if-eqz v2, :cond_74

    move v3, v4

    :goto_6f
    monitor-exit v5

    goto :goto_1a

    .line 1807
    .end local v1    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_71
    move-exception v3

    monitor-exit v5
    :try_end_73
    .catchall {:try_start_c .. :try_end_73} :catchall_71

    throw v3

    .line 1805
    .restart local v1    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_74
    const/4 v3, 0x0

    goto :goto_6f
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2503
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2504
    const/4 v0, 0x0

    .line 2505
    .local v0, "appName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2506
    if-eqz p1, :cond_12

    .line 2508
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2509
    .local v2, "mpkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_12

    .line 2510
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 2515
    .end local v2    # "mpkgInfo":Landroid/content/pm/PackageInfo;
    :cond_12
    :goto_12
    return-object v0

    .line 2511
    :catch_13
    move-exception v1

    .line 2512
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2033
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2034
    const/4 v1, 0x0

    .line 2038
    :goto_7
    return-object v1

    .line 2037
    :cond_8
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2038
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v1

    goto :goto_7
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 3

    .prologue
    .line 3597
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2450
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 2451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;
    .registers 11
    .param p1, "includeUninstalledDataPresent"    # Z

    .prologue
    .line 2455
    const/4 v6, 0x0

    .line 2457
    .local v6, "packageNameList":[Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_33

    const/16 v7, 0x2000

    :goto_7
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2460
    .local v0, "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3a

    .line 2461
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2462
    const/4 v4, 0x0

    .line 2463
    .local v4, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2464
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_35

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1f

    .line 2457
    .end local v0    # "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "index":I
    :cond_33
    const/4 v7, 0x0

    goto :goto_7

    .line 2467
    :catch_35
    move-exception v2

    .line 2468
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 2469
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2471
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3a
    return-object v6
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .registers 16

    .prologue
    .line 1968
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v2

    .line 1969
    .local v2, "callingUid":I
    const/4 v0, 0x0

    .line 1971
    .local v0, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1972
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x2

    :try_start_7
    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "managedApp"

    aput-object v14, v3, v13

    .line 1975
    .local v3, "columns":[Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "APPLICATION"

    invoke-virtual {v13, v14, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1977
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_6b

    .line 1978
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_b1

    .line 1979
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_22
    :goto_22
    :try_start_22
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_67

    .line 1983
    const-string v13, "managedApp"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1985
    .local v12, "state":I
    const/4 v13, 0x1

    and-int/lit8 v14, v12, 0x1

    if-ne v13, v14, :cond_65

    const/4 v9, 0x1

    .line 1986
    .local v9, "isEnterpriseApp":Z
    :goto_38
    const/4 v13, 0x1

    if-ne v9, v13, :cond_22

    .line 1987
    const-string v13, "packageName"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_48} :catch_49

    goto :goto_22

    .line 2010
    .end local v9    # "isEnterpriseApp":Z
    .end local v12    # "state":I
    :catch_49
    move-exception v7

    move-object v10, v11

    .line 2011
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "e":Ljava/lang/Exception;
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2013
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_af

    .line 2014
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    check-cast v13, [Ljava/lang/String;

    .line 2016
    :goto_64
    return-object v13

    .line 1985
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "columns":[Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "state":I
    :cond_65
    const/4 v9, 0x0

    goto :goto_38

    .line 1991
    .end local v12    # "state":I
    :cond_67
    :try_start_67
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_49

    move-object v10, v11

    .line 1993
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6b
    if-eqz v10, :cond_4e

    :try_start_6d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4e

    .line 1994
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_b1

    .line 1995
    .end local v0    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    :try_start_79
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v5

    .line 1996
    .local v5, "deviceApps":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1997
    .local v6, "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_87

    array-length v13, v5

    if-lez v13, :cond_87

    .line 1998
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2000
    :cond_87
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_88
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_b3

    .line 2001
    if-eqz v6, :cond_a4

    .line 2002
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 2003
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    :cond_a1
    :goto_a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    .line 2006
    :cond_a4
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_ab} :catch_ac

    goto :goto_a1

    .line 2010
    .end local v5    # "deviceApps":[Ljava/lang/String;
    .end local v6    # "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    :catch_ac
    move-exception v7

    move-object v0, v1

    .end local v1    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4b

    .line 2016
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_af
    const/4 v13, 0x0

    goto :goto_64

    .line 2010
    :catch_b1
    move-exception v7

    goto :goto_4b

    .end local v0    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "columns":[Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "deviceApps":[Ljava/lang/String;
    .restart local v6    # "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    :cond_b3
    move-object v0, v1

    .end local v1    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4e
.end method

.method public getNetworkStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 812
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getNetworkStats()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList(I)Ljava/util/List;
    .registers 3
    .param p1, "containerId"    # I
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
    .line 5098
    const-string v0, "PackageNameClearCacheBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList(I)Ljava/util/List;
    .registers 3
    .param p1, "containerId"    # I
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
    .line 5115
    const-string v0, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataBlackList(I)Ljava/util/List;
    .registers 3
    .param p1, "containerId"    # I
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
    .line 5038
    const-string v0, "PackageNameClearDataBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList(I)Ljava/util/List;
    .registers 3
    .param p1, "containerId"    # I
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
    .line 5055
    const-string v0, "PackageNameClearDataWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4058
    const-string v0, "PackageNameStopBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4075
    const-string v0, "PackageNameStopWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .registers 11
    .param p1, "containerId"    # I
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
    .line 4940
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v1

    .line 4941
    .local v1, "callingUid":I
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackagesFromInstallWhiteList :  containerId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4943
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4944
    .local v0, "adminUid":I
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "packageName"

    aput-object v7, v4, v6

    .line 4945
    .local v4, "returnColumns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WhiteListInstallApps"

    invoke-virtual {v6, v7, v0, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4947
    .local v2, "packageCursor":Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4950
    .local v5, "whiteListedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4e

    .line 4951
    :goto_37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 4952
    const-string v6, "packageName"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4954
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 4956
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4958
    :cond_4e
    return-object v5
.end method

.method public getPackagesFromWidgetBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4149
    const-string v0, "PackageNameWidgetBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4122
    const-string v0, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(IZ)Ljava/util/List;
    .registers 17
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
    .line 3540
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.sec.MDM_APP_MGMT"

    const-string v13, "Application Policy"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 3545
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v2

    .line 3547
    .local v2, "count":I
    if-lez p1, :cond_18

    if-ge v2, p1, :cond_19

    .line 3548
    :cond_18
    move p1, v2

    .line 3551
    :cond_19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3553
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v9, v11

    .line 3558
    .local v9, "totalCPUTime":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_42

    .line 3559
    const-wide/16 v9, 0x1

    .line 3562
    :cond_42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3563
    .local v1, "appPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p2, :cond_71

    .line 3564
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3566
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 3568
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3569
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 3573
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_71
    const/4 v8, 0x0

    .line 3575
    .local v8, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    if-ge v3, p1, :cond_a6

    .line 3576
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11, v3}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v8

    .line 3578
    if-eqz v8, :cond_a3

    if-nez p2, :cond_8b

    iget v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 3579
    :cond_8b
    new-instance v5, Landroid/app/enterprise/AppInfo;

    invoke-direct {v5}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3580
    .local v5, "info":Landroid/app/enterprise/AppInfo;
    iget-object v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    iput-object v11, v5, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3581
    iget v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v12, v8, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x64

    int-to-long v11, v11

    div-long/2addr v11, v9

    long-to-double v11, v11

    iput-wide v11, v5, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3583
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3575
    .end local v5    # "info":Landroid/app/enterprise/AppInfo;
    :cond_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 3587
    :cond_a6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_ad

    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :goto_ac
    return-object v7

    .restart local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_ad
    const/4 v7, 0x0

    goto :goto_ac
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .registers 9
    .param p1, "aAppCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3458
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3459
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp start"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppSizeInfo()Ljava/util/List;

    move-result-object v2

    .line 3462
    .local v2, "lResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3463
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3466
    .local v4, "lStorageInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_22

    .line 3467
    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 3470
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, p1, :cond_43

    .line 3471
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .line 3472
    .local v1, "lDataInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3473
    .local v3, "lStorageInfo":Landroid/app/enterprise/AppInfo;
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3474
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3475
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3479
    .end local v1    # "lDataInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    .end local v3    # "lStorageInfo":Landroid/app/enterprise/AppInfo;
    :cond_43
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp end"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    return-object v4
.end method

.method public getTopNMemoryUsageApp(IZ)Ljava/util/List;
    .registers 12
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
    .line 3366
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3367
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp start"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppMemoryInfo(Z)Ljava/util/List;

    move-result-object v2

    .line 3370
    .local v2, "lResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3373
    .local v4, "lStorageInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_22

    .line 3374
    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 3377
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, p1, :cond_6d

    .line 3378
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .line 3379
    .local v1, "lMemInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3380
    .local v3, "lStorageInfo":Landroid/app/enterprise/AppInfo;
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3381
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3382
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " memory usage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3385
    .end local v1    # "lMemInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    .end local v3    # "lStorageInfo":Landroid/app/enterprise/AppInfo;
    :cond_6d
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp end"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    return-object v4
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "installOnSDCard"    # Z

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1359
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public installApplicationBySystem(ILjava/lang/String;Z)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z

    .prologue
    .line 1375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1376
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1377
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1379
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationClearCacheDisabled(ILjava/lang/String;Z)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 5135
    const-string v1, "PackageNameClearCacheBlacklist"

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 5136
    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5137
    if-eqz p3, :cond_2d

    .line 5138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5139
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040274

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5141
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5143
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2d
    const/4 v1, 0x1

    .line 5145
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 5130
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    .line 5131
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationClearDataDisabled(ILjava/lang/String;Z)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 5075
    const-string v1, "PackageNameClearDataBlacklist"

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 5076
    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5077
    if-eqz p3, :cond_2d

    .line 5078
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5079
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040273

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5081
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5083
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2d
    const/4 v1, 0x1

    .line 5085
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 5070
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    .line 5071
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4090
    const-string v1, "PackageNameStopBlacklist"

    const-string v2, "PackageNameStopWhitelist"

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4091
    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    if-eqz p2, :cond_2d

    .line 4093
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4094
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040272

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4096
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4098
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2d
    const/4 v1, 0x1

    .line 4100
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2267
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v0

    return v0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1302
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1304
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_10

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 1309
    :cond_f
    :goto_f
    return v0

    .line 1306
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isApplicationRunningInternal(Ljava/lang/String;)I
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1323
    const/4 v3, -0x1

    .line 1324
    .local v3, "pid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1325
    if-eqz p1, :cond_37

    .line 1327
    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1329
    .local v0, "amgr":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1331
    .local v4, "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_37

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_37

    .line 1332
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1333
    .local v5, "runningApplicationInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1334
    iget v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    .line 1344
    .end local v0    # "amgr":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "runningApplicationInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_37
    :goto_37
    return v3

    .line 1339
    :catch_38
    move-exception v1

    .line 1340
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    .line 1341
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1933
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    const/4 v1, 0x1

    .line 1936
    .local v1, "isIntentEnabled":Z
    if-nez p1, :cond_1e

    .line 1957
    :goto_1d
    return v3

    .line 1941
    :cond_1e
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1943
    .local v2, "lResolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled resolve info :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    if-eqz v2, :cond_6c

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_6c

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_6c

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_6c

    .line 1949
    const/4 v5, 0x0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_68} :catch_8d

    move-result v5

    if-eqz v5, :cond_8b

    :cond_6b
    move v1, v4

    .line 1956
    .end local v2    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6c
    :goto_6c
    const-string v6, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled return :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_92

    move v5, v4

    :goto_7c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    if-nez v1, :cond_94

    :goto_89
    move v3, v4

    goto :goto_1d

    .restart local v2    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_8b
    move v1, v3

    .line 1949
    goto :goto_6c

    .line 1952
    .end local v2    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_8d
    move-exception v0

    .line 1953
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_92
    move v5, v3

    .line 1956
    goto :goto_7c

    :cond_94
    move v4, v3

    .line 1957
    goto :goto_89
.end method

.method isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;
    .registers 11
    .param p1, "aPkgName"    # Ljava/lang/String;
    .param p2, "aManageAppInfoArray"    # [Landroid/app/enterprise/ManagedAppInfo;
    .param p3, "aCallingUid"    # I

    .prologue
    const/4 v4, 0x0

    .line 2168
    if-nez p2, :cond_7

    .line 2169
    invoke-direct {p0, v4, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p2

    .line 2172
    :cond_7
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    .line 2173
    move-object v0, p2

    .local v0, "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v3, :cond_36

    aget-object v2, v0, v1

    .line 2174
    .local v2, "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    iget-object v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2175
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    .end local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1    # "i$":I
    .end local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .end local v3    # "len$":I
    :goto_32
    return-object v2

    .line 2173
    .restart local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .restart local v3    # "len$":I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1    # "i$":I
    .end local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .end local v3    # "len$":I
    :cond_36
    move-object v2, v4

    .line 2180
    goto :goto_32
.end method

.method public isOcspCheckEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4891
    const-string v0, "OcspCheck"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageInInstallWhiteList(ILjava/lang/String;)Z
    .registers 13
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4968
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPackageInInstallWhiteList :  pkgName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4969
    if-nez p2, :cond_2e

    .line 4970
    const-string v6, "ApplicationPolicy"

    const-string v7, "isPackageInInstallWhiteList() Package name is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4995
    :cond_2d
    :goto_2d
    return v5

    .line 4974
    :cond_2e
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4975
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4977
    if-eqz v3, :cond_74

    .line 4978
    new-array v4, v6, [Ljava/lang/String;

    const-string v7, "packageName"

    aput-object v7, v4, v5

    .line 4980
    .local v4, "returnColumns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WhiteListInstallApps"

    invoke-virtual {v7, p1, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4983
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2d

    .line 4984
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 4985
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_52

    .line 4986
    const-string v7, "packageName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    move v5, v6

    .line 4987
    goto :goto_2d

    .line 4993
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "returnColumns":[Ljava/lang/String;
    :cond_74
    const-string v6, "ApplicationPolicy"

    const-string v7, "Package name is null. Failed to check the package to White list"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public isRevocationCheckEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4871
    const-string v0, "RevocationCheck"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4438
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStatusBarNotificationAllowed: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4439
    const-string v0, "PackageNameNotificationBlacklist"

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isWidgetAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4166
    const-string v0, "PackageNameWidgetBlacklist"

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 321
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    .line 323
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    .line 324
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 5152
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5154
    :try_start_28
    const-string v1, ".*"

    const/16 v4, 0x2000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v7

    .line 5156
    .local v7, "result":Z
    const-string v1, ".*"

    const v4, 0x8000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v0

    and-int/2addr v7, v0

    .line 5158
    if-nez v7, :cond_4b

    .line 5159
    const-string v0, "ApplicationPolicy"

    const-string v1, "Failed to initialize container"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4b} :catch_4c

    .line 5164
    .end local v7    # "result":Z
    :cond_4b
    :goto_4b
    return-void

    .line 5161
    :catch_4c
    move-exception v6

    .line 5162
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation initialize exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 5173
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5174
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 5175
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkApplicationsStateToBeReconciled(I)V

    .line 330
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 5168
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5169
    return-void
.end method

.method public removeAppNotificationBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4358
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppNotificationWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4381
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3128
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromBlackList "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3130
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3131
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3135
    :goto_16
    return v1

    :cond_17
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3188
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromWhiteList"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3190
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3192
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3196
    :goto_16
    return v1

    :cond_17
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "appPermission"    # Ljava/lang/String;

    .prologue
    .line 2842
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2843
    .local v0, "callingUid":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 2921
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2922
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public removeAppSignatureFromWhiteList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 3011
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3012
    .local v0, "callingUid":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 1248
    const/4 v3, 0x0

    .line 1249
    .local v3, "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 1250
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .restart local v3    # "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1253
    .local v2, "pkg":Ljava/lang/String;
    :try_start_21
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1254
    if-eqz v2, :cond_15

    .line 1255
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z

    .line 1257
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_15

    .line 1259
    :catch_2f
    move-exception v0

    .line 1260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 1264
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_34
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removePackageFromInstallWhiteList(ILjava/lang/String;)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 5005
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    .line 5006
    .local v2, "adminUid":I
    const-string v1, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackageFromInstallList :  pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " containerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5007
    if-nez p2, :cond_31

    .line 5008
    const-string v1, "ApplicationPolicy"

    const-string v3, "removePackageFromInstallWhiteList() Package name is null"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5021
    :goto_30
    return v0

    .line 5012
    :cond_31
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5013
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5015
    if-eqz v5, :cond_47

    .line 5016
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_30

    .line 5019
    :cond_47
    const-string v1, "ApplicationPolicy"

    const-string v3, "Package name is null. Failed to remove the package from White list"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public removePackagesFromClearCacheBlackList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5105
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5122
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataBlackList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5045
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataWhiteList(ILjava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5062
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4065
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4082
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4156
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4158
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4159
    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4129
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4131
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4132
    return v0
.end method

.method public restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v8, -0x3

    const/4 v7, -0x2

    .line 4510
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission()I

    .line 4511
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4512
    .local v6, "validPkgName":Ljava/lang/String;
    if-eqz v6, :cond_19

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    if-nez v9, :cond_1a

    .line 4559
    :cond_19
    :goto_19
    return v7

    .line 4515
    :cond_1a
    iget-boolean v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-nez v9, :cond_2e

    iget-boolean v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    :cond_2e
    move v7, v8

    .line 4517
    goto :goto_19

    .line 4520
    :cond_30
    :try_start_30
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    .line 4521
    .local v3, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_3c} :catch_78

    .line 4527
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4528
    :try_start_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_75

    move-result-wide v4

    .line 4531
    .local v4, "token":J
    const/4 v10, -0x2

    :try_start_44
    iput v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    .line 4532
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    .line 4533
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 4534
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    .line 4535
    const-string v8, "ApplicationPolicy"

    const-string v10, "failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_61} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_61} :catch_df
    .catchall {:try_start_44 .. :try_end_61} :catchall_fc

    .line 4553
    const/4 v8, 0x0

    :try_start_62
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 4555
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4556
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4557
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4536
    monitor-exit v9

    goto :goto_19

    .line 4560
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catchall_75
    move-exception v7

    monitor-exit v9
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_75

    throw v7

    .line 4522
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_78
    move-exception v1

    .line 4523
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v8, "ApplicationPolicy"

    const-string v9, "can\'t read from file descriptor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 4539
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    .restart local v4    # "token":J
    :cond_81
    :try_start_81
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v6}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;)Z
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_87} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_87} :catch_df
    .catchall {:try_start_81 .. :try_end_87} :catchall_fc

    move-result v10

    if-nez v10, :cond_a0

    .line 4553
    const/4 v7, 0x0

    :try_start_8b
    iput-boolean v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 4555
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4556
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4557
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4540
    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_75

    move v7, v8

    goto/16 :goto_19

    .line 4543
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a0
    const/4 v8, 0x1

    :try_start_a1
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 4544
    iput-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 4545
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, p2}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 4546
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_b2} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b2} :catch_df
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_fc

    .line 4553
    const/4 v7, 0x0

    :try_start_b3
    iput-boolean v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 4555
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4556
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4557
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4559
    iget v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    monitor-exit v9

    goto/16 :goto_19

    .line 4547
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_c9
    move-exception v0

    .line 4553
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 4555
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4556
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4557
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4548
    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_b3 .. :try_end_dd} :catchall_75

    goto/16 :goto_19

    .line 4549
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_df
    move-exception v1

    .line 4550
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_e0
    const-string v8, "ApplicationPolicy"

    const-string v10, "Failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_fc

    .line 4553
    const/4 v8, 0x0

    :try_start_e8
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 4555
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4556
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4557
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4551
    monitor-exit v9

    goto/16 :goto_19

    .line 4553
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_fc
    move-exception v7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 4555
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4556
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4557
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4553
    throw v7
    :try_end_110
    .catchall {:try_start_e8 .. :try_end_110} :catchall_75
.end method

.method public setAppInstallToSdCard(Z)Z
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3254
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3256
    .local v0, "callingUid":I
    :try_start_5
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3257
    const-string v3, "ApplicationPolicy"

    const-string v4, "setAppInstallToSdCard : External Storage Emulated"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    :goto_12
    return v2

    .line 3260
    :cond_13
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "APPLICATION_GENERAL"

    const-string v5, "installToSdCard"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1e

    move-result v2

    goto :goto_12

    .line 3262
    :catch_1e
    move-exception v1

    .line 3263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public setAppInstallationMode(I)Z
    .registers 4
    .param p1, "aInstallationMode"    # I

    .prologue
    .line 1681
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 1682
    const/4 v0, 0x0

    .line 1684
    .local v0, "bInstallationModeSet":Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_e

    .line 1686
    const-string v1, ".*"

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v0

    .line 1694
    :cond_d
    :goto_d
    return v0

    .line 1687
    :cond_e
    if-nez p1, :cond_d

    .line 1689
    const-string v1, ".*"

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "disableAppInstallation"    # Z

    .prologue
    .line 1629
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1630
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 1631
    return-void
.end method

.method public setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 1645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1646
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1647
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1649
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 1650
    return-void
.end method

.method public setApplicationNotificationMode(I)Z
    .registers 7
    .param p1, "mode"    # I

    .prologue
    .line 4393
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 4395
    .local v0, "callingUid":I
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4397
    packed-switch p1, :pswitch_data_54

    .line 4403
    const/4 v1, 0x0

    .line 4416
    :goto_20
    return v1

    .line 4406
    :pswitch_21
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION_MISC"

    const-string v4, "appNotificationMode"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 4411
    .local v1, "status":Z
    if-eqz v1, :cond_3b

    .line 4412
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4415
    :cond_3b
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 4397
    :pswitch_data_54
    .packed-switch 0x2
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public setApplicationState(ILjava/lang/String;Z)Z
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enableApp"    # Z

    .prologue
    .line 1562
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    .line 1563
    .local v2, "callingUid":I
    const/4 v8, 0x0

    .line 1564
    .local v8, "success":Z
    const-string v0, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationState :  pkgName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enableApp :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    if-eqz v1, :cond_89

    .line 1570
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1571
    const/4 v0, 0x0

    .line 1596
    :goto_42
    return v0

    .line 1573
    :cond_43
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_53

    .line 1574
    const-string v0, "ApplicationPolicy"

    const-string v3, "setApplicationState() : can not disable Admin app"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1575
    goto :goto_42

    .line 1578
    :cond_53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1581
    .local v9, "token":J
    const/4 v4, 0x2

    if-nez p3, :cond_8b

    const/4 v5, 0x1

    :goto_5b
    move-object v0, p0

    move v3, p1

    :try_start_5d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    .line 1584
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v7

    .line 1585
    .local v7, "state":Z
    const-string v0, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v7, :cond_8d

    const/4 v0, 0x1

    :goto_81
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_85} :catch_8f
    .catchall {:try_start_5d .. :try_end_85} :catchall_94

    .line 1589
    const/4 v8, 0x1

    .line 1593
    .end local v7    # "state":Z
    :goto_86
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v9    # "token":J
    :cond_89
    move v0, v8

    .line 1596
    goto :goto_42

    .line 1581
    .restart local v9    # "token":J
    :cond_8b
    const/4 v5, 0x0

    goto :goto_5b

    .line 1586
    .restart local v7    # "state":Z
    :cond_8d
    const/4 v0, 0x2

    goto :goto_81

    .line 1590
    .end local v7    # "state":Z
    :catch_8f
    move-exception v6

    .line 1591
    .local v6, "e":Ljava/lang/Exception;
    :try_start_90
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_86

    .line 1593
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_94
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11
    .param p1, "pkgList"    # [Ljava/lang/String;
    .param p2, "operation"    # Z

    .prologue
    const/4 v7, 0x0

    .line 3852
    const/4 v0, 0x0

    .line 3853
    .local v0, "appStateLst":[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3854
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3855
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3857
    .local v2, "lAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_27

    array-length v4, p1

    if-gez v4, :cond_29

    :cond_27
    move-object v4, v0

    .line 3871
    :goto_28
    return-object v4

    .line 3860
    :cond_29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    array-length v4, p1

    if-ge v1, v4, :cond_58

    .line 3861
    aget-object v4, p1, v1

    invoke-virtual {p0, v7, v4, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(ILjava/lang/String;Z)Z

    move-result v3

    .line 3862
    .local v3, "ret":Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_55

    .line 3863
    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3864
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 3868
    .end local v3    # "ret":Z
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_60

    .line 3869
    const/4 v4, 0x0

    goto :goto_28

    .line 3871
    :cond_60
    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_28
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "disableAppUninstallation"    # Z

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1821
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 1822
    return-void
.end method

.method public setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppUninstallation"    # Z

    .prologue
    .line 1836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1837
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1838
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1840
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 1841
    return-void
.end method

.method public setApplicationUninstallationMode(I)Z
    .registers 7
    .param p1, "uninstallationMode"    # I

    .prologue
    const/4 v4, 0x1

    .line 1755
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1756
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 1758
    .local v1, "uninstallationModeSet":Z
    if-ne v4, p1, :cond_32

    .line 1760
    const-string v2, ".*"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    .line 1768
    :cond_f
    :goto_f
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppInstallationMode : returns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    return v1

    .line 1762
    :cond_32
    if-nez p1, :cond_f

    .line 1764
    const-string v2, ".*"

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_f
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3080
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3083
    .local v0, "callingUid":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 3098
    :goto_24
    return v3

    .line 3087
    :cond_25
    const/4 v5, 0x1

    :try_start_26
    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 3089
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    .line 3090
    .local v2, "mAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    if-eqz v2, :cond_40

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_40

    .line 3091
    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 3092
    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_42

    :cond_40
    move v3, v4

    .line 3094
    goto :goto_24

    .line 3096
    .end local v2    # "mAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    :catch_42
    move-exception v1

    .line 3097
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 3794
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3795
    const/4 v3, 0x0

    .line 3796
    .local v3, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3797
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3798
    if-eqz p1, :cond_44

    .line 3799
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 3800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3803
    .local v4, "token":J
    if-nez p2, :cond_27

    .line 3804
    :try_start_1a
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_46
    .catchall {:try_start_1a .. :try_end_1f} :catchall_64

    move-result-object v2

    .line 3805
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_36

    .line 3806
    const/4 v6, 0x0

    .line 3818
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3822
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :goto_26
    return v6

    .line 3808
    .restart local v4    # "token":J
    :cond_27
    :try_start_27
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3809
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3812
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_36
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3813
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_40} :catch_46
    .catchall {:try_start_27 .. :try_end_40} :catchall_64

    .line 3814
    const/4 v3, 0x1

    .line 3818
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_41
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "token":J
    :cond_44
    move v6, v3

    .line 3822
    goto :goto_26

    .line 3815
    .restart local v4    # "token":J
    :catch_46
    move-exception v1

    .line 3816
    .local v1, "e":Ljava/lang/Exception;
    :try_start_47
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_64

    goto :goto_41

    .line 3818
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_64
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public stopApp(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3764
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 3765
    const/4 v2, 0x0

    .line 3766
    .local v2, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3767
    if-eqz p1, :cond_25

    .line 3768
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3771
    .local v3, "token":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3773
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_26
    .catchall {:try_start_14 .. :try_end_21} :catchall_44

    .line 3774
    const/4 v2, 0x1

    .line 3778
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_22
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    .end local v3    # "token":J
    :cond_25
    return v2

    .line 3775
    .restart local v3    # "token":J
    :catch_26
    move-exception v1

    .line 3776
    .local v1, "e":Ljava/lang/Exception;
    :try_start_27
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_44

    goto :goto_22

    .line 3778
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_44
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    .line 314
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 315
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    .line 316
    return-void
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keepDataAndCache"    # Z

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 1495
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public uninstallApplicationBySystem(ILjava/lang/String;Z)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1511
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1512
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1514
    :cond_10
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateDataUsageDb()V
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    .line 817
    return-void
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    .line 1275
    const/4 v1, 0x0

    .line 1276
    .local v1, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1277
    if-eqz p1, :cond_1f

    .line 1278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1280
    .local v2, "token":J
    :try_start_e
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1281
    const/4 v1, 0x1

    .line 1282
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearApplicationCacheFiles(Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_20
    .catchall {:try_start_e .. :try_end_1c} :catchall_26

    .line 1288
    :cond_1c
    :goto_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    .end local v2    # "token":J
    :cond_1f
    return v1

    .line 1284
    .restart local v2    # "token":J
    :catch_20
    move-exception v0

    .line 1285
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1286
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_1c

    .line 1288
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_26
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
