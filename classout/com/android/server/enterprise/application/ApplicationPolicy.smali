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
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final APPS_TO_RECONCILE:Ljava/lang/String; = "appToReconcile"

.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x493e0L

.field private static final COMPONENTS_TO_RECONCILE:Ljava/lang/String; = "componentsToReconcile"

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INTENT_SAMSUNG_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field private static final INTENT_SAMSUNG_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field private static final INTENT_SURFACE_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

.field private static final INTENT_SURFACE_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"

.field private static final MY_PID:I

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_CLEARCACHE_BLACKLIST:Ljava/lang/String; = "PackageNameClearCacheBlacklist"

.field private static final PKGNAME_CLEARCACHE_WHITELIST:Ljava/lang/String; = "PackageNameClearCacheWhitelist"

.field private static final PKGNAME_CLEARDATA_BLACKLIST:Ljava/lang/String; = "PackageNameClearDataBlacklist"

.field private static final PKGNAME_CLEARDATA_WHITELIST:Ljava/lang/String; = "PackageNameClearDataWhitelist"

.field private static final PKGNAME_CLIPBOARD_BLACKLIST:Ljava/lang/String; = "PackageNameDisableClipboardBlackList"

.field private static final PKGNAME_CLIPBOARD_WHITELIST:Ljava/lang/String; = "PackageNameDisableClipboardWhitelist"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PKGNAME_NOTIFICATION_BLACKLIST:Ljava/lang/String; = "PackageNameNotificationBlacklist"

.field private static final PKGNAME_NOTIFICATION_WHITELIST:Ljava/lang/String; = "PackageNameNotificationWhitelist"

.field private static final PKGNAME_OCSP_CHECK:Ljava/lang/String; = "OcspCheck"

.field private static final PKGNAME_REVOCATION_CHECK:Ljava/lang/String; = "RevocationCheck"

.field private static final PKGNAME_START_BLACKLIST:Ljava/lang/String; = "PackageNameStartBlacklist"

.field private static final PKGNAME_START_WHITELIST:Ljava/lang/String; = "PackageNameStartWhitelist"

.field private static final PKGNAME_STOP_BLACKLIST:Ljava/lang/String; = "PackageNameStopBlacklist"

.field private static final PKGNAME_STOP_WHITELIST:Ljava/lang/String; = "PackageNameStopWhitelist"

.field private static final PKGNAME_UPDATE_BLACKLIST:Ljava/lang/String; = "PackageNameUpdateBlacklist"

.field private static final PKGNAME_UPDATE_WHITELIST:Ljava/lang/String; = "PackageNameUpdateWhitelist"

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

.field private static mAppIconChangedPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mAppNameChangedPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field private final mAppControlStateLock:Ljava/lang/Object;

.field private mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private mBackupReturnCode:I

.field mContext:Landroid/content/Context;

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

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
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 204
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    .line 219
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    .line 221
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 227
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 292
    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 357
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    .line 215
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 217
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 225
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    .line 228
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    .line 286
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    .line 287
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    .line 288
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    .line 289
    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 293
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 296
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 297
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 298
    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 302
    new-instance v1, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 358
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 359
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 360
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 361
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V

    .line 363
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationIconDb;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    .line 364
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIconChangedMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    .line 365
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationNameChangedMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 366
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 369
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V

    .line 376
    return-void
.end method

.method private _installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .registers 22
    .param p1, "callingUid"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z
    .param p4, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 1709
    const/4 v11, 0x0

    .line 1711
    .local v11, "success":Z
    if-eqz p3, :cond_12

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1712
    const-string v2, "ApplicationPolicy"

    const-string v3, "installApplication : External Storage Emulated"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const/4 v2, 0x0

    .line 1809
    :goto_11
    return v2

    .line 1716
    :cond_12
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_installApplication : apkFilePath = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " callingUid = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1720
    if-eqz p2, :cond_56

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    :cond_56
    move v2, v11

    .line 1722
    goto :goto_11

    .line 1724
    :cond_58
    const/16 v5, 0x82

    .line 1726
    .local v5, "installFlags":I
    if-eqz p3, :cond_b0

    .line 1727
    or-int/lit8 v5, v5, 0x8

    .line 1731
    :goto_5e
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 1733
    .local v4, "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1735
    .local v12, "token":J
    const/4 v14, 0x0

    .line 1740
    .local v14, "verificationDisabled":Z
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8b

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x0

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1744
    const/4 v14, 0x1

    .line 1748
    :cond_8b
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1749
    .local v6, "userId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 1750
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->installPackageForMDM(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;IILjava/lang/String;)V

    .line 1756
    monitor-enter v4
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a6} :catch_144
    .catchall {:try_start_6a .. :try_end_a6} :catchall_174

    .line 1757
    :goto_a6
    :try_start_a6
    iget-boolean v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_141

    if-nez v2, :cond_b3

    .line 1759
    :try_start_aa
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_ad} :catch_ae
    .catchall {:try_start_aa .. :try_end_ad} :catchall_141

    goto :goto_a6

    .line 1760
    :catch_ae
    move-exception v2

    goto :goto_a6

    .line 1729
    .end local v4    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    .end local v6    # "userId":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v12    # "token":J
    .end local v14    # "verificationDisabled":Z
    :cond_b0
    or-int/lit8 v5, v5, 0x10

    goto :goto_5e

    .line 1763
    .restart local v4    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
    .restart local v6    # "userId":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v12    # "token":J
    .restart local v14    # "verificationDisabled":Z
    :cond_b3
    :try_start_b3
    iget v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12a

    .line 1764
    const/4 v11, 0x1

    .line 1765
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_e1

    .line 1766
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installExistingApplication(Ljava/lang/String;I)I

    move-result v10

    .line 1767
    .local v10, "result":I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_128

    const/4 v11, 0x1

    .line 1769
    .end local v10    # "result":I
    :cond_e1
    :goto_e1
    if-eqz p4, :cond_f6

    .line 1770
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1771
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "packageName"

    iget-object v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const/16 v2, 0x3ee

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v8}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 1789
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_f6
    :goto_f6
    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_b3 .. :try_end_f7} :catchall_141

    .line 1794
    if-eqz v11, :cond_112

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_112

    .line 1797
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1798
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1802
    :cond_112
    if-eqz v14, :cond_122

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1807
    .end local v6    # "userId":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_122
    :goto_122
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v11

    .line 1809
    goto/16 :goto_11

    .line 1767
    .restart local v6    # "userId":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v10    # "result":I
    :cond_128
    const/4 v11, 0x0

    goto :goto_e1

    .line 1778
    .end local v10    # "result":I
    :cond_12a
    const/4 v11, 0x0

    .line 1779
    if-eqz p4, :cond_f6

    .line 1780
    :try_start_12d
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1781
    .restart local v8    # "bundle":Landroid/os/Bundle;
    const-string v2, "pmerrorcode"

    iget v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1784
    const/16 v2, 0x3ef

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v8}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    goto :goto_f6

    .line 1789
    .end local v8    # "bundle":Landroid/os/Bundle;
    :catchall_141
    move-exception v2

    monitor-exit v4
    :try_end_143
    .catchall {:try_start_12d .. :try_end_143} :catchall_141

    :try_start_143
    throw v2
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_144} :catch_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_174

    .line 1790
    .end local v6    # "userId":I
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_144
    move-exception v9

    .line 1791
    .local v9, "e":Ljava/lang/Exception;
    :try_start_145
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_174

    .line 1794
    if-eqz v11, :cond_163

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_163

    .line 1797
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1798
    iget-object v2, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1802
    :cond_163
    if-eqz v14, :cond_122

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_122

    .line 1794
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_174
    move-exception v2

    if-eqz v11, :cond_190

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_190

    .line 1797
    iget-object v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1798
    iget-object v3, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1802
    :cond_190
    if-eqz v14, :cond_1a3

    .line 1803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v15, "package_verifier_enable"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v3, v15, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1807
    :cond_1a3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1794
    throw v2
.end method

.method private _setApplicationInstallationDisabled(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 2188
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2189
    if-eqz p2, :cond_12

    .line 2191
    const/4 v1, 0x4

    :try_start_7
    invoke-direct {p0, p2, p1, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2194
    const/16 v2, 0x8

    if-nez p3, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_15

    .line 2201
    :cond_12
    :goto_12
    return-void

    .line 2194
    :cond_13
    const/4 v1, 0x0

    goto :goto_f

    .line 2197
    :catch_15
    move-exception v0

    .line 2198
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

    .line 2399
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2400
    if-eqz p2, :cond_12

    .line 2402
    const/4 v2, 0x1

    :try_start_8
    invoke-direct {p0, p2, p1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2404
    const/16 v2, 0x400

    if-nez p3, :cond_13

    :goto_f
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_15

    .line 2410
    :cond_12
    :goto_12
    return-void

    .line 2404
    :cond_13
    const/4 v1, 0x0

    goto :goto_f

    .line 2406
    :catch_15
    move-exception v0

    .line 2407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private _uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1907
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1908
    .local v5, "userId":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1909
    if-nez p2, :cond_c

    .line 1910
    const/4 v1, 0x0

    .line 1933
    :goto_b
    return v1

    .line 1911
    :cond_c
    const/4 v4, 0x0

    .line 1912
    .local v4, "unInstallFlags":I
    if-eqz p3, :cond_10

    .line 1913
    const/4 v4, 0x1

    .line 1916
    :cond_10
    const/4 v1, 0x0

    .line 1917
    .local v1, "result":Z
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_uninstallApplication : userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1920
    .local v2, "token":J
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_uninstallApplication : callingUid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :try_start_47
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v6, p2, v5, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_51
    .catchall {:try_start_47 .. :try_end_4c} :catchall_56

    move-result v1

    .line 1931
    :goto_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .line 1928
    :catch_51
    move-exception v0

    .line 1929
    .local v0, "e":Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_4d

    .line 1931
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_56
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    .line 199
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
    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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
    const/4 v7, 0x0

    .line 4836
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4837
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4838
    .local v2, "callingUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_31

    .line 4839
    .local v3, "containerId":I
    if-eqz p4, :cond_e

    if-nez p2, :cond_10

    .line 4852
    :cond_e
    monitor-exit p0

    return v7

    .line 4841
    :cond_10
    const/4 v7, 0x1

    .line 4843
    .local v7, "result":Z
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, p4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->arrangePackageList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p4

    .line 4846
    if-eqz p4, :cond_e

    .line 4847
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4848
    .local v1, "pkg":Ljava/lang/String;
    const/4 v5, 0x1

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_31

    move-result v0

    and-int/2addr v7, v0

    goto :goto_1c

    .line 4836
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v3    # "containerId":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Z
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private arrangePackageList(Ljava/util/List;Z)Ljava/util/List;
    .registers 7
    .param p2, "removeWildCard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6602
    .local p1, "originalPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6604
    .local v0, "arrangedPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_39

    .line 6605
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6606
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 6607
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6608
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 6609
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    if-nez p2, :cond_b

    .line 6612
    :cond_27
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6613
    :cond_35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 6619
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_39
    return-object v0
.end method

.method private changeApplicationIconForUser(Ljava/lang/String;[BI)Z
    .registers 20
    .param p1, "aPackageName"    # Ljava/lang/String;
    .param p2, "aImageData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 3540
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changeApplicationIcon:packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "called from :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3542
    const/4 v8, 0x0

    .line 3544
    .local v8, "success":Z
    if-eqz p1, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-gez v13, :cond_38

    .line 3545
    :cond_2f
    const-string v13, "ApplicationPolicy"

    const-string v14, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 3610
    .end local v8    # "success":Z
    .local v9, "success":I
    :goto_37
    return v9

    .line 3549
    .end local v9    # "success":I
    .restart local v8    # "success":Z
    :cond_38
    if-nez p2, :cond_ee

    .line 3550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationIcon(Ljava/lang/String;I)Z

    move-result v8

    .line 3555
    :goto_46
    if-eqz v8, :cond_eb

    .line 3556
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v13, :cond_53

    .line 3557
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    .line 3559
    :cond_53
    if-nez p2, :cond_fe

    .line 3560
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_72

    .line 3561
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3574
    :cond_72
    :goto_72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_eb

    .line 3576
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_15e

    const-string v13, "package"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v0, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_8d
    invoke-direct {v6, v14, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3578
    .local v6, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 3580
    .local v7, "packageUid":I
    :try_start_91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3581
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9e} :catch_180

    .line 3586
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_9e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v14, "android"

    const/4 v15, 0x0

    move/from16 v0, p3

    invoke-static {v13, v14, v15, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v12

    .line 3588
    .local v12, "userCtx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3589
    .local v10, "token":J
    const-string v13, "android.intent.extra.user_handle"

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3590
    if-eqz v12, :cond_e1

    .line 3591
    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/String;

    .line 3592
    .local v5, "extraList":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object p1, v5, v13

    .line 3593
    const-string v13, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v6, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3594
    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3596
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v13

    if-nez v13, :cond_e1

    .line 3598
    :try_start_d6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    const-string v14, "com.android.settings"

    move/from16 v0, p3

    invoke-interface {v13, v14, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_e1} :catch_161

    .line 3606
    .end local v5    # "extraList":[Ljava/lang/String;
    :cond_e1
    :goto_e1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3607
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "packageUid":I
    .end local v10    # "token":J
    .end local v12    # "userCtx":Landroid/content/Context;
    :cond_eb
    move v9, v8

    .line 3610
    .restart local v9    # "success":I
    goto/16 :goto_37

    .line 3552
    .end local v9    # "success":I
    :cond_ee
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationIcon(Ljava/lang/String;[BI)Z

    move-result v8

    goto/16 :goto_46

    .line 3564
    :cond_fe
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_131

    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_131

    .line 3566
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 3567
    :cond_131
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_72

    .line 3568
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3569
    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 3576
    :cond_15e
    const/4 v13, 0x0

    goto/16 :goto_8d

    .line 3600
    .restart local v5    # "extraList":[Ljava/lang/String;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "packageUid":I
    .restart local v10    # "token":J
    .restart local v12    # "userCtx":Landroid/content/Context;
    :catch_161
    move-exception v4

    .line 3601
    .local v4, "e":Landroid/os/RemoteException;
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail getting ActivityManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 3583
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "extraList":[Ljava/lang/String;
    .end local v10    # "token":J
    .end local v12    # "userCtx":Landroid/content/Context;
    :catch_180
    move-exception v13

    goto/16 :goto_9e
.end method

.method private changeApplicationNameForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 6750
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeApplicationName:packageName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "called from :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6752
    const/4 v3, 0x0

    .line 6753
    .local v3, "success":Z
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 6754
    .local v8, "userId":I
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gez v9, :cond_38

    .line 6755
    :cond_2f
    const-string v9, "ApplicationPolicy"

    const-string v10, "changeApplicationName: packageName can\'t be null :"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 6808
    .end local v3    # "success":Z
    .local v4, "success":I
    :goto_37
    return v4

    .line 6759
    .end local v4    # "success":I
    .restart local v3    # "success":Z
    :cond_38
    if-nez p2, :cond_bf

    .line 6760
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v9, p1, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationName(Ljava/lang/String;I)Z

    move-result v3

    .line 6764
    :goto_40
    if-eqz v3, :cond_bc

    .line 6765
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v9, :cond_4d

    .line 6766
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 6768
    :cond_4d
    if-nez p2, :cond_c7

    .line 6769
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6a

    .line 6770
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6783
    :cond_6a
    :goto_6a
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 6784
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_121

    const-string v9, "package"

    const/4 v11, 0x0

    invoke-static {v9, p1, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    :goto_7d
    invoke-direct {v2, v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6786
    .local v2, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v7

    .line 6788
    .local v7, "userCtx":Landroid/content/Context;
    if-eqz v7, :cond_bc

    .line 6789
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 6790
    .local v1, "extraList":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p1, v1, v9

    .line 6791
    const-string v9, "android.intent.extra.user_handle"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6792
    const-string v9, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 6794
    .local v5, "token":J
    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6796
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v9

    if-nez v9, :cond_b9

    .line 6798
    :try_start_b0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    const-string v10, "com.android.settings"

    invoke-interface {v9, v10, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b9} :catch_124

    .line 6804
    :cond_b9
    :goto_b9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "extraList":[Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local v7    # "userCtx":Landroid/content/Context;
    :cond_bc
    move v4, v3

    .line 6808
    .restart local v4    # "success":I
    goto/16 :goto_37

    .line 6762
    .end local v4    # "success":I
    :cond_bf
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v9, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationName(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto/16 :goto_40

    .line 6773
    :cond_c7
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_f6

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f6

    .line 6775
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 6776
    :cond_f6
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6a

    .line 6777
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6778
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 6784
    :cond_121
    const/4 v9, 0x0

    goto/16 :goto_7d

    .line 6800
    .restart local v1    # "extraList":[Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "userCtx":Landroid/content/Context;
    :catch_124
    move-exception v0

    .line 6801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail getting ActivityManager "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9
.end method

.method private checkApplicationsStateToBeReconciled(I)V
    .registers 13
    .param p1, "uid"    # I

    .prologue
    .line 5919
    const/4 v1, 0x0

    .line 5922
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5924
    .local v3, "exist":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5926
    .local v5, "pkgs":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_19

    .line 5927
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5930
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

    .line 5933
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 5934
    const-string v6, "packageName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5936
    .local v4, "pkgName":Ljava/lang/String;
    const-string v6, "controlState"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 5939
    .local v0, "controlState":I
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2e

    .line 5940
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5941
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_55
    .catchall {:try_start_1 .. :try_end_54} :catchall_77

    goto :goto_2e

    .line 5950
    .end local v0    # "controlState":I
    .end local v3    # "exist":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":Ljava/lang/StringBuilder;
    :catch_55
    move-exception v2

    .line 5951
    .local v2, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnAppReconcileNeeded"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_77

    .line 5954
    if-eqz v1, :cond_62

    .line 5955
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5958
    :cond_62
    return-void

    .line 5945
    .restart local v3    # "exist":Ljava/lang/String;
    .restart local v5    # "pkgs":Ljava/lang/StringBuilder;
    :cond_63
    :try_start_63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_74

    .line 5946
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_55
    .catchall {:try_start_63 .. :try_end_74} :catchall_77

    .line 5954
    :cond_74
    if-eqz v1, :cond_62

    goto :goto_5f

    .end local v3    # "exist":Ljava/lang/String;
    .end local v5    # "pkgs":Ljava/lang/StringBuilder;
    :catchall_77
    move-exception v6

    if-eqz v1, :cond_7d

    .line 5955
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5954
    :cond_7d
    throw v6
.end method

.method private checkComponentsStateToBeReconciled(I)V
    .registers 13
    .param p1, "uid"    # I

    .prologue
    .line 5962
    const/4 v3, 0x0

    .line 5965
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "componentsToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5967
    .local v5, "exist":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5969
    .local v1, "components":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_19

    .line 5970
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5973
    :cond_19
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "APPLICATION_COMPONENT"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "component"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "componentControlState"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5976
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 5977
    const-string v6, "component"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5979
    .local v0, "compName":Ljava/lang/String;
    const-string v6, "componentControlState"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5982
    .local v2, "controlState":I
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_2e

    .line 5983
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5984
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_55
    .catchall {:try_start_1 .. :try_end_54} :catchall_77

    goto :goto_2e

    .line 5993
    .end local v0    # "compName":Ljava/lang/String;
    .end local v1    # "components":Ljava/lang/StringBuilder;
    .end local v2    # "controlState":I
    .end local v5    # "exist":Ljava/lang/String;
    :catch_55
    move-exception v4

    .line 5994
    .local v4, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnComponentReconcileNeeded"

    invoke-static {v6, v7, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_77

    .line 5997
    if-eqz v3, :cond_62

    .line 5998
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 6001
    :cond_62
    return-void

    .line 5988
    .restart local v1    # "components":Ljava/lang/StringBuilder;
    .restart local v5    # "exist":Ljava/lang/String;
    :cond_63
    :try_start_63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_74

    .line 5989
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "componentsToReconcile"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_55
    .catchall {:try_start_63 .. :try_end_74} :catchall_77

    .line 5997
    :cond_74
    if-eqz v3, :cond_62

    goto :goto_5f

    .end local v1    # "components":Ljava/lang/StringBuilder;
    .end local v5    # "exist":Ljava/lang/String;
    :catchall_77
    move-exception v6

    if-eqz v3, :cond_7d

    .line 5998
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5997
    :cond_7d
    throw v6
.end method

.method private checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 2909
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2910
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

    .line 2912
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2913
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2914
    const/4 v1, 0x1

    monitor-exit v2

    .line 2918
    :goto_29
    return v1

    .line 2917
    :cond_2a
    monitor-exit v2

    .line 2918
    const/4 v1, 0x0

    goto :goto_29

    .line 2917
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
    .line 3949
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 3954
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 3950
    :catch_5
    move-exception v0

    .line 3951
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3952
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "aRawData"    # Ljava/lang/String;

    .prologue
    .line 4557
    if-nez p1, :cond_5

    .line 4558
    const-string p1, "<invalid>"

    .line 4565
    .end local p1    # "aRawData":Ljava/lang/String;
    :cond_4
    :goto_4
    return-object p1

    .line 4560
    .restart local p1    # "aRawData":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 4561
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4562
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 4560
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private clearApplicationIconDbForUser(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 6839
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6840
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUserManagedByEnterpriseAdmin(I)Z

    move-result v3

    if-nez v3, :cond_43

    .line 6843
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v3, :cond_43

    .line 6844
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6845
    .local v0, "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1a
    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 6846
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6847
    .local v1, "iconsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 6848
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationIconForUser(Ljava/lang/String;[BI)Z

    .line 6850
    :cond_36
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/List;

    .line 6851
    .restart local v0    # "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1a

    .line 6854
    .end local v0    # "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "iconsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationNameForUid(I)V

    .line 6855
    return-void
.end method

.method private clearApplicationNameForUid(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 6812
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 6813
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->clearChangedApplicationName(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6815
    .local v0, "deletedPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-nez v5, :cond_15

    .line 6816
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 6818
    :cond_15
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6819
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_37

    .line 6820
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6821
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_27

    .line 6824
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_37
    return-void
.end method

.method private clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I

    .prologue
    .line 4891
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4892
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4893
    .local v8, "containerId":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4895
    .local v7, "callingUid":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4896
    .local v9, "currentPkgListForAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 4898
    .local v13, "result":Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v5

    .line 4900
    .local v5, "adminUid":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v15

    .line 4901
    :try_start_1b
    sget-object v14, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 4902
    .local v4, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_4e

    .line 4903
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 4904
    .local v11, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 4905
    .local v12, "pkg":Ljava/lang/String;
    invoke-static {v8, v12}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 4908
    .end local v4    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    :catchall_4b
    move-exception v14

    monitor-exit v15
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_4b

    throw v14

    .restart local v4    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_4e
    :try_start_4e
    monitor-exit v15
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    .line 4910
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_61

    .line 4911
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v13

    .line 4913
    :cond_61
    return v13
.end method

.method private clearApplicationStateList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitMask"    # I

    .prologue
    .line 4887
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private createAdminMap(J)V
    .registers 7
    .param p1, "adminUid"    # J

    .prologue
    .line 614
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_117

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v1, "PermissionInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v1, "SignatureInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v1, "SignatureInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v1, "UninstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v1, "UninstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v1, "PackageNameStopBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v1, "PackageNameStopWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "PackageNameWidgetBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v1, "PackageNameWidgetWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v1, "PackageNameNotificationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v1, "PackageNameNotificationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v1, "RevocationCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v1, "OcspCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "PackageNameClearDataBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "PackageNameClearDataWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v1, "PackageNameClearCacheBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v1, "PackageNameClearCacheWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v1, "PackageNameUpdateBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "PackageNameUpdateWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v1, "PackageNameStartBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v1, "PackageNameStartWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v1, "PackageNameDisableClipboardBlackList"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v1, "PackageNameDisableClipboardWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_117
    monitor-exit v2

    .line 658
    return-void

    .line 657
    :catchall_119
    move-exception v1

    monitor-exit v2
    :try_end_11b
    .catchall {:try_start_3 .. :try_end_11b} :catchall_119

    throw v1
.end method

.method private createContextForCurrentUser(Ljava/lang/String;I)Landroid/content/Context;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 6710
    const/4 v0, 0x0

    .line 6711
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 6712
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6714
    .local v2, "token":J
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 6715
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, p2, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1a} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_2a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_35

    move-result-object v0

    .line 6724
    :goto_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6726
    return-object v0

    .line 6717
    :catch_1f
    move-exception v1

    .line 6718
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_20
    const-string v5, "ApplicationPolicy"

    const-string v6, "Couldn\'t create user context"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6719
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    goto :goto_1b

    .line 6720
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2a
    move-exception v1

    .line 6721
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "ApplicationPolicy"

    const-string v6, "Couldn\'t get user info"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6722
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_35

    goto :goto_1b

    .line 6724
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_35
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 6730
    const/4 v0, 0x0

    .line 6731
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6733
    .local v2, "token":J
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_14
    .catchall {:try_start_5 .. :try_end_f} :catchall_1f

    move-result-object v0

    .line 6739
    :goto_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6741
    return-object v0

    .line 6735
    :catch_14
    move-exception v1

    .line 6736
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15
    const-string v4, "ApplicationPolicy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6737
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_10

    .line 6739
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 329
    :try_start_a
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_f} :catch_10

    .line 333
    :goto_f
    return-object p1

    .line 330
    :catch_10
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceAppPermission exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_BACKUP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 349
    return-object p1
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6037
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 6038
    return-object p1
.end method

.method private enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getActualApplicationComponentStateEnabled(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "cmpName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x1

    .line 1462
    const/4 v1, 0x0

    .line 1463
    .local v1, "enabled":Z
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1467
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1488
    :goto_10
    return v6

    .line 1470
    :cond_11
    if-eqz v2, :cond_28

    .line 1471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1474
    .local v3, "token":J
    :try_start_17
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    invoke-virtual {v7, p2, v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_44

    move-result v5

    .line 1480
    .local v5, "value":I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_42

    move v1, v6

    .line 1485
    .end local v5    # "value":I
    :goto_25
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    .end local v3    # "token":J
    :cond_28
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getActualApplicationComponentStateEnabled() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v1

    .line 1488
    goto :goto_10

    .line 1480
    .restart local v3    # "token":J
    .restart local v5    # "value":I
    :cond_42
    const/4 v1, 0x0

    goto :goto_25

    .line 1481
    .end local v5    # "value":I
    :catch_44
    move-exception v0

    .line 1482
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method private getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1433
    const/4 v1, 0x0

    .line 1434
    .local v1, "enabled":Z
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1437
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 1458
    :goto_c
    return v5

    .line 1440
    :cond_d
    if-eqz p2, :cond_24

    .line 1441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1444
    .local v2, "token":J
    :try_start_13
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v6, p2, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_40

    move-result v4

    .line 1450
    .local v4, "value":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_3e

    move v1, v5

    .line 1455
    .end local v4    # "value":I
    :goto_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1457
    .end local v2    # "token":J
    :cond_24
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActualApplicationStateEnabled() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 1458
    goto :goto_c

    .line 1450
    .restart local v2    # "token":J
    .restart local v4    # "value":I
    :cond_3e
    const/4 v1, 0x0

    goto :goto_21

    .line 1451
    .end local v4    # "value":I
    :catch_40
    move-exception v0

    .line 1452
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4148
    const/4 v1, 0x0

    .line 4149
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4150
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4151
    .local v4, "userId":I
    if-eqz p2, :cond_19

    .line 4152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4155
    .local v2, "token":J
    :try_start_f
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_15} :catch_1a

    move-result-object v1

    .line 4166
    :goto_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4168
    .end local v2    # "token":J
    :cond_19
    return-object v1

    .line 4161
    .restart local v2    # "token":J
    :catch_1a
    move-exception v0

    .line 4162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 6010
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6011
    :try_start_3
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 6013
    .local v5, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v5, :cond_44

    .line 6014
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

    .line 6015
    .local v3, "uid":J
    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_f

    .line 6018
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6019
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_f

    .line 6020
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 6021
    .local v2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_f

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 6022
    const/4 v6, 0x1

    monitor-exit v7

    .line 6028
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "uid":J
    :goto_43
    return v6

    .line 6027
    :cond_44
    monitor-exit v7

    .line 6028
    const/4 v6, 0x0

    goto :goto_43

    .line 6027
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
    .line 2831
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2833
    .local v4, "pkg":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    if-eqz p2, :cond_4e

    .line 2835
    :try_start_7
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2836
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_13

    .line 2837
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2839
    :cond_13
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    .line 2840
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1b
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    .line 2841
    .local v6, "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2b

    .line 2840
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2844
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :catch_2b
    move-exception v1

    .line 2845
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ApplicationPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
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

    .line 2874
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-object v4

    .line 2850
    :cond_4e
    if-nez p1, :cond_88

    const-string p1, ""

    .line 2851
    :goto_52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4d

    .line 2853
    :try_start_58
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2855
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_4d

    .line 2856
    iput-object p1, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2857
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_70

    .line 2858
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2860
    :cond_70
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    .line 2861
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_78
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    .line 2862
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_85} :catch_8d

    .line 2861
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 2850
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    .line 2866
    :catch_8d
    move-exception v1

    .line 2867
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2868
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

.method private getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3485
    const/4 v1, 0x0

    .line 3486
    .local v1, "pkgst":Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 3487
    .local v4, "userId":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3488
    if-eqz p2, :cond_1d

    .line 3489
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 3490
    .local v0, "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3493
    .local v2, "token":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, p2, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageSizeInfo(Ljava/lang/String;I)Landroid/content/pm/PackageStats;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_23
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    move-result-object v1

    .line 3513
    :goto_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3516
    .end local v0    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .end local v2    # "token":J
    :cond_1d
    return-object v1

    .line 3513
    .restart local v0    # "obs":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .restart local v2    # "token":J
    :catchall_1e
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3510
    :catch_23
    move-exception v5

    goto :goto_1a
.end method

.method private getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4925
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4926
    :try_start_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4927
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 4929
    .local v8, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v8, :cond_74

    .line 4930
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 4932
    .local v6, "uid":J
    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne p3, v9, :cond_14

    .line 4937
    if-lez p1, :cond_39

    const/4 v9, 0x1

    if-gt p1, v9, :cond_39

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v9

    if-ne v9, p1, :cond_14

    .line 4943
    :cond_39
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4944
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_14

    .line 4945
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 4946
    .local v3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4947
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 4953
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "uid":J
    .end local v8    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_71
    move-exception v9

    monitor-exit v10
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v9

    .line 4952
    .restart local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_74
    :try_start_74
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v10
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_71

    return-object v9
.end method

.method private getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4917
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4918
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 4919
    .local v1, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4921
    .local v0, "containerId":I
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z
    .registers 13
    .param p1, "userID"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3091
    const/4 v4, 0x1

    .line 3093
    .local v4, "uninstall":Z
    const-string v6, "ApplicationPolicy"

    const-string v7, "getApplicationUninstallationEnabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3096
    if-nez p2, :cond_17

    .line 3097
    :try_start_e
    const-string v7, "ApplicationPolicy"

    const-string v8, "getApplicationUninstallationEnabled() : packageName is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    monitor-exit v6

    .line 3140
    :goto_16
    return v5

    .line 3100
    :cond_17
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v7, :cond_23

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 3101
    :cond_23
    monitor-exit v6
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_c5

    move v5, v4

    goto :goto_16

    .line 3104
    :cond_26
    :try_start_26
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3106
    .local v3, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 3107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 3108
    .local v2, "uid":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    const v8, 0x186a0

    div-int v0, v7, v8

    .line 3109
    .local v0, "AdminUserID":I
    if-eq p1, v0, :cond_8a

    .line 3110
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_6a} :catch_6b
    .catchall {:try_start_26 .. :try_end_6a} :catchall_c5

    goto :goto_30

    .line 3134
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    .end local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_6b
    move-exception v1

    .line 3135
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3137
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6f
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_c5

    .line 3139
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3140
    goto :goto_16

    .line 3113
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "uid":Ljava/lang/Long;
    .restart local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_8a
    :try_start_8a
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v7

    if-nez v7, :cond_30

    .line 3118
    const-string v7, "UninstallationWhitelist"

    invoke-direct {p0, v2, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 3120
    if-nez v4, :cond_30

    .line 3125
    const-string v7, "UninstallationBlacklist"

    invoke-direct {p0, v2, v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c3

    const/4 v4, 0x1

    .line 3127
    :goto_a5
    if-nez v4, :cond_30

    .line 3128
    const-string v5, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_bf} :catch_6b
    .catchall {:try_start_8a .. :try_end_bf} :catchall_c5

    .line 3129
    :try_start_bf
    monitor-exit v6

    move v5, v4

    goto/16 :goto_16

    :cond_c3
    move v4, v5

    .line 3125
    goto :goto_a5

    .line 3137
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    .end local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_c5
    move-exception v5

    monitor-exit v6
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_c5

    throw v5
.end method

.method private getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2672
    const/4 v7, 0x0

    .line 2673
    .local v7, "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2674
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

    .line 2679
    .local v5, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "packageName"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2682
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_b9

    .line 2683
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2684
    .restart local v7    # "appInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    :goto_3a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 2685
    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    .line 2686
    .local v6, "appInfo":Landroid/app/enterprise/ManagedAppInfo;
    const-string v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 2688
    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 2690
    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 2692
    const-string v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 2694
    const-string v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 2696
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    move v0, v9

    :goto_92
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 2699
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v9

    :goto_9d
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 2701
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v9

    :goto_a8
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 2703
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_ae
    move v0, v10

    .line 2696
    goto :goto_92

    :cond_b0
    move v0, v9

    goto :goto_92

    :cond_b2
    move v0, v10

    .line 2699
    goto :goto_9d

    :cond_b4
    move v0, v10

    .line 2701
    goto :goto_a8

    .line 2705
    .end local v6    # "appInfo":Landroid/app/enterprise/ManagedAppInfo;
    :cond_b6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2708
    :cond_b9
    if-eqz v7, :cond_d0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d0

    .line 2709
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    .line 2711
    :goto_cf
    return-object v0

    :cond_d0
    const/4 v0, 0x0

    goto :goto_cf
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6084
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

    .line 3424
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 3425
    .local v1, "pidArray":[I
    aput p1, v1, v3

    .line 3426
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 3427
    .local v0, "memInfoArray":[Landroid/os/Debug$MemoryInfo;
    if-nez v0, :cond_f

    .line 3428
    const-wide/16 v2, 0x0

    .line 3430
    :goto_e
    return-wide v2

    :cond_f
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    goto :goto_e
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 306
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 309
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1492
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1493
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, "pkg":Ljava/lang/String;
    :goto_a
    return-object v0

    .line 1493
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 4829
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 4825
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPidList(I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4574
    new-instance v3, Ljava/io/File;

    const-string v6, "/proc/"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4575
    .local v3, "lProcDir":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4576
    .local v2, "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 4578
    .local v1, "lFiles":[Ljava/lang/String;
    if-nez v1, :cond_13

    .line 4595
    :cond_12
    return-object v2

    .line 4582
    :cond_13
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPidList: process count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4583
    const/4 v5, 0x0

    .line 4584
    .local v5, "uid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    array-length v6, v1

    if-ge v0, v6, :cond_12

    .line 4586
    const/4 v6, 0x1

    aget-object v7, v1, v0

    const-string v8, "[0-9]+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-ne v6, v7, :cond_4c

    .line 4587
    aget-object v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4588
    .local v4, "pid":I
    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    .line 4589
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq p1, v6, :cond_4f

    .line 4584
    .end local v4    # "pid":I
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 4591
    .restart local v4    # "pid":I
    :cond_4f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c
.end method

.method private getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4175
    const/4 v1, 0x0

    .line 4176
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4177
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4178
    .local v4, "userId":I
    if-eqz p2, :cond_19

    .line 4179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4182
    .local v2, "token":J
    :try_start_f
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_15} :catch_1a

    move-result-object v1

    .line 4192
    :goto_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4194
    .end local v2    # "token":J
    :cond_19
    return-object v1

    .line 4188
    .restart local v2    # "token":J
    :catch_1a
    move-exception v0

    .line 4189
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private getProvidersFromPackage(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgMngr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5173
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5174
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5175
    const/16 v6, 0x80

    invoke-virtual {p2, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 5178
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_34

    const/4 v0, 0x0

    .line 5179
    .local v0, "N":I
    :goto_18
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v0, :cond_39

    .line 5180
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 5181
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5179
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 5178
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_18

    .line 5184
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_39
    return-object v4
.end method

.method private getSamsungWidgets(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 10
    .param p1, "pkgMngr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5248
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5249
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5250
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5251
    const/16 v5, 0x80

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5253
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 5254
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 5256
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3b
    return-object v4
.end method

.method private getService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 314
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 317
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method private getSurfaceWidgets(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 10
    .param p1, "pkgMngr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5262
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5263
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5264
    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5265
    const/16 v5, 0x80

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5267
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 5268
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 5270
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3b
    return-object v4
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4214
    if-nez p0, :cond_4

    .line 4218
    :cond_3
    :goto_3
    return-object v1

    .line 4214
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

    .line 4215
    :catch_10
    move-exception v0

    .line 4216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getWidgetProviderDisabledList(I)Ljava/util/Set;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5366
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 5367
    .local v6, "ret":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "disabledWidgetComponents"

    invoke-virtual {v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 5369
    .local v5, "list":Ljava/lang/String;
    if-eqz v5, :cond_2c

    .line 5370
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5371
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

    .line 5372
    .local v1, "component":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 5373
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5371
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 5377
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "components":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2c
    return-object v6
.end method

.method private installExistingApplication(Ljava/lang/String;I)I
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1852
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1857
    :goto_6
    return v1

    .line 1853
    :catch_7
    move-exception v0

    .line 1854
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1857
    const/4 v1, -0x1

    goto :goto_6
.end method

.method private isActiveAdmin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4813
    if-nez p1, :cond_5

    .line 4821
    :cond_4
    :goto_4
    return v0

    .line 4817
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_4

    move v0, v1

    .line 4818
    goto :goto_4
.end method

.method private isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z
    .registers 20
    .param p1, "userID"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pkgInst"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "showMsg"    # Z

    .prologue
    .line 2945
    const/4 v7, 0x1

    .line 2947
    .local v7, "install":Z
    const-string v11, "ApplicationPolicy"

    const-string v12, "isApplicationInstallationEnabled"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2950
    :try_start_b
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v11, :cond_17

    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 2951
    :cond_17
    monitor-exit v12

    move v8, v7

    .line 3050
    .end local v7    # "install":Z
    .local v8, "install":I
    :goto_19
    return v8

    .line 2953
    .end local v8    # "install":I
    .restart local v7    # "install":Z
    :cond_1a
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_230

    move-result-object v4

    .line 2956
    .local v4, "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_start_22
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2958
    .local v10, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2c
    :goto_2c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_233

    .line 2959
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 2960
    .local v9, "uid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-int v11, v13

    const v13, 0x186a0

    div-int v2, v11, v13

    .line 2961
    .local v2, "AdminUserID":I
    move/from16 v0, p1

    if-eq v0, v2, :cond_9c

    .line 2962
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled() :  userID :   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  != AdminUserID  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6a} :catch_6b
    .catchall {:try_start_22 .. :try_end_6a} :catchall_224

    goto :goto_2c

    .line 3040
    .end local v2    # "AdminUserID":I
    .end local v9    # "uid":Ljava/lang/Long;
    .end local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_6b
    move-exception v6

    .line 3041
    .local v6, "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3042
    const-string v11, "ApplicationPolicy"

    const-string v13, "Could not retrieve permissions & signature for package"

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_224

    .line 3044
    if-eqz p4, :cond_80

    if-nez v7, :cond_80

    .line 3045
    const v11, 0x10402b6

    :try_start_7d
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3048
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_80
    :goto_80
    monitor-exit v12
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_230

    .line 3049
    const-string v11, "ApplicationPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 3050
    .restart local v8    # "install":I
    goto/16 :goto_19

    .line 2965
    .end local v8    # "install":I
    .restart local v2    # "AdminUserID":I
    .restart local v9    # "uid":Ljava/lang/Long;
    .restart local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_9c
    :try_start_9c
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v11

    if-nez v11, :cond_2c

    .line 2973
    const-string v11, "PackageNameInstallationWhitelist"

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 2975
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    if-nez v7, :cond_2c

    .line 2984
    const-string v11, "PackageNameInstallationBlacklist"

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_113

    const/4 v7, 0x1

    .line 2986
    :goto_d3
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    if-nez v7, :cond_115

    .line 2989
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_105} :catch_6b
    .catchall {:try_start_9c .. :try_end_105} :catchall_224

    .line 3044
    if-eqz p4, :cond_10f

    if-nez v7, :cond_10f

    .line 3045
    const v11, 0x10402b6

    :try_start_10c
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2990
    :cond_10f
    monitor-exit v12
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_230

    move v8, v7

    .restart local v8    # "install":I
    goto/16 :goto_19

    .line 2984
    .end local v8    # "install":I
    :cond_113
    const/4 v7, 0x0

    goto :goto_d3

    .line 2994
    :cond_115
    :try_start_115
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2997
    .local v3, "appPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "PermissionInstallationBlacklist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v3, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 2999
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    .line 3001
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    if-nez v7, :cond_173

    .line 3004
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_165} :catch_6b
    .catchall {:try_start_115 .. :try_end_165} :catchall_224

    .line 3044
    if-eqz p4, :cond_16f

    if-nez v7, :cond_16f

    .line 3045
    const v11, 0x10402b6

    :try_start_16c
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3005
    :cond_16f
    monitor-exit v12
    :try_end_170
    .catchall {:try_start_16c .. :try_end_170} :catchall_230

    move v8, v7

    .restart local v8    # "install":I
    goto/16 :goto_19

    .line 3011
    .end local v8    # "install":I
    :cond_173
    :try_start_173
    new-instance v5, Ljava/util/ArrayList;

    iget-object v11, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3014
    .local v5, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationWhitelist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v5, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3016
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationWhitelist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2c

    .line 3021
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3024
    .restart local v5    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationBlacklist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v5, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 3025
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v13, "SignatureInstallationBlacklist"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1e4

    .line 3027
    :cond_1e3
    const/4 v7, 0x0

    .line 3031
    :cond_1e4
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    if-nez v7, :cond_2c

    .line 3034
    const-string v11, "ApplicationPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_216} :catch_6b
    .catchall {:try_start_173 .. :try_end_216} :catchall_224

    .line 3044
    if-eqz p4, :cond_220

    if-nez v7, :cond_220

    .line 3045
    const v11, 0x10402b6

    :try_start_21d
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3035
    :cond_220
    monitor-exit v12

    move v8, v7

    .restart local v8    # "install":I
    goto/16 :goto_19

    .line 3044
    .end local v2    # "AdminUserID":I
    .end local v3    # "appPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "install":I
    .end local v9    # "uid":Ljava/lang/Long;
    .end local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_224
    move-exception v11

    if-eqz p4, :cond_22f

    if-nez v7, :cond_22f

    .line 3045
    const v13, 0x10402b6

    invoke-static {v13}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3044
    :cond_22f
    throw v11

    .line 3048
    .end local v4    # "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :catchall_230
    move-exception v11

    monitor-exit v12
    :try_end_232
    .catchall {:try_start_21d .. :try_end_232} :catchall_230

    throw v11

    .line 3044
    .restart local v4    # "appPkgInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    .restart local v10    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_233
    if-eqz p4, :cond_80

    if-nez v7, :cond_80

    .line 3045
    const v11, 0x10402b6

    :try_start_23a
    invoke-static {v11}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V
    :try_end_23d
    .catchall {:try_start_23a .. :try_end_23d} :catchall_230

    goto/16 :goto_80
.end method

.method private isApplicationInstalledInternal(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1587
    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1588
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isApplicationInstalled : pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1592
    .local v1, "token":J
    :try_start_21
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1594
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_30

    .line 1595
    if-eqz v0, :cond_2f

    const/4 v3, 0x1

    .line 1605
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2f
    :goto_2f
    return v3

    .line 1601
    :catch_30
    move-exception v4

    .line 1604
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f
.end method

.method private isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "keyBlack"    # Ljava/lang/String;
    .param p3, "keyWhite"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4973
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 20
    .param p1, "containerId"    # I
    .param p2, "keyBlack"    # Ljava/lang/String;
    .param p3, "keyWhite"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 4977
    monitor-enter p0

    :try_start_1
    const-string v11, "ApplicationPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isApplicationStateBlocked userId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pkgname "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4978
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_3d

    move-result v11

    if-eqz v11, :cond_30

    .line 4979
    const/4 v1, 0x0

    .line 5017
    :goto_2e
    monitor-exit p0

    return v1

    .line 4982
    :cond_30
    :try_start_30
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    .line 4983
    :try_start_33
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-nez v11, :cond_40

    .line 4984
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_2e

    .line 5018
    :catchall_3a
    move-exception v11

    monitor-exit v12
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v11
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 4977
    :catchall_3d
    move-exception v11

    monitor-exit p0

    throw v11

    .line 4986
    :cond_40
    :try_start_40
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 4987
    .local v10, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 4988
    .local v1, "blocked":Z
    if-eqz v10, :cond_db

    .line 4991
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4d
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 4993
    .local v8, "uid":J
    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    move/from16 v0, p5

    if-ne v0, v11, :cond_4d

    .line 4996
    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v11

    if-ne v11, p1, :cond_4d

    .line 4999
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

    .line 5000
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

    .line 5001
    .local v5, "packagesWhite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5002
    .local v6, "pkgB":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b7

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9b

    .line 5004
    :cond_b7
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_da

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5005
    .local v7, "pkgW":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_bb

    .line 5006
    :cond_d7
    const/4 v1, 0x0

    .line 5007
    goto/16 :goto_4d

    .line 5011
    .end local v7    # "pkgW":Ljava/lang/String;
    :cond_da
    const/4 v1, 0x1

    .line 5017
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packagesBlack":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "packagesWhite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkgB":Ljava/lang/String;
    .end local v8    # "uid":J
    :cond_db
    monitor-exit v12
    :try_end_dc
    .catchall {:try_start_40 .. :try_end_dc} :catchall_3a

    goto/16 :goto_2e
.end method

.method private isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "keyBlack"    # Ljava/lang/String;
    .param p2, "keyWhite"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 4969
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1424
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1425
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_10

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    .line 1429
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_f
    :goto_f
    return v1

    .line 1426
    :catch_10
    move-exception v2

    goto :goto_f
.end method

.method private isUserManagedByEnterpriseAdmin(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 6858
    const/4 v1, 0x0

    .line 6859
    .local v1, "adminsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 6861
    :try_start_7
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v4, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_2d

    move-result-object v1

    .line 6866
    :cond_d
    :goto_d
    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 6867
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 6868
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 6869
    const/4 v4, 0x1

    .line 6873
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_2c
    return v4

    .line 6862
    :catch_2d
    move-exception v2

    .line 6863
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "ApplicationPolicy"

    const-string v5, "Failed talking with enterprise policy service"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 6873
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_36
    const/4 v4, 0x0

    goto :goto_2c
.end method

.method private isWidgetAllowed(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 5143
    const-string v0, "PackageNameWidgetBlacklist"

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private loadApplicationBlacklistWhitelist()V
    .registers 24

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 413
    :try_start_7
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    sput-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v16

    .line 418
    .local v16, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v19, "packageName"

    aput-object v19, v6, v17

    const/16 v17, 0x1

    const-string v19, "controlState"

    aput-object v19, v6, v17

    .line 419
    .local v6, "columns":[Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v19, "signature"

    aput-object v19, v7, v17

    const/16 v17, 0x1

    const-string v19, "controlState"

    aput-object v19, v7, v17

    .line 422
    .local v7, "columnsSignTbl":[Ljava/lang/String;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 425
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_53b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 426
    .local v4, "adminUid":J
    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v14

    .line 427
    .local v14, "storedUid":I
    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    .line 429
    .local v8, "containerId":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v3, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v17, "PackageNameInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v17, "PackageNameInstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v17, "PermissionInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v17, "SignatureInstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v17, "SignatureInstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v17, "UninstallationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v17, "UninstallationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v17, "PackageNameStopBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v17, "PackageNameStopWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v17, "PackageNameWidgetWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v17, "PackageNameWidgetBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v17, "PackageNameNotificationWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v17, "PackageNameNotificationBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v17, "RevocationCheck"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v17, "OcspCheck"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v17, "PackageNameClearDataBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v17, "PackageNameClearDataWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v17, "PackageNameClearCacheBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v17, "PackageNameClearCacheWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v17, "PackageNameUpdateBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v17, "PackageNameUpdateWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v17, "PackageNameStartBlacklist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v17, "PackageNameStartWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v17, "PackageNameDisableClipboardBlackList"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v17, "PackageNameDisableClipboardWhitelist"

    new-instance v19, Ljava/util/TreeSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 470
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_430

    .line 471
    :cond_1d9
    :goto_1d9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_42d

    .line 472
    const-string v17, "packageName"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 473
    .local v13, "pkgName":Ljava/lang/String;
    const-string v17, "controlState"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 475
    .local v9, "controlState":I
    const/16 v17, 0x4

    and-int/lit8 v19, v9, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_214

    .line 476
    const-string v17, "PackageNameInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_214
    const/16 v17, 0x8

    and-int/lit8 v19, v9, 0x8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_22d

    .line 479
    const-string v17, "PackageNameInstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_22d
    const/16 v17, 0x1

    and-int/lit8 v19, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_246

    .line 482
    const-string v17, "UninstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_246
    const/16 v17, 0x400

    and-int/lit16 v0, v9, 0x400

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_261

    .line 485
    const-string v17, "UninstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_261
    const/16 v17, 0x10

    and-int/lit8 v19, v9, 0x10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_27a

    .line 490
    const-string v17, "PackageNameStopBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_27a
    const/16 v17, 0x20

    and-int/lit8 v19, v9, 0x20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_293

    .line 493
    const-string v17, "PackageNameStopWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_293
    const/16 v17, 0x40

    and-int/lit8 v19, v9, 0x40

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2ac

    .line 496
    const-string v17, "PackageNameWidgetBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_2ac
    const/16 v17, 0x80

    and-int/lit16 v0, v9, 0x80

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2c7

    .line 500
    const-string v17, "PackageNameWidgetWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_2c7
    const/16 v17, 0x100

    and-int/lit16 v0, v9, 0x100

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2e2

    .line 504
    const-string v17, "PackageNameNotificationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_2e2
    const/16 v17, 0x200

    and-int/lit16 v0, v9, 0x200

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2fd

    .line 508
    const-string v17, "PackageNameNotificationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_2fd
    const/16 v17, 0x800

    and-int/lit16 v0, v9, 0x800

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_318

    .line 515
    const-string v17, "RevocationCheck"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_318
    const/16 v17, 0x1000

    and-int/lit16 v0, v9, 0x1000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_333

    .line 519
    const-string v17, "OcspCheck"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_333
    const/16 v17, 0x2000

    and-int/lit16 v0, v9, 0x2000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_34e

    .line 525
    const-string v17, "PackageNameClearDataBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_34e
    const/16 v17, 0x4000

    and-int/lit16 v0, v9, 0x4000

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_369

    .line 528
    const-string v17, "PackageNameClearDataWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_369
    const v17, 0x8000

    const v19, 0x8000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_386

    .line 533
    const-string v17, "PackageNameClearCacheBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_386
    const/high16 v17, 0x10000

    const/high16 v19, 0x10000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3a1

    .line 536
    const-string v17, "PackageNameClearCacheWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_3a1
    const/high16 v17, 0x20000

    const/high16 v19, 0x20000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3bc

    .line 540
    const-string v17, "PackageNameUpdateBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_3bc
    const/high16 v17, 0x40000

    const/high16 v19, 0x40000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3d7

    .line 544
    const-string v17, "PackageNameUpdateWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_3d7
    const/high16 v17, 0x80000

    const/high16 v19, 0x80000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3f2

    .line 549
    const-string v17, "PackageNameStartBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_3f2
    const/high16 v17, 0x200000

    const/high16 v19, 0x200000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_40d

    .line 553
    const-string v17, "PackageNameDisableClipboardBlackList"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_40d
    const/high16 v17, 0x400000

    const/high16 v19, 0x400000

    and-int v19, v19, v9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d9

    .line 557
    const-string v17, "PackageNameDisableClipboardWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d9

    .line 608
    .end local v3    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "adminUid":J
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v7    # "columnsSignTbl":[Ljava/lang/String;
    .end local v8    # "containerId":I
    .end local v9    # "controlState":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "storedUid":I
    .end local v16    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_42a
    move-exception v17

    monitor-exit v18
    :try_end_42c
    .catchall {:try_start_7 .. :try_end_42c} :catchall_42a

    throw v17

    .line 561
    .restart local v3    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v4    # "adminUid":J
    .restart local v6    # "columns":[Ljava/lang/String;
    .restart local v7    # "columnsSignTbl":[Ljava/lang/String;
    .restart local v8    # "containerId":I
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v14    # "storedUid":I
    .restart local v16    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_42d
    :try_start_42d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION_PERMISSION"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "permission"

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v14, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 569
    if-eqz v10, :cond_47b

    .line 570
    :goto_452
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_478

    .line 571
    const-string v17, "PermissionInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    const-string v19, "permission"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_452

    .line 574
    :cond_478
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_47b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v19, "APPLICATION_SIGNATURE2"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 579
    if-eqz v10, :cond_4e6

    .line 580
    :cond_48d
    :goto_48d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_4e3

    .line 581
    const-string/jumbo v17, "signature"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 582
    .local v15, "str":Ljava/lang/String;
    const-string v17, "controlState"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 584
    .restart local v9    # "controlState":I
    const/16 v17, 0x1

    and-int/lit8 v19, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4c9

    .line 586
    const-string v17, "SignatureInstallationBlacklist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_4c9
    const/16 v17, 0x2

    and-int/lit8 v19, v9, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_48d

    .line 590
    const-string v17, "SignatureInstallationWhitelist"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_48d

    .line 593
    .end local v9    # "controlState":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_4e3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4e6
    .catchall {:try_start_42d .. :try_end_4e6} :catchall_42a

    .line 599
    :cond_4e6
    :try_start_4e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "APPLICATION_MISC"

    const-string v22, "appNotificationMode"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_511
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_4e6 .. :try_end_511} :catch_520
    .catchall {:try_start_4e6 .. :try_end_511} :catchall_42a

    .line 606
    :goto_511
    :try_start_511
    sget-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4c

    .line 601
    :catch_520
    move-exception v12

    .line 602
    .local v12, "ignore":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_511

    .line 608
    .end local v3    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "adminUid":J
    .end local v8    # "containerId":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "ignore":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    .end local v14    # "storedUid":I
    :cond_53b
    monitor-exit v18
    :try_end_53c
    .catchall {:try_start_511 .. :try_end_53c} :catchall_42a

    .line 611
    return-void
.end method

.method private manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 31
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "homePkgName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 5503
    const/16 v17, 0x0

    .line 5505
    .local v17, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 5506
    .local v13, "pMgr":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v23

    .line 5507
    .local v23, "userId":I
    new-instance v14, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5508
    .local v14, "pickAppShortcut":Landroid/content/Intent;
    const-string v24, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 5510
    .local v21, "token1":J
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v13, v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    .line 5512
    .local v16, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5513
    if-eqz v16, :cond_59

    .line 5514
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_37
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_59

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 5515
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_37

    .line 5516
    const/16 v17, 0x1

    .line 5523
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    :cond_59
    if-eqz v17, :cond_7a

    .line 5524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 5526
    .local v19, "token":J
    :try_start_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v24, v0

    const/16 v25, 0x80

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_72
    .catchall {:try_start_5f .. :try_end_72} :catchall_125

    move-result-object v4

    .line 5528
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_7b

    .line 5529
    const/16 v17, 0x0

    .line 5559
    .end local v17    # "ret":Z
    :goto_77
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5562
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "token":J
    :cond_7a
    return v17

    .line 5531
    .restart local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "ret":Z
    .restart local v19    # "token":J
    :cond_7b
    :try_start_7b
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 5532
    .local v18, "shortcutIntent":Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5533
    .local v11, "installAppShorcut":Landroid/content/Intent;
    const-string v24, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5534
    const-string v24, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 5536
    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 5537
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_b1

    .line 5538
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 5539
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const-string v24, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5541
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_b1
    const-string v24, "duplicate"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5542
    if-eqz p3, :cond_10d

    .line 5543
    new-instance v8, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5544
    .local v8, "homeIntent":Landroid/content/Intent;
    const-string v24, "android.intent.category.HOME"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5545
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v13, v8, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 5546
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 5547
    .local v7, "flag":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_e1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_107

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 5548
    .local v15, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e1

    .line 5549
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5550
    const/4 v7, 0x1

    .line 5554
    .end local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_107
    if-nez v7, :cond_10d

    .line 5555
    const/16 v17, 0x0

    goto/16 :goto_77

    .line 5557
    .end local v7    # "flag":Z
    .end local v8    # "homeIntent":Landroid/content/Intent;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_123
    .catchall {:try_start_7b .. :try_end_123} :catchall_125

    goto/16 :goto_77

    .line 5559
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "installAppShorcut":Landroid/content/Intent;
    .end local v18    # "shortcutIntent":Landroid/content/Intent;
    :catchall_125
    move-exception v24

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
.end method

.method private putWidgetProviderDisabledList(Ljava/util/Set;I)V
    .registers 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5356
    .local p1, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5357
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

    .line 5358
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

    .line 5360
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_30
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "disabledWidgetComponents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5362
    return-void
.end method

.method private readAppMemoryInfo(ZI)Ljava/util/List;
    .registers 29
    .param p1, "bShowAllProcess"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4267
    const-string v23, "ApplicationPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 4271
    .local v21, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "activity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 4273
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/4 v14, 0x0

    .line 4275
    .local v14, "lPidArray":[I
    if-nez p1, :cond_107

    .line 4276
    const-string v23, "ApplicationPolicy"

    const-string v24, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4277
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 4279
    .local v20, "lRunningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v14, v0, [I

    .line 4280
    const/4 v8, 0x0

    .line 4281
    .local v8, "k":I
    const/16 v22, 0x0

    .line 4282
    .local v22, "uid":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "k":I
    .local v9, "k":I
    :cond_4d
    :goto_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_79

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4283
    .local v19, "lRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->getUidForPid(I)I

    move-result v22

    .line 4284
    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_4d

    .line 4287
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "k":I
    .restart local v8    # "k":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    aput v23, v14, v9

    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    goto :goto_4d

    .end local v19    # "lRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_79
    move v8, v9

    .line 4298
    .end local v9    # "k":I
    .end local v20    # "lRunningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v22    # "uid":I
    .restart local v8    # "k":I
    :goto_7a
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    .line 4299
    .local v12, "lMemInfoArray":[Landroid/os/Debug$MemoryInfo;
    if-eqz v12, :cond_aa

    if-eqz v14, :cond_aa

    .line 4300
    const-string v23, "ApplicationPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "memory length : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v12

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pids length"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v14

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    :cond_aa
    if-eqz v12, :cond_137

    .line 4304
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ad
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_137

    .line 4305
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/proc/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget v24, v14, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/cmdline"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4306
    .local v16, "lPkgName":Ljava/lang/String;
    if-eqz v16, :cond_104

    .line 4307
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4308
    .local v10, "lCmdLine":Ljava/lang/String;
    aget-object v11, v12, v6

    .line 4309
    .local v11, "lMemInfo":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 4310
    .local v17, "lRamSize":J
    new-instance v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4304
    .end local v10    # "lCmdLine":Ljava/lang/String;
    .end local v11    # "lMemInfo":Landroid/os/Debug$MemoryInfo;
    .end local v17    # "lRamSize":J
    :cond_104
    add-int/lit8 v6, v6, 0x1

    goto :goto_ad

    .line 4290
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "k":I
    .end local v12    # "lMemInfoArray":[Landroid/os/Debug$MemoryInfo;
    .end local v16    # "lPkgName":Ljava/lang/String;
    :cond_107
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPidList(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 4291
    .local v15, "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v14, v0, [I

    .line 4292
    const/4 v8, 0x0

    .line 4293
    .restart local v8    # "k":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    :goto_11d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 4294
    .local v13, "lPid":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "k":I
    .restart local v8    # "k":I
    aput v13, v14, v9
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_131} :catch_133

    move v9, v8

    .end local v8    # "k":I
    .restart local v9    # "k":I
    goto :goto_11d

    .line 4314
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "k":I
    .end local v13    # "lPid":I
    .end local v14    # "lPidArray":[I
    .end local v15    # "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_133
    move-exception v5

    .line 4315
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4318
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_137
    const-string v23, "ApplicationPolicy"

    const-string v24, "readAppMemoryInfo end"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4319
    return-object v21

    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "k":I
    .restart local v14    # "lPidArray":[I
    .restart local v15    # "lPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_13f
    move v8, v9

    .end local v9    # "k":I
    .restart local v8    # "k":I
    goto/16 :goto_7a
.end method

.method private readAppSizeInfo(I)Ljava/util/List;
    .registers 18
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4365
    const-string v12, "ApplicationPolicy"

    const-string v13, "readAppSizeInfo start"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4368
    .local v10, "token":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v4

    .line 4369
    .local v4, "lPkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4372
    .local v7, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    :try_start_1b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 4373
    .local v3, "lPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4374
    .local v5, "lPkgName":Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 4375
    new-instance v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 4376
    .local v6, "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, p1

    invoke-virtual {v12, v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 4377
    monitor-enter v6
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_40} :catch_6d
    .catchall {:try_start_1b .. :try_end_40} :catchall_7f

    .line 4378
    :goto_40
    :try_start_40
    iget-boolean v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_7c

    if-nez v12, :cond_4a

    .line 4380
    :try_start_44
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_7c

    goto :goto_40

    .line 4381
    :catch_48
    move-exception v12

    goto :goto_40

    .line 4384
    :cond_4a
    :try_start_4a
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_7c

    .line 4385
    :try_start_4b
    iget-boolean v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v12, :cond_1f

    .line 4386
    iget-object v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v12, :cond_1f

    .line 4387
    iget-object v12, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v12, v12, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v14, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v14, v14, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v12, v14

    iget-object v14, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v14, v14, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v8, v12, v14

    .line 4391
    .local v8, "lTotalSize":J
    new-instance v12, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v8, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6c} :catch_6d
    .catchall {:try_start_4b .. :try_end_6c} :catchall_7f

    goto :goto_1f

    .line 4396
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "lPkgName":Ljava/lang/String;
    .end local v6    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    .end local v8    # "lTotalSize":J
    :catch_6d
    move-exception v1

    .line 4397
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_7f

    .line 4399
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_71
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4402
    const-string v12, "ApplicationPolicy"

    const-string v13, "readAppSizeInfo end"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4403
    return-object v7

    .line 4384
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "lPkgName":Ljava/lang/String;
    .restart local v6    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    :catchall_7c
    move-exception v12

    :try_start_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v12
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7f} :catch_6d
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    .line 4399
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "lPkgName":Ljava/lang/String;
    .end local v6    # "lPkgSizeObserver":Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
    :catchall_7f
    move-exception v12

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "aFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4519
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_1e

    .line 4526
    .local v2, "lFstream":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 4528
    .local v1, "lBufReader":Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_3b
    .catchall {:try_start_d .. :try_end_10} :catchall_68

    move-result-object v3

    .line 4535
    if-eqz v2, :cond_17

    .line 4536
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_7b

    .line 4537
    const/4 v2, 0x0

    .line 4539
    :cond_17
    if-eqz v1, :cond_1d

    .line 4540
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_7d

    .line 4541
    :goto_1c
    const/4 v1, 0x0

    .line 4532
    .end local v1    # "lBufReader":Ljava/io/BufferedReader;
    .end local v2    # "lFstream":Ljava/io/FileReader;
    :cond_1d
    :goto_1d
    return-object v3

    .line 4520
    :catch_1e
    move-exception v0

    .line 4521
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4522
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

    .line 4529
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v2    # "lFstream":Ljava/io/FileReader;
    :catch_3b
    move-exception v0

    .line 4530
    .local v0, "e":Ljava/io/IOException;
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4531
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

    .line 4535
    if-eqz v2, :cond_5d

    .line 4536
    :try_start_59
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 4537
    const/4 v2, 0x0

    .line 4539
    :cond_5d
    if-eqz v1, :cond_1d

    .line 4540
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_1c

    .line 4543
    :catch_63
    move-exception v0

    .line 4544
    :goto_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 4534
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_68
    move-exception v3

    .line 4535
    if-eqz v2, :cond_6f

    .line 4536
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 4537
    const/4 v2, 0x0

    .line 4539
    :cond_6f
    if-eqz v1, :cond_75

    .line 4540
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_76

    .line 4541
    const/4 v1, 0x0

    .line 4534
    :cond_75
    :goto_75
    throw v3

    .line 4543
    :catch_76
    move-exception v0

    .line 4544
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    .line 4543
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
    .line 5874
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5876
    .local v0, "apps":Ljava/lang/String;
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4c

    .line 5877
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5878
    .local v5, "list":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_19
    if-ge v3, v4, :cond_43

    aget-object v6, v1, v3

    .line 5879
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_40

    const/4 v7, 0x0

    invoke-direct {p0, v7, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_40

    new-instance v7, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 5882
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 5878
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 5886
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_43
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 5893
    .end local v0    # "apps":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "list":[Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void

    .line 5890
    :catch_4d
    move-exception v2

    .line 5891
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ApplicationPolicy"

    const-string v8, "error in reconcileApplicationsState"

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method private reconcileComponentsState()V
    .registers 12

    .prologue
    .line 5897
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "componentsToReconcile"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5899
    .local v0, "apps":Ljava/lang/String;
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_41

    .line 5900
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5901
    .local v6, "list":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_19
    if-ge v4, v5, :cond_38

    aget-object v7, v1, v4

    .line 5902
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 5903
    .local v2, "compName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_35

    const/4 v8, 0x0

    invoke-direct {p0, v8, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationComponentStateEnabled(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 5905
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5901
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 5909
    .end local v2    # "compName":Landroid/content/ComponentName;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_38
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "componentsToReconcile"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 5916
    .end local v0    # "apps":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":[Ljava/lang/String;
    :cond_41
    :goto_41
    return-void

    .line 5913
    :catch_42
    move-exception v3

    .line 5914
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "ApplicationPolicy"

    const-string v9, "error in reconcileComponentsState"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method private refreshWidgetStatus(I)V
    .registers 26
    .param p1, "userId"    # I

    .prologue
    .line 5278
    const-string v20, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "refresh widget status for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 5281
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v6

    .line 5282
    .local v6, "ctx":Landroid/content/Context;
    if-nez v6, :cond_48

    .line 5283
    const-string v20, "ApplicationPolicy"

    const-string v22, "Could not create context for current user!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5284
    monitor-exit v21

    .line 5352
    :goto_47
    return-void

    .line 5288
    :cond_48
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5291
    .local v19, "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v13, 0x0

    .line 5292
    .local v13, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_72

    move-result-wide v17

    .line 5294
    .local v17, "token1":J
    :try_start_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders(I)Ljava/util/List;
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5f} :catch_75
    .catchall {:try_start_52 .. :try_end_5f} :catchall_86

    move-result-object v13

    .line 5299
    :try_start_60
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5302
    :goto_63
    if-nez v13, :cond_8b

    .line 5303
    const-string v20, "ApplicationPolicy"

    const-string v22, "providerInfoList == null"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5304
    monitor-exit v21

    goto :goto_47

    .line 5351
    .end local v6    # "ctx":Landroid/content/Context;
    .end local v13    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v17    # "token1":J
    .end local v19    # "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_72
    move-exception v20

    monitor-exit v21
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_72

    throw v20

    .line 5295
    .restart local v6    # "ctx":Landroid/content/Context;
    .restart local v13    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v17    # "token1":J
    .restart local v19    # "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_75
    move-exception v8

    .line 5296
    .local v8, "ex":Landroid/os/RemoteException;
    const/4 v13, 0x0

    .line 5297
    :try_start_77
    const-string v20, "ApplicationPolicy"

    const-string v22, "Failed to get widget providers"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_86

    .line 5299
    :try_start_82
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_63

    .end local v8    # "ex":Landroid/os/RemoteException;
    :catchall_86
    move-exception v20

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 5307
    :cond_8b
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_8f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 5308
    .local v4, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 5311
    .end local v4    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_a3
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5314
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5316
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v7

    .line 5317
    .local v7, "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 5318
    .local v14, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_ce
    :goto_ce
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_106

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 5319
    .local v5, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_ce

    .line 5320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5321
    .local v15, "token":J
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5323
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5324
    invoke-interface {v14, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    .line 5327
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v15    # "token":J
    :cond_106
    invoke-interface {v7, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 5329
    const/4 v9, 0x0

    .line 5331
    .local v9, "hasDisabled":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10e
    :goto_10e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_147

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 5332
    .local v12, "p":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v20

    if-nez v20, :cond_10e

    .line 5333
    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5335
    .restart local v15    # "token":J
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5337
    const/4 v9, 0x1

    .line 5338
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10e

    .line 5342
    .end local v12    # "p":Landroid/content/ComponentName;
    .end local v15    # "token":J
    :cond_147
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;I)V

    .line 5345
    if-eqz v9, :cond_176

    .line 5346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5347
    .restart local v15    # "token":J
    new-instance v11, Landroid/content/Intent;

    const-string v20, "edm.intent.action.FORCE_LAUNCHER_REFRESH"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5348
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5349
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5351
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "token":J
    :cond_176
    monitor-exit v21
    :try_end_177
    .catchall {:try_start_82 .. :try_end_177} :catchall_72

    goto/16 :goto_47
.end method

.method private refreshWidgetStatus(Ljava/util/List;Landroid/content/Context;)V
    .registers 14
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5225
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5243
    :goto_6
    return-void

    .line 5228
    :cond_7
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5229
    :try_start_a
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v0, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 5230
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 5231
    .local v6, "userId":I
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_56

    .line 5232
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v1

    .line 5233
    .local v1, "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5234
    .local v3, "p":Landroid/content/ComponentName;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5236
    .local v4, "token":J
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_30

    .line 5242
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v1    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Landroid/content/ComponentName;
    .end local v4    # "token":J
    .end local v6    # "userId":I
    :catchall_50
    move-exception v7

    monitor-exit v8
    :try_end_52
    .catchall {:try_start_a .. :try_end_52} :catchall_50

    throw v7

    .line 5240
    .restart local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v1    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "userId":I
    :cond_53
    :try_start_53
    invoke-direct {p0, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;I)V

    .line 5242
    .end local v1    # "disabledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_56
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_50

    goto :goto_6
.end method

.method private registerBootCompletedListener()V
    .registers 4

    .prologue
    .line 5148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5149
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5151
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 5167
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5168
    return-void
.end method

.method private registerPackageChangeReceiver()V
    .registers 8

    .prologue
    .line 1321
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3d

    .line 1322
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1324
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1325
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1326
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1327
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1329
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1385
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1386
    const-string v0, "ApplicationPolicy"

    const-string v1, "registerPackageChangeReceiver() : Done"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 1391
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3d
    :goto_3d
    return-void

    .line 1388
    :catch_3e
    move-exception v6

    .line 1389
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method private declared-synchronized removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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

    .line 4857
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4858
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4859
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_39

    .line 4861
    .local v2, "callingUid":I
    if-nez p4, :cond_e

    .line 4883
    :cond_c
    monitor-exit p0

    return v8

    .line 4865
    :cond_e
    const/4 v8, 0x1

    .line 4867
    .local v8, "result":Z
    if-eqz p4, :cond_3c

    .line 4868
    :try_start_11
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 4869
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4870
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4871
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_35

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 4872
    :cond_35
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_39

    goto :goto_15

    .line 4857
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v3    # "containerId":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "result":Z
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4877
    .restart local v2    # "callingUid":I
    .restart local v3    # "containerId":I
    .restart local v8    # "result":Z
    :cond_3c
    if-eqz p4, :cond_c

    .line 4878
    :try_start_3e
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4879
    .restart local v1    # "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_39

    move-result v0

    and-int/2addr v8, v0

    goto :goto_42
.end method

.method private declared-synchronized setApplicationComponentNameControlState(ILandroid/content/ComponentName;IIZ)Z
    .registers 14
    .param p1, "adminUid"    # I
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "containerId"    # I
    .param p4, "controlStateMask"    # I
    .param p5, "enableMask"    # Z

    .prologue
    .line 875
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_COMPONENT"

    const-string v4, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "componentControlState"

    move v2, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 879
    .local v7, "controlState":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_17

    .line 880
    const/4 v7, 0x0

    .line 882
    :cond_17
    if-eqz p5, :cond_3a

    .line 883
    or-int/2addr v7, p4

    .line 887
    :goto_1a
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 888
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "componentControlState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_COMPONENT"

    const-string v4, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3e

    move-result v0

    monitor-exit p0

    return v0

    .line 885
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_3a
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v7, v0

    goto :goto_1a

    .line 875
    .end local v7    # "controlState":I
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setApplicationComponentNameControlState(ILandroid/content/ComponentName;IZ)Z
    .registers 11
    .param p1, "adminUid"    # I
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "controlStateMask"    # I
    .param p4, "enableMask"    # Z

    .prologue
    .line 865
    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationComponentNameControlState(ILandroid/content/ComponentName;IIZ)Z
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

.method private setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "add"    # Z

    .prologue
    .line 902
    int-to-long v0, p2

    .line 903
    .local v0, "callingUid":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 905
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 906
    if-eqz p3, :cond_3d

    .line 907
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

    .line 908
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 909
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "permission"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    invoke-virtual {v3, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    monitor-exit v4

    .line 915
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_3c
    return v3

    .line 913
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

    .line 915
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    const-string v6, "permission"

    invoke-virtual {v3, v5, p2, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    monitor-exit v4

    goto :goto_3c

    .line 918
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
    .line 676
    monitor-enter p0

    int-to-long v7, p2

    .line 677
    .local v7, "callingUid":J
    if-lez p3, :cond_c

    .line 678
    :try_start_4
    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v7

    .line 679
    invoke-static {p3, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 682
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

    .line 687
    .local v9, "controlState":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1f

    .line 688
    const/4 v9, 0x0

    .line 690
    :cond_1f
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 692
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_66

    .line 694
    sparse-switch p4, :sswitch_data_496

    .line 840
    :goto_28
    :sswitch_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_63

    .line 842
    if-eqz p5, :cond_490

    .line 843
    or-int/2addr v9, p4

    .line 855
    :goto_2c
    :try_start_2c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 856
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
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

    .line 697
    .end local v6    # "cv":Landroid/content/ContentValues;
    :sswitch_49
    if-eqz p5, :cond_69

    .line 698
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

    .line 840
    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_63

    :try_start_65
    throw v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 676
    .end local v9    # "controlState":I
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    .line 700
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

    .line 704
    :sswitch_81
    if-eqz p5, :cond_9b

    .line 705
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

    .line 707
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

    .line 711
    :sswitch_b4
    if-eqz p5, :cond_cf

    .line 712
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

    .line 714
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

    .line 718
    :sswitch_e8
    if-eqz p5, :cond_103

    .line 719
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

    .line 721
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

    .line 725
    :sswitch_11c
    if-eqz p5, :cond_137

    .line 726
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

    .line 728
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

    .line 731
    :sswitch_150
    if-eqz p5, :cond_16b

    .line 732
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

    .line 734
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

    .line 737
    :sswitch_184
    if-eqz p5, :cond_19f

    .line 738
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

    .line 740
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

    .line 743
    :sswitch_1b8
    if-eqz p5, :cond_1d3

    .line 744
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

    .line 746
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

    .line 749
    :sswitch_1ec
    if-eqz p5, :cond_207

    .line 750
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

    .line 752
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

    .line 756
    :sswitch_220
    if-eqz p5, :cond_23b

    .line 757
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

    .line 759
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

    .line 765
    :sswitch_254
    if-eqz p5, :cond_26f

    .line 766
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

    .line 768
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

    .line 771
    :sswitch_288
    if-eqz p5, :cond_2a3

    .line 772
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

    .line 774
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

    .line 779
    :sswitch_2bc
    if-eqz p5, :cond_2d7

    .line 780
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

    .line 782
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

    .line 785
    :sswitch_2f0
    if-eqz p5, :cond_30b

    .line 786
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

    .line 788
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

    .line 791
    :sswitch_324
    if-eqz p5, :cond_33f

    .line 792
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

    .line 794
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

    .line 797
    :sswitch_358
    if-eqz p5, :cond_373

    .line 798
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

    .line 800
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

    goto/16 :goto_28

    .line 804
    :sswitch_38c
    if-eqz p5, :cond_3a7

    .line 805
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 807
    :cond_3a7
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 810
    :sswitch_3c0
    if-eqz p5, :cond_3db

    .line 811
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 813
    :cond_3db
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameUpdateWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 817
    :sswitch_3f4
    if-eqz p5, :cond_40f

    .line 818
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStartBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 820
    :cond_40f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStartBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 827
    :sswitch_428
    if-eqz p5, :cond_443

    .line 828
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardBlackList"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 830
    :cond_443
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardBlackList"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 833
    :sswitch_45c
    if-eqz p5, :cond_477

    .line 834
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 836
    :cond_477
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameDisableClipboardWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_48e
    .catchall {:try_start_69 .. :try_end_48e} :catchall_63

    goto/16 :goto_28

    .line 845
    :cond_490
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v9, v0

    goto/16 :goto_2c

    .line 694
    nop

    :sswitch_data_496
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
        0x20000 -> :sswitch_38c
        0x40000 -> :sswitch_3c0
        0x80000 -> :sswitch_3f4
        0x100000 -> :sswitch_28
        0x200000 -> :sswitch_428
        0x400000 -> :sswitch_45c
    .end sparse-switch
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "controlStateMask"    # I
    .param p4, "enableMask"    # Z

    .prologue
    .line 666
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
    .line 926
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v3, "signature"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 930
    .local v8, "controlState":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_13

    .line 931
    const/4 v8, 0x0

    .line 934
    :cond_13
    if-nez p4, :cond_1b

    and-int v0, v8, p3

    if-eq v0, p3, :cond_1b

    .line 936
    const/4 v9, 0x1

    .line 977
    :goto_1a
    return v9

    .line 939
    :cond_1b
    int-to-long v6, p2

    .line 940
    .local v6, "callingUid":J
    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    .line 942
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    packed-switch p3, :pswitch_data_c2

    .line 959
    :goto_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_62

    .line 961
    if-eqz p4, :cond_b0

    .line 962
    or-int/2addr v8, p3

    .line 966
    :goto_29
    const/4 v9, 0x1

    .line 967
    .local v9, "result":Z
    if-lez v8, :cond_b5

    .line 968
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 969
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v3, "signature"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    .line 972
    goto :goto_1a

    .line 946
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v9    # "result":Z
    :pswitch_48
    if-eqz p4, :cond_65

    .line 947
    :try_start_4a
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

    goto :goto_25

    .line 959
    :catchall_62
    move-exception v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_62

    throw v0

    .line 949
    :cond_65
    :try_start_65
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

    goto :goto_25

    .line 953
    :pswitch_7d
    if-eqz p4, :cond_97

    .line 954
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

    goto :goto_25

    .line 956
    :cond_97
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
    :try_end_ae
    .catchall {:try_start_65 .. :try_end_ae} :catchall_62

    goto/16 :goto_25

    .line 964
    :cond_b0
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v8, v0

    goto/16 :goto_29

    .line 973
    .restart local v9    # "result":Z
    :cond_b5
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string/jumbo v2, "signature"

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_1a

    .line 944
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_48
        :pswitch_7d
    .end packed-switch
.end method

.method private setInstallSourceMDM(ILjava/lang/String;Z)V
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "stateValue"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2135
    if-ne p3, v6, :cond_1d

    .line 2136
    .local v6, "state":I
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2137
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2138
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2142
    return-void

    .line 2135
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

    .line 2125
    if-ne p3, v6, :cond_1d

    .line 2126
    .local v6, "state":I
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2127
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2132
    return-void

    .line 2125
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
    .line 1394
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1396
    .local v6, "count":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1397
    .local v5, "cv":Landroid/content/ContentValues;
    if-gtz v6, :cond_28

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1398
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1400
    return-void

    .line 1397
    :cond_28
    add-int/lit8 v0, v6, 0x1

    goto :goto_15
.end method

.method private updateSystemAppDisableState(Ljava/lang/String;)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1403
    const/4 v8, 0x0

    .line 1404
    .local v8, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 1405
    .local v9, "userManager":Landroid/os/UserManager;
    if-eqz v9, :cond_15

    .line 1406
    invoke-virtual {v9, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .end local v8    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 1409
    .restart local v8    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_15
    if-eqz v8, :cond_3e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 1410
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1411
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1412
    .local v4, "currentUserHandle":I
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1413
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z

    goto :goto_21

    .line 1419
    .end local v4    # "currentUserHandle":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3e
    return-void
.end method


# virtual methods
.method public addAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5388
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5411
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppPackageNameToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3958
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppPackageNameToBlackList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3960
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3961
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 3962
    const/4 v0, 0x0

    .line 3965
    :goto_27
    return v0

    :cond_28
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_27
.end method

.method public addAppPackageNameToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4022
    const-string v0, "ApplicationPolicy"

    const-string v1, "addAppPackageNameToWhiteList"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4024
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4026
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4027
    const/4 v0, 0x0

    .line 4030
    :goto_16
    return v0

    :cond_17
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_16
.end method

.method public addAppPermissionToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPermission"    # Ljava/lang/String;

    .prologue
    .line 3641
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3642
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public addAppSignatureToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 3732
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3733
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, v0, v1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public addAppSignatureToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 3826
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3827
    if-eqz p2, :cond_f

    .line 3828
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    .line 3831
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public addHomeShortcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "homePkgName"    # Ljava/lang/String;

    .prologue
    .line 5493
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5494
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addPackageToInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6094
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6095
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6096
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6097
    .local v2, "adminUid":I
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageToInstallList :  pkgName: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " containerId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6098
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    .line 6099
    const-string v0, "ApplicationPolicy"

    const-string v1, "addPackageToInstallList() Package name is invalid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6100
    const/4 v0, 0x0

    .line 6140
    :goto_38
    return v0

    .line 6103
    :cond_39
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6105
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v7

    .line 6106
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 6107
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 6108
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 6111
    .local v11, "token":J
    :try_start_58
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    .line 6114
    .local v10, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v10, p2, v9}, Landroid/os/PersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_65} :catch_6a
    .catchall {:try_start_58 .. :try_end_65} :catchall_88

    .line 6115
    const/4 v0, 0x1

    .line 6121
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    .line 6117
    .end local v10    # "pm":Landroid/os/PersonaManager;
    :catch_6a
    move-exception v8

    .line 6118
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageToInstallList() - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_88

    .line 6121
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6124
    const/4 v0, 0x0

    goto :goto_38

    .line 6121
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_88
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6127
    .end local v9    # "pid":I
    .end local v11    # "token":J
    :cond_8d
    invoke-static {v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6129
    if-eqz v5, :cond_bb

    .line 6130
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 6131
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "containerID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6132
    const-string v0, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6133
    const-string v0, "packageName"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6135
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    goto/16 :goto_38

    .line 6139
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_bb
    const-string v0, "ApplicationPolicy"

    const-string v1, "Package name is null. Failed to add the package to White list"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6140
    const/4 v0, 0x0

    goto/16 :goto_38
.end method

.method public addPackagesToClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6369
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6389
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6312
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6332
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6623
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6637
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6903
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6904
    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 6906
    .local v0, "ret":Z
    return v0
.end method

.method public addPackagesToDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6881
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6882
    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 6884
    .local v0, "ret":Z
    return v0
.end method

.method public addPackagesToForceStopBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5025
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5045
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToPreventStartBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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

    .prologue
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 6492
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6493
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6494
    .local v2, "callingUid":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6496
    .local v6, "addedPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_f

    .line 6524
    :cond_e
    return-object v6

    .line 6500
    :cond_f
    invoke-direct {p0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->arrangePackageList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

    .line 6503
    const-string v0, "PackageNameStartBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 6504
    .local v7, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6505
    .local v1, "pkg":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6506
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 6511
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_33
    const/4 v9, 0x0

    .line 6512
    .local v9, "result":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_38
    :goto_38
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6513
    .restart local v1    # "pkg":Ljava/lang/String;
    const/4 v3, 0x0

    const/high16 v4, 0x80000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v9

    .line 6518
    if-eqz v9, :cond_38

    .line 6519
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6520
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    goto :goto_38
.end method

.method public addPackagesToWidgetBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5111
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5113
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5114
    return v0
.end method

.method public addPackagesToWidgetWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5084
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5086
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5087
    return v0
.end method

.method public backupApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5621
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5622
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 5623
    .local v19, "userId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 5624
    .local v20, "validPkgName":Ljava/lang/String;
    if-eqz v20, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_26

    if-eqz p3, :cond_26

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    if-nez v3, :cond_28

    .line 5626
    :cond_26
    const/4 v3, -0x2

    .line 5676
    :goto_27
    return v3

    .line 5627
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-nez v3, :cond_46

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-eqz v3, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    if-eqz v3, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 5629
    :cond_46
    const/4 v3, -0x3

    goto :goto_27

    .line 5632
    :cond_48
    :try_start_48
    new-instance v16, Ljava/lang/SecurityManager;

    invoke-direct/range {v16 .. v16}, Ljava/lang/SecurityManager;-><init>()V

    .line 5633
    .local v16, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_56} :catch_9e

    .line 5638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 5639
    :try_start_5d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_9b

    move-result-wide v17

    .line 5641
    .local v17, "token":J
    :try_start_61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v3, :cond_a8

    .line 5642
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 5643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v3, :cond_a8

    .line 5644
    const-string v3, "ApplicationPolicy"

    const-string v4, "failed to get backup manager service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_82} :catch_12e
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_82} :catch_150
    .catchall {:try_start_61 .. :try_end_82} :catchall_172

    .line 5645
    const/4 v3, -0x2

    .line 5670
    const/4 v4, 0x0

    :try_start_84
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5672
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5673
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5674
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5645
    monitor-exit v21

    goto :goto_27

    .line 5677
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v17    # "token":J
    :catchall_9b
    move-exception v3

    monitor-exit v21
    :try_end_9d
    .catchall {:try_start_84 .. :try_end_9d} :catchall_9b

    throw v3

    .line 5634
    .end local v16    # "sm":Ljava/lang/SecurityManager;
    :catch_9e
    move-exception v12

    .line 5635
    .local v12, "ex":Ljava/lang/SecurityException;
    const-string v3, "ApplicationPolicy"

    const-string v4, "can\'t write to file descriptor"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5636
    const/4 v3, -0x2

    goto :goto_27

    .line 5649
    .end local v12    # "ex":Ljava/lang/SecurityException;
    .restart local v16    # "sm":Ljava/lang/SecurityManager;
    .restart local v17    # "token":J
    :cond_a8
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v3, v4, v0, v1}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;I)Z
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_b4} :catch_12e
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b4} :catch_150
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_172

    move-result v3

    if-nez v3, :cond_d1

    .line 5650
    const/4 v3, -0x3

    .line 5670
    const/4 v4, 0x0

    :try_start_b9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5672
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5673
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5674
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5650
    monitor-exit v21
    :try_end_cf
    .catchall {:try_start_b9 .. :try_end_cf} :catchall_9b

    goto/16 :goto_27

    .line 5652
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_d1
    const/4 v3, 0x1

    :try_start_d2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5653
    const/4 v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    .line 5654
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 5655
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5656
    .local v15, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [Ljava/lang/String;

    .line 5657
    .local v14, "packArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object/from16 v4, p3

    invoke-interface/range {v3 .. v10}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V

    .line 5661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_111
    .catch Ljava/lang/InterruptedException; {:try_start_d2 .. :try_end_111} :catch_12e
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_111} :catch_150
    .catchall {:try_start_d2 .. :try_end_111} :catchall_172

    .line 5670
    const/4 v3, 0x0

    :try_start_112
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5672
    new-instance v13, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5673
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5674
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5676
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    monitor-exit v21
    :try_end_12c
    .catchall {:try_start_112 .. :try_end_12c} :catchall_9b

    goto/16 :goto_27

    .line 5662
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "packArray":[Ljava/lang/String;
    .end local v15    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_12e
    move-exception v11

    .line 5663
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_12f
    const-string v3, "ApplicationPolicy"

    const-string v4, "backupApplicationData interrupted"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catchall {:try_start_12f .. :try_end_136} :catchall_172

    .line 5664
    const/4 v3, -0x2

    .line 5670
    const/4 v4, 0x0

    :try_start_138
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5672
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5673
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5674
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5664
    monitor-exit v21
    :try_end_14e
    .catchall {:try_start_138 .. :try_end_14e} :catchall_9b

    goto/16 :goto_27

    .line 5665
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "intent":Landroid/content/Intent;
    :catch_150
    move-exception v12

    .line 5666
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_151
    const-string v3, "ApplicationPolicy"

    const-string v4, "Failed to get backup manager service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_158
    .catchall {:try_start_151 .. :try_end_158} :catchall_172

    .line 5667
    const/4 v3, -0x2

    .line 5670
    const/4 v4, 0x0

    :try_start_15a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5672
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5673
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5674
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5667
    monitor-exit v21

    goto/16 :goto_27

    .line 5670
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "intent":Landroid/content/Intent;
    :catchall_172
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    .line 5672
    new-instance v13, Landroid/content/Intent;

    const-string v4, "edm.intent.action.backup.service.available"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5673
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5674
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5670
    throw v3
    :try_end_18a
    .catchall {:try_start_15a .. :try_end_18a} :catchall_9b
.end method

.method public changeApplicationIcon(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aImageData"    # [B

    .prologue
    .line 3534
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3535
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3536
    .local v0, "userId":I
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationIconForUser(Ljava/lang/String;[BI)Z

    move-result v1

    return v1
.end method

.method public changeApplicationName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 6745
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6746
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->changeApplicationNameForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method checkKNOXSystemStatus()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2415
    :try_start_2
    const-string v4, "container_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    .line 2419
    .local v0, "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    if-nez v0, :cond_16

    .line 2420
    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX Service is NULL"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    .end local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :goto_15
    return v2

    .line 2423
    .restart local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_16
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMountStatus(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2424
    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX system not mount"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_15

    .line 2427
    .end local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :catch_25
    move-exception v1

    .line 2428
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX : get status exception"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_2e
    move v2, v3

    .line 2431
    goto :goto_15
.end method

.method public clearDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6651
    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6656
    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6925
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6926
    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    .line 6928
    .local v0, "ret":Z
    return v0
.end method

.method public clearDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6932
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6933
    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    .line 6935
    .local v0, "ret":Z
    return v0
.end method

.method public clearPreventStartBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6546
    const-string v0, "PackageNameStartBlacklist"

    const/high16 v1, 0x80000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public deleteHomeShortcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "homePkgName"    # Ljava/lang/String;

    .prologue
    .line 5498
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5499
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2722
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    .line 2723
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2725
    .local v0, "callingUid":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2727
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v3

    if-nez v3, :cond_14

    .line 2790
    :goto_13
    return v2

    .line 2730
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2731
    invoke-virtual {p0, v1, p2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2733
    :cond_1d
    const/4 v3, 0x4

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2735
    const/16 v3, 0x8

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2737
    invoke-direct {p0, p2, v0, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2739
    const/16 v3, 0x400

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2742
    const/16 v3, 0x10

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2744
    const/16 v3, 0x20

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2746
    const/16 v3, 0x40

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2748
    const/16 v3, 0x80

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2750
    const/16 v3, 0x100

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2752
    const/16 v3, 0x200

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2754
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 2758
    const/16 v3, 0x800

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2760
    const/16 v3, 0x1000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2765
    const/16 v3, 0x2000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2767
    const/16 v3, 0x4000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2770
    const v3, 0x8000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2772
    const/high16 v3, 0x10000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2776
    const/high16 v3, 0x20000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2778
    const/high16 v3, 0x40000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2782
    const/high16 v3, 0x80000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2784
    const/high16 v3, 0x200000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2786
    const/high16 v3, 0x400000

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2790
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION"

    const-string v4, "packageName"

    invoke-virtual {v2, v3, v0, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_13
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4507
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableOcspCheck(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6063
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6064
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6066
    .local v0, "validPkgName":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 6072
    :cond_b
    :goto_b
    return v1

    .line 6068
    :cond_c
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6072
    :cond_1a
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x1000

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_b
.end method

.method public enableRevocationCheck(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6043
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6044
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6046
    .local v0, "validPkgName":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 6052
    :cond_b
    :goto_b
    return v1

    .line 6048
    :cond_c
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6052
    :cond_1a
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x800

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_b
.end method

.method public getAllAppLastUsage(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4501
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4502
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4503
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAllAppLastUsage(I)[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v1

    return-object v1
.end method

.method public getAllWidgets(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/Map;
    .registers 31
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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
    .line 5766
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5767
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .line 5768
    .local v24, "userId":I
    const/16 v19, 0x0

    .line 5771
    .local v19, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_53

    move-result-object v19

    .line 5776
    :goto_16
    if-nez v19, :cond_1d

    .line 5777
    new-instance v19, Ljava/util/HashMap;

    .end local v19    # "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 5780
    .restart local v19    # "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_1d
    if-eqz p2, :cond_2b

    if-eqz p2, :cond_52

    const-string v6, "com.sec.android.app.launcher"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 5783
    :cond_2b
    const-string v6, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5785
    .local v3, "launcher_uri":Landroid/net/Uri;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appWidgetId"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "intent"

    aput-object v7, v4, v6

    .line 5788
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "itemType = 900 OR itemType = 901 OR itemType = 1000 OR itemType = 1001 OR itemType = 1002"

    .line 5790
    .local v5, "selectionClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v23

    .line 5792
    .local v23, "userContext":Landroid/content/Context;
    if-nez v23, :cond_5c

    .line 5866
    .end local v3    # "launcher_uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selectionClause":Ljava/lang/String;
    .end local v23    # "userContext":Landroid/content/Context;
    :cond_52
    :goto_52
    return-object v19

    .line 5772
    :catch_53
    move-exception v12

    .line 5773
    .local v12, "e":Landroid/os/RemoteException;
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in getAllWidgets"

    invoke-static {v6, v7, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 5795
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v3    # "launcher_uri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selectionClause":Ljava/lang/String;
    .restart local v23    # "userContext":Landroid/content/Context;
    :cond_5c
    const/4 v10, 0x0

    .line 5797
    .local v10, "c":Landroid/database/Cursor;
    :try_start_5d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 5798
    .local v20, "token":J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5799
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5800
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5801
    :cond_6e
    :goto_6e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_18c

    .line 5803
    new-instance v17, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v17 .. v17}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 5804
    .local v17, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 5805
    .local v25, "widgetId":I
    const/4 v6, 0x1

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_82} :catch_138
    .catchall {:try_start_5d .. :try_end_82} :catchall_160

    move-result-object v22

    .line 5806
    .local v22, "uri":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5808
    .local v16, "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_86
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8b
    .catch Ljava/net/URISyntaxException; {:try_start_86 .. :try_end_8b} :catch_122
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_138
    .catchall {:try_start_86 .. :try_end_8b} :catchall_160

    move-result-object v16

    .line 5813
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v26, 0x3

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v11

    .line 5816
    .local v11, "ctx":Landroid/content/Context;
    if-eqz v11, :cond_6e

    .line 5819
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_af} :catch_138
    .catchall {:try_start_8c .. :try_end_af} :catchall_160

    move-result-wide v20

    .line 5823
    const/16 v18, 0x0

    .line 5824
    .local v18, "resName":I
    :try_start_b2
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "plug_in_name"

    const-string/jumbo v26, "string"

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 5826
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v26, 0x80

    move/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 5828
    .local v8, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v18, :cond_125

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_e7
    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_eb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b2 .. :try_end_eb} :catch_132
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b2 .. :try_end_eb} :catch_15a
    .catchall {:try_start_b2 .. :try_end_eb} :catchall_167

    .line 5835
    :try_start_eb
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5838
    const/4 v14, 0x0

    .line 5839
    .local v14, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_16c

    .line 5840
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_fd
    :goto_fd
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/appwidget/AppWidgetProviderInfo;

    .line 5841
    .local v9, "auxProvider":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v9, :cond_fd

    iget-object v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v6, :cond_fd

    iget-object v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 5843
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v14, Ljava/util/ArrayList;
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_121} :catch_138
    .catchall {:try_start_eb .. :try_end_121} :catchall_160

    .restart local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_fd

    .line 5809
    .end local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "auxProvider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "resName":I
    :catch_122
    move-exception v12

    .line 5810
    .local v12, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_6e

    .line 5828
    .end local v12    # "e":Ljava/net/URISyntaxException;
    .restart local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v18    # "resName":I
    :cond_125
    :try_start_125
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_130
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_125 .. :try_end_130} :catch_132
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_125 .. :try_end_130} :catch_15a
    .catchall {:try_start_125 .. :try_end_130} :catchall_167

    move-result-object v6

    goto :goto_e7

    .line 5830
    .end local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_132
    move-exception v15

    .line 5835
    .local v15, "ignore":Landroid/content/res/Resources$NotFoundException;
    :try_start_133
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_136} :catch_138
    .catchall {:try_start_133 .. :try_end_136} :catchall_160

    goto/16 :goto_6e

    .line 5856
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v15    # "ignore":Landroid/content/res/Resources$NotFoundException;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "resName":I
    .end local v20    # "token":J
    .end local v22    # "uri":Ljava/lang/String;
    .end local v25    # "widgetId":I
    :catch_138
    move-exception v12

    .line 5857
    .local v12, "e":Ljava/lang/Exception;
    :try_start_139
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getAllWidgets Ex: "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_153
    .catchall {:try_start_139 .. :try_end_153} :catchall_160

    .line 5860
    if-eqz v10, :cond_52

    .line 5861
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_52

    .line 5832
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v18    # "resName":I
    .restart local v20    # "token":J
    .restart local v22    # "uri":Ljava/lang/String;
    .restart local v25    # "widgetId":I
    :catch_15a
    move-exception v15

    .line 5835
    .local v15, "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15b
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_138
    .catchall {:try_start_15b .. :try_end_15e} :catchall_160

    goto/16 :goto_6e

    .line 5860
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v15    # "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "resName":I
    .end local v20    # "token":J
    .end local v22    # "uri":Ljava/lang/String;
    .end local v25    # "widgetId":I
    :catchall_160
    move-exception v6

    if-eqz v10, :cond_166

    .line 5861
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5860
    :cond_166
    throw v6

    .line 5835
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v18    # "resName":I
    .restart local v20    # "token":J
    .restart local v22    # "uri":Ljava/lang/String;
    .restart local v25    # "widgetId":I
    :catchall_167
    move-exception v6

    :try_start_168
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 5847
    .restart local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_16c
    if-nez v14, :cond_183

    .line 5848
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5849
    .restart local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5850
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6e

    .line 5852
    :cond_183
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_18a} :catch_138
    .catchall {:try_start_168 .. :try_end_18a} :catchall_160

    goto/16 :goto_6e

    .line 5860
    .end local v8    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v14    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "resName":I
    .end local v22    # "uri":Ljava/lang/String;
    .end local v25    # "widgetId":I
    :cond_18c
    if-eqz v10, :cond_52

    goto :goto_155
.end method

.method public getAppInstallToSdCard(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4131
    const/4 v1, 0x0

    .line 4132
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_GENERAL"

    const-string v6, "installToSdCard"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4134
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

    .line 4135
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 4136
    move v1, v2

    .line 4140
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public getAppInstallationMode(Landroid/app/enterprise/ContextInfo;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    .line 2236
    const-string v5, "ApplicationPolicy"

    const-string v7, "getAppInstallationMode :  mode start: "

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2239
    .local v4, "userID":I
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2240
    const/4 v1, 0x1

    .line 2241
    .local v1, "install":Z
    :try_start_10
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_1c

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2242
    :cond_1c
    monitor-exit v7

    move v5, v6

    .line 2266
    :goto_1e
    return v5

    .line 2244
    :cond_1f
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2246
    .local v3, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 2247
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2248
    .local v2, "uid":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    const v8, 0x186a0

    div-int v0, v5, v8

    .line 2249
    .local v0, "AdminUserID":I
    if-eq v4, v0, :cond_67

    .line 2250
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2268
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    .end local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_64
    move-exception v5

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_10 .. :try_end_66} :catchall_64

    throw v5

    .line 2253
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "uid":Ljava/lang/Long;
    .restart local v3    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_67
    :try_start_67
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v5

    if-nez v5, :cond_29

    .line 2258
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 2260
    const/4 v1, 0x0

    .line 2264
    .end local v0    # "AdminUserID":I
    .end local v2    # "uid":Ljava/lang/Long;
    :cond_a2
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode :  mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    if-eqz v1, :cond_c0

    move v5, v6

    :goto_bd
    monitor-exit v7
    :try_end_be
    .catchall {:try_start_67 .. :try_end_be} :catchall_64

    goto/16 :goto_1e

    :cond_c0
    const/4 v5, 0x0

    goto :goto_bd
.end method

.method public getAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5404
    const-string v0, "PackageNameNotificationBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5427
    const-string v0, "PackageNameNotificationWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageNamesAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3982
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppPackageNamesAllBlackLists "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3984
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3985
    .local v7, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3986
    :try_start_12
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 3987
    :cond_1e
    const/4 v3, 0x0

    monitor-exit v9

    .line 4017
    :goto_20
    return-object v3

    .line 3989
    :cond_21
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3992
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3993
    .local v3, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 3995
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 3996
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 3997
    .local v5, "uid":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 3998
    .local v0, "AdminUserID":I
    if-eq v7, v0, :cond_6f

    .line 3999
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 4018
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_6c
    move-exception v8

    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_6c

    throw v8

    .line 4002
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v5    # "uid":Ljava/lang/Long;
    .restart local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6f
    :try_start_6f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_31

    .line 4005
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PackageNameInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4006
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 4007
    if-eqz v2, :cond_31

    .line 4009
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 4010
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4011
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PackageNameInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 4012
    :goto_b5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 4013
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 4015
    :cond_c5
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 4017
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    :cond_ca
    monitor-exit v9
    :try_end_cb
    .catchall {:try_start_6f .. :try_end_cb} :catchall_6c

    goto/16 :goto_20
.end method

.method public getAppPackageNamesAllWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4048
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppPackageNamesAllWhiteLists "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4050
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 4051
    .local v6, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4052
    :try_start_12
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 4053
    :cond_1e
    const/4 v7, 0x0

    monitor-exit v9

    .line 4083
    :goto_20
    return-object v7

    .line 4055
    :cond_21
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4058
    .local v5, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4059
    .local v7, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 4061
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 4062
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 4063
    .local v4, "uid":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 4064
    .local v0, "AdminUserID":I
    if-eq v6, v0, :cond_6f

    .line 4065
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 4084
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/Long;
    .end local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_6c
    move-exception v8

    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_6c

    throw v8

    .line 4068
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v4    # "uid":Ljava/lang/Long;
    .restart local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_6f
    :try_start_6f
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_31

    .line 4071
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PackageNameInstallationWhitelist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4072
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 4073
    if-eqz v2, :cond_31

    .line 4075
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 4076
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 4077
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PackageNameInstallationWhitelist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 4078
    :goto_b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 4079
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 4081
    :cond_c5
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 4083
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_ca
    monitor-exit v9
    :try_end_cb
    .catchall {:try_start_6f .. :try_end_cb} :catchall_6c

    goto/16 :goto_20
.end method

.method public getAppPermissionsAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3690
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppPermissionAllBlackLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3692
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3693
    .local v7, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3694
    :try_start_12
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 3695
    :cond_1e
    const/4 v3, 0x0

    monitor-exit v9

    .line 3725
    :goto_20
    return-object v3

    .line 3697
    :cond_21
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3700
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3701
    .local v3, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 3703
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 3704
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 3705
    .local v5, "uid":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 3706
    .local v0, "AdminUserID":I
    if-eq v7, v0, :cond_6f

    .line 3707
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppPermissionsAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 3726
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_6c
    move-exception v8

    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_6c

    throw v8

    .line 3710
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v5    # "uid":Ljava/lang/Long;
    .restart local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6f
    :try_start_6f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_31

    .line 3713
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "PermissionInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3714
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 3715
    if-eqz v2, :cond_31

    .line 3717
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3718
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3719
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "PermissionInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3720
    :goto_b5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 3721
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 3723
    :cond_c5
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 3725
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    :cond_ca
    monitor-exit v9
    :try_end_cb
    .catchall {:try_start_6f .. :try_end_cb} :catchall_6c

    goto/16 :goto_20
.end method

.method public getAppPermissionsBlackList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3664
    const-string v3, "ApplicationPolicy"

    const-string v4, "getAppPermissionsBlackList:"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3666
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 3667
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "APPLICATION_PERMISSION"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3671
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3a

    .line 3672
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3673
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 3674
    const-string v3, "permission"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 3676
    :cond_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3679
    :cond_3a
    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_51

    .line 3680
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    .line 3682
    :goto_50
    return-object v3

    :cond_51
    const/4 v3, 0x0

    goto :goto_50
.end method

.method public getAppSignatureBlackList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 3750
    const-string v3, "ApplicationPolicy"

    const-string v5, "getAppSignatureBlackList()"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3752
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_14
    move-object v3, v4

    .line 3766
    :goto_15
    return-object v3

    .line 3755
    :cond_16
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3757
    .local v0, "callingUid":I
    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3758
    .local v2, "uid":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 3759
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 3760
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "SignatureInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3763
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3d
    if-eqz v1, :cond_54

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_54

    .line 3764
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    goto :goto_15

    :cond_54
    move-object v3, v4

    .line 3766
    goto :goto_15
.end method

.method public getAppSignaturesAllBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3774
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppSignatureAllBlackLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3776
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3778
    .local v7, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3779
    :try_start_12
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 3780
    :cond_1e
    const/4 v3, 0x0

    monitor-exit v9

    .line 3812
    :goto_20
    return-object v3

    .line 3782
    :cond_21
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3785
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3786
    .local v3, "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const/4 v2, 0x0

    .line 3788
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 3789
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 3790
    .local v5, "uid":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 3791
    .local v0, "AdminUserID":I
    if-eq v7, v0, :cond_6f

    .line 3792
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 3813
    .end local v0    # "AdminUserID":I
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_6c
    move-exception v8

    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_6c

    throw v8

    .line 3795
    .restart local v0    # "AdminUserID":I
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "blacklist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v5    # "uid":Ljava/lang/Long;
    .restart local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6f
    :try_start_6f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_31

    .line 3799
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  uid  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "SignatureInstallationBlacklist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3801
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 3802
    if-eqz v2, :cond_31

    .line 3804
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3805
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3806
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "SignatureInstallationBlacklist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3807
    :goto_cd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 3808
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 3810
    :cond_dd
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 3812
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "uid":Ljava/lang/Long;
    :cond_e2
    monitor-exit v9
    :try_end_e3
    .catchall {:try_start_6f .. :try_end_e3} :catchall_6c

    goto/16 :goto_20
.end method

.method public getAppSignaturesAllWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3879
    const-string v8, "ApplicationPolicy"

    const-string v9, "getAppSignaturesAllWhiteLists:"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3880
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3881
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 3882
    .local v6, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3883
    :try_start_12
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 3884
    :cond_1e
    const/4 v7, 0x0

    monitor-exit v9

    .line 3916
    :goto_20
    return-object v7

    .line 3886
    :cond_21
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3887
    .local v5, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3888
    .local v7, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3889
    .local v4, "uid":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 3890
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3891
    .local v1, "aci":Landroid/app/enterprise/AppControlInfo;
    const/4 v2, 0x0

    .line 3893
    .local v2, "adminPackageName":Ljava/lang/String;
    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d2

    .line 3894
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uid":Ljava/lang/Long;
    check-cast v4, Ljava/lang/Long;

    .line 3895
    .restart local v4    # "uid":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0x186a0

    div-int v0, v8, v10

    .line 3896
    .local v0, "AdminUserID":I
    if-eq v6, v0, :cond_77

    .line 3897
    const-string v8, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppSignaturesAllBlackLists() :  userID :   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  != AdminUserID  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 3917
    .end local v0    # "AdminUserID":I
    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .end local v2    # "adminPackageName":Ljava/lang/String;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "uid":Ljava/lang/Long;
    .end local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_74
    move-exception v8

    monitor-exit v9
    :try_end_76
    .catchall {:try_start_12 .. :try_end_76} :catchall_74

    throw v8

    .line 3900
    .restart local v0    # "AdminUserID":I
    .restart local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    .restart local v2    # "adminPackageName":Ljava/lang/String;
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "uid":Ljava/lang/Long;
    .restart local v5    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v7    # "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_77
    :try_start_77
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v8

    if-nez v8, :cond_39

    .line 3904
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "SignatureInstallationWhitelist"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3905
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 3906
    if-eqz v2, :cond_39

    .line 3908
    new-instance v1, Landroid/app/enterprise/AppControlInfo;

    .end local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    invoke-direct {v1}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3909
    .restart local v1    # "aci":Landroid/app/enterprise/AppControlInfo;
    iput-object v2, v1, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3910
    new-instance v10, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "SignatureInstallationWhitelist"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3911
    :goto_bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 3912
    iget-object v8, v1, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 3914
    :cond_cd
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 3916
    .end local v0    # "AdminUserID":I
    :cond_d2
    monitor-exit v9
    :try_end_d3
    .catchall {:try_start_77 .. :try_end_d3} :catchall_74

    goto/16 :goto_20
.end method

.method public getAppSignaturesWhiteList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 3854
    const-string v3, "ApplicationPolicy"

    const-string v5, "getAppSignaturesWhiteList:"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3857
    :try_start_b
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3858
    :cond_17
    monitor-exit v5

    move-object v3, v4

    .line 3871
    :goto_19
    return-object v3

    .line 3860
    :cond_1a
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3862
    .local v0, "callingUid":I
    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3863
    .local v2, "uid":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 3864
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 3865
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "SignatureInstallationWhitelist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3868
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    if-eqz v1, :cond_5c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5c

    .line 3869
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    monitor-exit v5

    goto :goto_19

    .line 3872
    .end local v0    # "callingUid":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "uid":Ljava/lang/Long;
    :catchall_59
    move-exception v3

    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_59

    throw v3

    .line 3871
    .restart local v0    # "callingUid":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "uid":Ljava/lang/Long;
    :cond_5c
    :try_start_5c
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    move-object v3, v4

    goto :goto_19
.end method

.method public getApplicationCacheSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3354
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3355
    const-wide/16 v3, -0x1

    .line 3356
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3357
    if-eqz p2, :cond_1c

    .line 3359
    :try_start_c
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3361
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1c

    .line 3362
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3363
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_3b

    .line 3371
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_1c
    :goto_1c
    return-wide v3

    .line 3365
    :catch_1d
    move-exception v0

    .line 3366
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationCacheSize() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 3367
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3b
    move-exception v0

    .line 3368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public getApplicationCodeSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3303
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3304
    const-wide/16 v3, -0x1

    .line 3305
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3306
    if-eqz p2, :cond_18

    .line 3308
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3309
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_18

    .line 3310
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3311
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_19

    .line 3317
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_18
    :goto_18
    return-wide v3

    .line 3313
    :catch_19
    move-exception v0

    .line 3314
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getApplicationComponentState(ILandroid/content/ComponentName;I)Z
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .prologue
    .line 2080
    if-nez p2, :cond_1c

    .line 2081
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationComponentState : ComponentName is null , userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const/4 v3, 0x0

    .line 2121
    :cond_1b
    :goto_1b
    return v3

    .line 2084
    :cond_1c
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2087
    .local v5, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    .line 2088
    .local v3, "enabled":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2090
    .local v2, "cvValues":Landroid/content/ContentValues;
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationComponentState : pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " userId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2094
    if-eqz v5, :cond_c4

    .line 2095
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2096
    const-string/jumbo v8, "userID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2097
    const-string v8, "component"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "componentControlState"

    aput-object v9, v6, v8

    .line 2101
    .local v6, "returnColumns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION_COMPONENT"

    invoke-virtual {v8, v9, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 2103
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2104
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_86
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2105
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_86

    .line 2106
    const-string v8, "componentControlState"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2107
    .local v7, "state":Ljava/lang/Integer;
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationComponentState : state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const/4 v8, 0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-ne v8, v9, :cond_86

    .line 2111
    const/4 v3, 0x0

    .line 2112
    goto/16 :goto_1b

    .line 2119
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/Integer;
    :cond_c4
    const/4 v3, 0x0

    goto/16 :goto_1b
.end method

.method public getApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "compName"    # Landroid/content/ComponentName;

    .prologue
    .line 2068
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2069
    .local v1, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2071
    .local v0, "containerId":I
    if-nez v0, :cond_e

    .line 2072
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2075
    :cond_e
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(ILandroid/content/ComponentName;I)Z

    move-result v2

    return v2
.end method

.method public getApplicationCpuUsage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 3441
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3442
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3444
    if-eqz p2, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 3445
    :cond_12
    const-wide/16 v6, -0x1

    .line 3478
    :cond_14
    :goto_14
    return-wide v6

    .line 3448
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v2

    .line 3450
    .local v2, "pid":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_14

    .line 3454
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 3456
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    .line 3457
    .local v0, "count":I
    const/4 v3, 0x0

    .line 3458
    .local v3, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v0, :cond_35

    .line 3459
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8, v1}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v3

    .line 3460
    iget v8, v3, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v8, v2, :cond_63

    .line 3465
    :cond_35
    if-eqz v3, :cond_14

    .line 3469
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

    .line 3474
    .local v4, "totalCPUTime":J
    cmp-long v6, v4, v6

    if-nez v6, :cond_59

    .line 3475
    const-wide/16 v4, 0x1

    .line 3478
    :cond_59
    iget v6, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v7, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    div-long/2addr v6, v4

    goto :goto_14

    .line 3458
    .end local v4    # "totalCPUTime":J
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method public getApplicationDataSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3327
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3328
    const-wide/16 v3, -0x1

    .line 3329
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3330
    if-eqz p2, :cond_1c

    .line 3332
    :try_start_c
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3334
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1c

    .line 3335
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3336
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_3b

    .line 3344
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_1c
    :goto_1c
    return-wide v3

    .line 3338
    :catch_1d
    move-exception v0

    .line 3339
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationCacheSize() : Exception when retrieving package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 3340
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3b
    move-exception v0

    .line 3341
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public getApplicationIconFromDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[B
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 3620
    const/4 v0, 0x0

    .line 3621
    .local v0, "lImg":[B
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3622
    .local v1, "userId":I
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2d

    .line 3623
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3625
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIcon(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3627
    :cond_2d
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPacakageName"    # Ljava/lang/String;

    .prologue
    .line 2886
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2887
    .local v0, "userID":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v1

    return v1
.end method

.method public getApplicationMemoryUsage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3381
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3382
    const-wide/16 v7, 0x0

    .line 3383
    .local v7, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3384
    if-eqz p2, :cond_80

    .line 3387
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 3388
    const-wide/16 v9, -0x1

    .line 3420
    :goto_14
    return-wide v9

    .line 3393
    :cond_15
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3395
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 3397
    .local v4, "lRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, p2, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 3398
    .local v1, "apkID":I
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getApplicationMemoryUsage() : apkID =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3402
    .local v6, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 3405
    .local v5, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v9, v1, :cond_49

    .line 3406
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v9

    iget-object v11, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v11

    int-to-long v11, v11

    div-long/2addr v9, v11
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_70} :catch_72

    add-long/2addr v7, v9

    goto :goto_49

    .line 3413
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "apkID":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "lRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_72
    move-exception v2

    .line 3414
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3415
    const-wide/16 v7, -0x1

    .line 3420
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_78
    :goto_78
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_83

    move-wide v9, v7

    goto :goto_14

    .line 3418
    :cond_80
    const-wide/16 v7, -0x1

    goto :goto_78

    .line 3420
    :cond_83
    const-wide/16 v9, -0x1

    goto :goto_14
.end method

.method public getApplicationName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3190
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3191
    const/4 v1, 0x0

    .line 3192
    .local v1, "appName":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3193
    if-eqz p2, :cond_1b

    .line 3195
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3196
    .local v3, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1b

    .line 3197
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    .line 3202
    .end local v3    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1b
    :goto_1b
    return-object v1

    .line 3198
    :catch_1c
    move-exception v2

    .line 3199
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 6827
    const/4 v0, 0x0

    .line 6828
    .local v0, "newName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_41

    .line 6829
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 6831
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppName for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6832
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6835
    :cond_41
    return-object v0
.end method

.method public getApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x2

    .line 5459
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5460
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 5462
    .local v3, "userId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5463
    .local v2, "mUserModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5464
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5465
    .local v4, "userIdByAdmin":I
    if-ne v3, v4, :cond_1a

    .line 5466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 5470
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v4    # "userIdByAdmin":I
    :cond_42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v5, v6

    .line 5478
    :goto_4d
    return v5

    .line 5472
    :cond_4e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    move v5, v7

    .line 5473
    goto :goto_4d

    .line 5474
    :cond_5a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    move v5, v8

    .line 5475
    goto :goto_4d

    :cond_66
    move v5, v6

    .line 5478
    goto :goto_4d
.end method

.method public getApplicationStateEnabled(ILjava/lang/String;)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getApplicationStateEnabled(ILjava/lang/String;I)Z
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 2488
    const/4 v4, 0x1

    .line 2489
    .local v4, "enabled":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2491
    .local v2, "cvValues":Landroid/content/ContentValues;
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getApplicationStateEnabled : pkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " userId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2494
    invoke-static {p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2496
    if-eqz p2, :cond_f8

    .line 2497
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2498
    const-string/jumbo v9, "userID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2499
    const-string v9, "packageName"

    invoke-virtual {v2, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "controlState"

    aput-object v9, v6, v8

    .line 2505
    .local v6, "returnColumns":[Ljava/lang/String;
    const-string v9, "sec_container_"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a1

    const-string v9, "com.sec.knox.containeragent"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a1

    const-string v9, "com.sec.android.app.knoxlauncher"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a1

    .line 2509
    :try_start_6a
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkKNOXSystemStatus()Z

    move-result v9

    if-nez v9, :cond_89

    .line 2510
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX system is not ready, blocked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    .end local v6    # "returnColumns":[Ljava/lang/String;
    :goto_88
    return v8

    .line 2513
    .restart local v6    # "returnColumns":[Ljava/lang/String;
    :cond_89
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KNOX system is ready, start : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a1} :catch_f3

    .line 2520
    :cond_a1
    :goto_a1
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "APPLICATION"

    invoke-virtual {v8, v9, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 2522
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_f1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f1

    .line 2523
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2524
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_b5

    .line 2525
    const-string v8, "controlState"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2526
    .local v7, "state":Ljava/lang/Integer;
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationStateEnabled : state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    const/4 v8, 0x2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-ne v8, v9, :cond_b5

    .line 2530
    const/4 v4, 0x0

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/Integer;
    :cond_f1
    :goto_f1
    move v8, v4

    .line 2540
    goto :goto_88

    .line 2514
    .restart local v6    # "returnColumns":[Ljava/lang/String;
    :catch_f3
    move-exception v3

    .line 2515
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a1

    .line 2538
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "returnColumns":[Ljava/lang/String;
    :cond_f8
    const/4 v4, 0x0

    goto :goto_f1
.end method

.method public getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2444
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2446
    .local v0, "containerId":I
    if-nez v0, :cond_a

    .line 2447
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2450
    :cond_a
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 2456
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2458
    .local v0, "ret":Z
    if-nez v0, :cond_e

    if-eqz p3, :cond_e

    .line 2459
    const v1, 0x104066d

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2462
    :cond_e
    return v0
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 2470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2471
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v1

    .line 2472
    .local v1, "ret":Z
    if-nez v1, :cond_16

    if-eqz p2, :cond_16

    .line 2473
    const v2, 0x104066d

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2476
    :cond_16
    return v1
.end method

.method public getApplicationStateList(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "state"    # Z

    .prologue
    .line 4763
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4765
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4768
    .local v2, "lAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 4770
    .local v0, "appInstallList":[Ljava/lang/String;
    if-nez v0, :cond_28

    .line 4784
    .end local v0    # "appInstallList":[Ljava/lang/String;
    :goto_27
    return-object v0

    .line 4774
    .restart local v0    # "appInstallList":[Ljava/lang/String;
    :cond_28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    array-length v3, v0

    if-ge v1, v3, :cond_3c

    .line 4775
    aget-object v3, v0, v1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p2, :cond_39

    .line 4776
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4774
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 4780
    :cond_3c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_44

    .line 4781
    const/4 v0, 0x0

    goto :goto_27

    .line 4784
    :cond_44
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_27
.end method

.method public getApplicationTotalSize(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3280
    const-wide/16 v3, -0x1

    .line 3281
    .local v3, "total":J
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3282
    if-eqz p2, :cond_1f

    .line 3284
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3285
    .local v1, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1f

    .line 3286
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 3287
    .local v2, "pkgSt":Landroid/content/pm/PackageStats;
    iget-wide v5, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v7, v2, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v5, v7

    iget-wide v7, v2, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_20

    add-long v3, v5, v7

    .line 3293
    .end local v1    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgSt":Landroid/content/pm/PackageStats;
    :cond_1f
    :goto_1f
    return-wide v3

    .line 3289
    :catch_20
    move-exception v0

    .line 3290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public getApplicationUid(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3213
    const/4 v0, -0x1

    .line 3214
    .local v0, "appUid":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3215
    if-eqz p2, :cond_13

    .line 3217
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3218
    .local v2, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_13

    .line 3219
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    .line 3224
    .end local v2    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_13
    :goto_13
    return v0

    .line 3220
    :catch_14
    move-exception v1

    .line 3221
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3062
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3063
    .local v0, "userID":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    const/4 v5, 0x0

    .line 3067
    if-gez p2, :cond_3a

    .line 3068
    const/4 v3, 0x0

    .line 3069
    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 3070
    .local v4, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_17

    .line 3071
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 3074
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_17
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_38

    .line 3075
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3076
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 3077
    .local v0, "currentUserHandle":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 3085
    .end local v0    # "currentUserHandle":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :goto_37
    return v5

    .line 3082
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_38
    const/4 v5, 0x1

    goto :goto_37

    .line 3085
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_3a
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabledInternal(ILjava/lang/String;)Z

    move-result v5

    goto :goto_37
.end method

.method public getApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    .line 2320
    const-string v5, "ApplicationPolicy"

    const-string v7, "getApplicationUninstallationMode"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2324
    .local v4, "userID":I
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2325
    const/4 v3, 0x1

    .line 2326
    .local v3, "uninstall":Z
    :try_start_10
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_1c

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2327
    :cond_1c
    monitor-exit v7

    move v5, v6

    .line 2350
    :goto_1e
    return v5

    .line 2329
    :cond_1f
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2331
    .local v2, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 2332
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2333
    .local v1, "uid":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    const v8, 0x186a0

    div-int v0, v5, v8

    .line 2334
    .local v0, "AdminUserID":I
    if-eq v4, v0, :cond_67

    .line 2335
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode() :  userID :   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  != AdminUserID  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2352
    .end local v0    # "AdminUserID":I
    .end local v1    # "uid":Ljava/lang/Long;
    .end local v2    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_64
    move-exception v5

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_10 .. :try_end_66} :catchall_64

    throw v5

    .line 2338
    .restart local v0    # "AdminUserID":I
    .restart local v1    # "uid":Ljava/lang/Long;
    .restart local v2    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_67
    :try_start_67
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v5

    if-nez v5, :cond_29

    .line 2343
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "UninstallationBlacklist"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v8, ".*"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 2344
    const/4 v3, 0x0

    .line 2348
    .end local v0    # "AdminUserID":I
    .end local v1    # "uid":Ljava/lang/Long;
    :cond_8a
    const-string v5, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppInstallationMode :  mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    if-eqz v3, :cond_a8

    move v5, v6

    :goto_a5
    monitor-exit v7
    :try_end_a6
    .catchall {:try_start_67 .. :try_end_a6} :catchall_64

    goto/16 :goto_1e

    :cond_a8
    const/4 v5, 0x0

    goto :goto_a5
.end method

.method public getApplicationVersion(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3234
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3235
    const/4 v0, 0x0

    .line 3236
    .local v0, "appName":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3237
    if-eqz p2, :cond_13

    .line 3239
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3240
    .local v2, "mpkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_13

    .line 3241
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    .line 3246
    .end local v2    # "mpkgInfo":Landroid/content/pm/PackageInfo;
    :cond_13
    :goto_13
    return-object v0

    .line 3242
    :catch_14
    move-exception v1

    .line 3243
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getApplicationVersionCode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3256
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3257
    const/4 v2, -0x1

    .line 3258
    .local v2, "version":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3259
    if-eqz p2, :cond_13

    .line 3261
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3262
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_13

    .line 3263
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    .line 3268
    .end local v1    # "mpkgInfo":Landroid/content/pm/PackageInfo;
    :cond_13
    :goto_13
    return v2

    .line 3264
    :catch_14
    move-exception v0

    .line 3265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getApplicationsList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2656
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2657
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAvgNoAppUsagePerMonth(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4487
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4488
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4489
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAvgNoAppUsagePerMonth(I)[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v1

    return-object v1
.end method

.method public getHomeShortcuts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .registers 32
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "includeHotSeat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5702
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5703
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    .line 5704
    .local v24, "userId":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5705
    .local v19, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 5706
    .local v15, "buildcarrier":Ljava/lang/String;
    const-string v8, "com.sec.android.app.launcher.settings/"

    .line 5707
    .local v8, "AUTHORITY":Ljava/lang/String;
    const-string v6, "klte"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "k3g"

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 5708
    :cond_29
    const-string v6, "ApplicationPolicy"

    const-string v7, "getHomeShortcuts: Next home laucher. Auth is changed..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5709
    const-string v8, "com.sec.android.app.launcher.providers.LauncherProvider/"

    .line 5711
    :cond_32
    const-string v13, "favorites"

    .line 5712
    .local v13, "TABLE_FAVORITES":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5713
    .local v3, "CONTENT_URI":Landroid/net/Uri;
    const-string v11, "itemType"

    .line 5714
    .local v11, "COLUMN_ITEM_TYPE":Ljava/lang/String;
    const-string/jumbo v12, "title"

    .line 5715
    .local v12, "COLUMN_TITLE":Ljava/lang/String;
    const-string v10, "intent"

    .line 5716
    .local v10, "COLUMN_INTENT":Ljava/lang/String;
    const-string v9, "container"

    .line 5717
    .local v9, "COLUMN_CONTAINER":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v4, v6

    const/4 v6, 0x1

    aput-object v10, v4, v6

    .line 5718
    .local v4, "projections":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5719
    .local v5, "selection":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5720
    .local v16, "count":I
    if-eqz p2, :cond_94

    if-eqz p2, :cond_132

    const-string v6, "com.sec.android.app.launcher"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 5721
    :cond_94
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v23

    .line 5723
    .local v23, "userContext":Landroid/content/Context;
    if-nez v23, :cond_b0

    .line 5724
    const-string v6, "ApplicationPolicy"

    const-string v7, "getHomeShortcuts: userContext null! "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5725
    const/16 v19, 0x0

    .line 5755
    .end local v19    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v23    # "userContext":Landroid/content/Context;
    :goto_af
    return-object v19

    .line 5727
    .restart local v19    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v23    # "userContext":Landroid/content/Context;
    :cond_b0
    if-nez p3, :cond_e5

    .line 5728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!=-101"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5729
    :cond_e5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 5730
    .local v21, "token":J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5731
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 5733
    .local v17, "cur":Landroid/database/Cursor;
    if-eqz v17, :cond_16b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_16b

    .line 5734
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 5735
    .local v25, "xIntent":I
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 5737
    .local v26, "xTitle":I
    :cond_107
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5738
    .local v20, "strIntent":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 5740
    .local v14, "appIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_115
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_11a
    .catch Ljava/net/URISyntaxException; {:try_start_115 .. :try_end_11a} :catch_166

    move-result-object v14

    .line 5744
    :goto_11b
    if-eqz v14, :cond_126

    .line 5745
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5746
    :cond_126
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_107

    .line 5747
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 5751
    .end local v14    # "appIntent":Landroid/content/Intent;
    .end local v20    # "strIntent":Ljava/lang/String;
    .end local v25    # "xIntent":I
    .end local v26    # "xTitle":I
    :goto_12f
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5754
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v17    # "cur":Landroid/database/Cursor;
    .end local v21    # "token":J
    .end local v23    # "userContext":Landroid/content/Context;
    :cond_132
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getHomeShortcuts: pkgName : "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v27, "include hot seat: "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v27, " return..."

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_af

    .line 5741
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v14    # "appIntent":Landroid/content/Intent;
    .restart local v17    # "cur":Landroid/database/Cursor;
    .restart local v20    # "strIntent":Ljava/lang/String;
    .restart local v21    # "token":J
    .restart local v23    # "userContext":Landroid/content/Context;
    .restart local v25    # "xIntent":I
    .restart local v26    # "xTitle":I
    :catch_166
    move-exception v18

    .line 5742
    .local v18, "e":Ljava/net/URISyntaxException;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_11b

    .line 5750
    .end local v14    # "appIntent":Landroid/content/Intent;
    .end local v18    # "e":Ljava/net/URISyntaxException;
    .end local v20    # "strIntent":Ljava/lang/String;
    .end local v25    # "xIntent":I
    .end local v26    # "xTitle":I
    :cond_16b
    const-string v6, "ApplicationPolicy"

    const-string v7, "getHomeShortcuts: get cursor failed. "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12f
.end method

.method public getInstalledApplicationsIDList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3150
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "includeUninstalledDataPresent"    # Z

    .prologue
    .line 3155
    const/4 v6, 0x0

    .line 3157
    .local v6, "packageNameList":[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3158
    .local v7, "userID":I
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInstalledApplicationsIDListExtended : userid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    :try_start_1d
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz p2, :cond_4f

    const/16 v8, 0x2000

    :goto_23
    invoke-virtual {v9, v8, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v0

    .line 3169
    .local v0, "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_56

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_56

    .line 3170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 3171
    const/4 v4, 0x0

    .line 3172
    .local v4, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3173
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v6, v5
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4d} :catch_51

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_3b

    .line 3161
    .end local v0    # "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "index":I
    :cond_4f
    const/4 v8, 0x0

    goto :goto_23

    .line 3176
    :catch_51
    move-exception v2

    .line 3177
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 3178
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3180
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_56
    return-object v6
.end method

.method public getInstalledManagedApplicationsList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2586
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2587
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2588
    .local v4, "callingUid":I
    const/4 v2, 0x0

    .line 2590
    .local v2, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 2591
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x2

    :try_start_b
    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "packageName"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string v16, "managedApp"

    aput-object v16, v5, v15

    .line 2594
    .local v5, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "APPLICATION"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2596
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_75

    .line 2597
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_bf

    .line 2598
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_71

    .line 2602
    const-string v15, "managedApp"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2604
    .local v14, "state":I
    const/4 v15, 0x1

    and-int/lit8 v16, v14, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6f

    const/4 v11, 0x1

    .line 2605
    .local v11, "isEnterpriseApp":Z
    :goto_42
    const/4 v15, 0x1

    if-ne v11, v15, :cond_2a

    .line 2606
    const-string v15, "packageName"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_52} :catch_53

    goto :goto_2a

    .line 2629
    .end local v11    # "isEnterpriseApp":Z
    .end local v14    # "state":I
    :catch_53
    move-exception v9

    move-object v12, v13

    .line 2630
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "e":Ljava/lang/Exception;
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_55
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2632
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_58
    :goto_58
    if-eqz v2, :cond_bd

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_bd

    .line 2633
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    check-cast v15, [Ljava/lang/String;

    .line 2635
    :goto_6e
    return-object v15

    .line 2604
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "state":I
    :cond_6f
    const/4 v11, 0x0

    goto :goto_42

    .line 2610
    .end local v14    # "state":I
    :cond_71
    :try_start_71
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_53

    move-object v12, v13

    .line 2612
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_75
    if-eqz v12, :cond_58

    :try_start_77
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_58

    .line 2613
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_82} :catch_bf

    .line 2614
    .end local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    :try_start_83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Landroid/app/enterprise/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v7

    .line 2615
    .local v7, "deviceApps":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2616
    .local v8, "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_95

    array-length v15, v7

    if-lez v15, :cond_95

    .line 2617
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 2619
    :cond_95
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_96
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v10, v15, :cond_c1

    .line 2620
    if-eqz v8, :cond_b2

    .line 2621
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_af

    .line 2622
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    :cond_af
    :goto_af
    add-int/lit8 v10, v10, 0x1

    goto :goto_96

    .line 2625
    :cond_b2
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_b9} :catch_ba

    goto :goto_af

    .line 2629
    .end local v7    # "deviceApps":[Ljava/lang/String;
    .end local v8    # "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i":I
    :catch_ba
    move-exception v9

    move-object v2, v3

    .end local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_55

    .line 2635
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_bd
    const/4 v15, 0x0

    goto :goto_6e

    .line 2629
    :catch_bf
    move-exception v9

    goto :goto_55

    .end local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "deviceApps":[Ljava/lang/String;
    .restart local v8    # "deviceInstalledAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i":I
    :cond_c1
    move-object v2, v3

    .end local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_58
.end method

.method public getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 982
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 983
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage(I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "x0"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getNetworkStats(Landroid/app/enterprise/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6377
    const-string v0, "PackageNameClearCacheBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6394
    const-string v0, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6320
    const-string v0, "PackageNameClearDataBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6337
    const-string v0, "PackageNameClearDataWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6633
    const-string v0, "PackageNameDisableClipboardBlackList"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6647
    const-string v0, "PackageNameDisableClipboardWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6912
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6913
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "PackageNameUpdateBlacklist"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6890
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6891
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "PackageNameUpdateWhitelist"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5033
    const-string v0, "PackageNameStopBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5050
    const-string v0, "PackageNameStopWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromInstallWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6152
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 6153
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6154
    .local v3, "containerId":I
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPackagesFromInstallWhiteList :  containerId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6156
    move-object/from16 v0, p1

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6158
    .local v1, "adminUid":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 6159
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string/jumbo v14, "version"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_79

    .line 6160
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 6161
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 6164
    .local v10, "token":J
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v14, "persona"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    .line 6167
    .local v8, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v8, v7}, Landroid/os/PersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4d} :catch_52
    .catchall {:try_start_3e .. :try_end_4d} :catchall_74

    move-result-object v12

    .line 6173
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6193
    .end local v7    # "pid":I
    .end local v8    # "pm":Landroid/os/PersonaManager;
    .end local v10    # "token":J
    :cond_51
    :goto_51
    return-object v12

    .line 6169
    .restart local v7    # "pid":I
    .restart local v10    # "token":J
    :catch_52
    move-exception v4

    .line 6170
    .local v4, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addPackageToInstallList() - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_74

    .line 6173
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6176
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_51

    .line 6173
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_74
    move-exception v13

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 6179
    .end local v7    # "pid":I
    .end local v10    # "token":J
    :cond_79
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v9, v13

    .line 6180
    .local v9, "returnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "WhiteListInstallApps"

    invoke-virtual {v13, v14, v1, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 6182
    .local v5, "packageCursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6185
    .local v12, "whiteListedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_51

    .line 6186
    :goto_92
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_a6

    .line 6187
    const-string v13, "packageName"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6189
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 6191
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_a6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_51
.end method

.method public getPackagesFromPreventStartBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6531
    const-string v0, "PackageNameStartBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5121
    const-string v0, "PackageNameWidgetBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5094
    const-string v0, "PackageNameWidgetWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(Landroid/app/enterprise/ContextInfo;IZ)Ljava/util/List;
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aAppCount"    # I
    .param p3, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4417
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4418
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 4420
    .local v13, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 4422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v5

    .line 4424
    .local v5, "count":I
    if-lez p2, :cond_21

    move/from16 v0, p2

    if-ge v5, v0, :cond_23

    .line 4425
    :cond_21
    move/from16 p2, v5

    .line 4428
    :cond_23
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4430
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v15, v0

    .line 4435
    .local v15, "totalCPUTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-nez v20, :cond_61

    .line 4436
    const-wide/16 v15, 0x1

    .line 4439
    :cond_61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4440
    .local v4, "appPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p3, :cond_98

    .line 4441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 4443
    .local v3, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 4445
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_7e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_98

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4446
    .local v9, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 4450
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_98
    const/4 v12, 0x0

    .line 4451
    .local v12, "stat":Lcom/android/internal/os/ProcessStats$Stats;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v19

    .line 4453
    .local v19, "userId":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9e
    move/from16 v0, p2

    if-ge v7, v0, :cond_15d

    .line 4454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v12

    .line 4456
    if-eqz v12, :cond_13c

    if-nez p3, :cond_c2

    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13c

    .line 4457
    :cond_c2
    const/16 v17, -0x1

    .line 4459
    .local v17, "uidFromName":I
    :try_start_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    iget-object v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_d7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c4 .. :try_end_d7} :catch_140

    move-result v17

    .line 4463
    :goto_d8
    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/Process;->getUidForPid(I)I

    move-result v18

    .line 4464
    .local v18, "uidFromPid":I
    const-string v20, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getTopNCPUUsageApp() : uidFromName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " uidFromPid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13c

    .line 4466
    new-instance v9, Landroid/app/enterprise/AppInfo;

    invoke-direct {v9}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 4467
    .local v9, "info":Landroid/app/enterprise/AppInfo;
    iget-object v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v9, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 4468
    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move/from16 v20, v0

    iget v0, v12, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    move/from16 v21, v0

    add-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x64

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v20, v20, v15

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 4470
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4453
    .end local v9    # "info":Landroid/app/enterprise/AppInfo;
    .end local v17    # "uidFromName":I
    .end local v18    # "uidFromPid":I
    :cond_13c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9e

    .line 4460
    .restart local v17    # "uidFromName":I
    :catch_140
    move-exception v6

    .line 4461
    .local v6, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getTopNCPUUsageApp() : cannot getPackageUid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 4475
    .end local v6    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "uidFromName":I
    :cond_15d
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4477
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_167

    .end local v11    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :goto_166
    return-object v11

    .restart local v11    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_167
    const/4 v11, 0x0

    goto :goto_166
.end method

.method public getTopNDataUsageApp(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aAppCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4333
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4334
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4335
    .local v5, "userId":I
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNDataUsageApp start"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4337
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppSizeInfo(I)Ljava/util/List;

    move-result-object v2

    .line 4338
    .local v2, "lResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4339
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4342
    .local v4, "lStorageInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_27

    .line 4343
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 4346
    :cond_27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    if-ge v0, p2, :cond_48

    .line 4347
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .line 4348
    .local v1, "lDataInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 4349
    .local v3, "lStorageInfo":Landroid/app/enterprise/AppInfo;
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 4350
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 4351
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4346
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 4355
    .end local v1    # "lDataInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    .end local v3    # "lStorageInfo":Landroid/app/enterprise/AppInfo;
    :cond_48
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNDataUsageApp end"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4356
    return-object v4
.end method

.method public getTopNMemoryUsageApp(Landroid/app/enterprise/ContextInfo;IZ)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aAppCount"    # I
    .param p3, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4235
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4236
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNMemoryUsageApp start"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4239
    .local v5, "userId":I
    invoke-direct {p0, p3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppMemoryInfo(ZI)Ljava/util/List;

    move-result-object v2

    .line 4240
    .local v2, "lResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4243
    .local v4, "lStorageInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_27

    .line 4244
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 4247
    :cond_27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    if-ge v0, p2, :cond_72

    .line 4248
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .line 4249
    .local v1, "lMemInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 4250
    .local v3, "lStorageInfo":Landroid/app/enterprise/AppInfo;
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 4251
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 4252
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4253
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " memory usage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4247
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 4255
    .end local v1    # "lMemInfo":Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
    .end local v3    # "lStorageInfo":Landroid/app/enterprise/AppInfo;
    :cond_72
    const-string v6, "ApplicationPolicy"

    const-string v7, "getTopNMemoryUsageApp end"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4256
    return-object v4
.end method

.method public installAppWithCallback(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z
    .param p4, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 1670
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1671
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z

    .prologue
    .line 1660
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1661
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installApplicationBySystem(ILjava/lang/String;Z)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "installOnSDCard"    # Z

    .prologue
    .line 1687
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_10

    .line 1688
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1690
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;ZLcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method public installExistingApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 1829
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1830
    const/4 v3, 0x0

    .line 1831
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1832
    .local v6, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1833
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1835
    .local v4, "token":J
    :try_start_12
    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installExistingApplication(Ljava/lang/String;I)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_2a
    .catchall {:try_start_12 .. :try_end_15} :catchall_3c

    move-result v2

    .line 1836
    .local v2, "result":I
    if-ne v2, v7, :cond_28

    move v3, v7

    .line 1841
    :goto_19
    if-eqz v3, :cond_23

    if-eq v0, v9, :cond_23

    .line 1842
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1843
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1845
    :cond_23
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v3

    .line 1847
    .end local v2    # "result":I
    :goto_27
    return v8

    .restart local v2    # "result":I
    :cond_28
    move v3, v8

    .line 1836
    goto :goto_19

    .line 1837
    .end local v2    # "result":I
    :catch_2a
    move-exception v1

    .line 1838
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3c

    .line 1841
    if-eqz v3, :cond_38

    if-eq v0, v9, :cond_38

    .line 1842
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1843
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1845
    :cond_38
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .line 1841
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v8

    if-eqz v3, :cond_47

    if-eq v0, v9, :cond_47

    .line 1842
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1843
    invoke-direct {p0, v0, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    .line 1845
    :cond_47
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1841
    throw v8
.end method

.method public isApplicationClearCacheDisabled(ILjava/lang/String;IZ)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "showMsg"    # Z

    .prologue
    .line 6414
    const-string v2, "PackageNameClearCacheBlacklist"

    const-string v3, "PackageNameClearCacheWhitelist"

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6415
    const-string v0, "ApplicationPolicy"

    const-string v1, "isApplicationClearCacheDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6416
    if-eqz p4, :cond_1d

    .line 6417
    const v0, 0x1040280

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 6419
    :cond_1d
    const/4 v0, 0x1

    .line 6421
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 6409
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    .line 6410
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(ILjava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public isApplicationClearDataDisabled(ILjava/lang/String;IZ)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "showMsg"    # Z

    .prologue
    .line 6357
    const-string v2, "PackageNameClearDataBlacklist"

    const-string v3, "PackageNameClearDataWhitelist"

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6358
    const-string v0, "ApplicationPolicy"

    const-string v1, "isApplicationClearDataDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6359
    if-eqz p4, :cond_1d

    .line 6360
    const v0, 0x104027f

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 6362
    :cond_1d
    const/4 v0, 0x1

    .line 6364
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 6352
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    .line 6353
    .local v0, "containerId":I
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(ILjava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 5065
    const-string v0, "PackageNameStopBlacklist"

    const-string v1, "PackageNameStopWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5066
    const-string v0, "ApplicationPolicy"

    const-string v1, "isApplicationForceStopDisabled: matches"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    if-eqz p3, :cond_19

    .line 5068
    const v0, 0x104027e

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5070
    :cond_19
    const/4 v0, 0x1

    .line 5072
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2903
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 2904
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2905
    .local v1, "userID":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v2

    return v2
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userID"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2923
    if-gez p3, :cond_3b

    .line 2924
    const/4 v3, 0x0

    .line 2925
    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2926
    .local v4, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_18

    .line 2927
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 2930
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_18
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_39

    .line 2931
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2932
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 2933
    .local v0, "currentUserHandle":I
    invoke-direct {p0, v0, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v7

    if-nez v7, :cond_24

    .line 2941
    .end local v0    # "currentUserHandle":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :goto_38
    return v5

    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_39
    move v5, v6

    .line 2938
    goto :goto_38

    .line 2941
    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_3b
    invoke-direct {p0, p3, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabledInternal(ILjava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v5

    goto :goto_38
.end method

.method public isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1578
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1579
    .local v0, "userId":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isApplicationInstalled(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1582
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalledInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isApplicationRunning(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1615
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

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

.method public isApplicationRunningInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1619
    const/4 v4, -0x1

    .line 1620
    .local v4, "pid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 1621
    .local v9, "userId":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1623
    .local v7, "token":J
    if-eqz p2, :cond_73

    .line 1625
    :try_start_f
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1627
    .local v0, "amgr":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1628
    .local v5, "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 1629
    .local v1, "apkID":I
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationRunningInternal() : apkID =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    if-eqz v5, :cond_73

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_73

    .line 1632
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1633
    .local v6, "runningApplicationInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationRunningInternal() : runningApplicationInfo - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v10, v1, :cond_47

    .line 1635
    iget v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_73} :catch_77

    .line 1645
    .end local v0    # "amgr":Landroid/app/ActivityManager;
    .end local v1    # "apkID":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningApplicationInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_73
    :goto_73
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1646
    return v4

    .line 1640
    :catch_77
    move-exception v2

    .line 1641
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    .line 1642
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73
.end method

.method public isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 6554
    const-string v10, "PackageNameStartBlacklist"

    const-string v11, "PackageNameStartWhitelist"

    invoke-direct {p0, v10, v11, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 6556
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationStartDisabledAsUser ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") : matches"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6559
    move v7, p2

    .line 6564
    .local v7, "targetUserId":I
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 6566
    .local v2, "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 6567
    .local v0, "adminLuid":J
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    .line 6569
    .local v3, "adminUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    if-ne p2, v10, :cond_3d

    .line 6574
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v10, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v6

    .line 6577
    .local v6, "ownerUid":I
    if-eq v6, v3, :cond_63

    .line 6578
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6583
    .end local v0    # "adminLuid":J
    .end local v3    # "adminUid":I
    .end local v6    # "ownerUid":I
    :cond_63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 6584
    .local v8, "token":J
    new-instance v5, Landroid/content/Intent;

    const-string v10, "edm.intent.application.action.prevent.start"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6585
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "application_package_name"

    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6586
    const-string/jumbo v10, "user_id"

    invoke-virtual {v5, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6587
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending broadcast to user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " containing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (packageName), "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (userId)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6589
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v12, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6591
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6592
    const/4 v10, 0x1

    .line 6594
    .end local v2    # "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "targetUserId":I
    .end local v8    # "token":J
    :goto_bb
    return v10

    :cond_bc
    const/4 v10, 0x0

    goto :goto_bb
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2550
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentDisabled start :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const/4 v2, 0x1

    .line 2553
    .local v2, "isIntentEnabled":Z
    if-nez p1, :cond_1e

    .line 2575
    :goto_1d
    return v4

    .line 2558
    :cond_1e
    :try_start_1e
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x200

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2560
    .local v3, "lResolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentDisabled resolve info :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    if-eqz v3, :cond_74

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_74

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_74

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_74

    .line 2566
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 2567
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_73

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_70} :catch_95

    move-result v6

    if-eqz v6, :cond_93

    :cond_73
    move v2, v5

    .line 2574
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v3    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_74
    :goto_74
    const-string v7, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentDisabled return :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_9a

    move v6, v5

    :goto_84
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    if-nez v2, :cond_9c

    :goto_91
    move v4, v5

    goto :goto_1d

    .restart local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v3    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_93
    move v2, v4

    .line 2567
    goto :goto_74

    .line 2570
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v3    # "lResolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_95
    move-exception v1

    .line 2571
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_74

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9a
    move v6, v4

    .line 2574
    goto :goto_84

    :cond_9c
    move v5, v4

    .line 2575
    goto :goto_91
.end method

.method isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aPkgName"    # Ljava/lang/String;
    .param p3, "aManageAppInfoArray"    # [Landroid/app/enterprise/ManagedAppInfo;

    .prologue
    .line 2803
    if-nez p3, :cond_6

    .line 2804
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p3

    .line 2807
    :cond_6
    if-eqz p2, :cond_35

    if-eqz p3, :cond_35

    .line 2808
    move-object v0, p3

    .local v0, "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v3, :cond_35

    aget-object v2, v0, v1

    .line 2809
    .local v2, "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    iget-object v4, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2810
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    .end local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1    # "i$":I
    .end local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .end local v3    # "len$":I
    :goto_31
    return-object v2

    .line 2808
    .restart local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .restart local v3    # "len$":I
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2815
    .end local v0    # "arr$":[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1    # "i$":I
    .end local v2    # "lManagedAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    .end local v3    # "len$":I
    :cond_35
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6078
    const-string v0, "OcspCheck"

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageClipboardAllowed(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 6661
    const-string v0, "PackageNameDisableClipboardBlackList"

    const-string v1, "PackageNameDisableClipboardWhitelist"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPackageInInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6203
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6204
    .local v2, "containerId":I
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isPackageInInstallWhiteList :  pkgName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " containerId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6205
    if-nez p2, :cond_33

    .line 6206
    const-string v13, "ApplicationPolicy"

    const-string v14, "isPackageInInstallWhiteList() Package name is null"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6207
    const/4 v13, 0x0

    .line 6253
    :goto_32
    return v13

    .line 6210
    :cond_33
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6212
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 6213
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string/jumbo v14, "version"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8b

    .line 6214
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 6215
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 6218
    .local v11, "token":J
    :try_start_52
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v14, "persona"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 6221
    .local v9, "pm":Landroid/os/PersonaManager;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v8}, Landroid/os/PersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_63} :catch_68
    .catchall {:try_start_52 .. :try_end_63} :catchall_86

    move-result v13

    .line 6227
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32

    .line 6223
    .end local v9    # "pm":Landroid/os/PersonaManager;
    :catch_68
    move-exception v5

    .line 6224
    .local v5, "e":Ljava/lang/Exception;
    :try_start_69
    const-string v13, "ApplicationPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addPackageToInstallList() - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_86

    .line 6227
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6230
    const/4 v13, 0x0

    goto :goto_32

    .line 6227
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_86
    move-exception v13

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 6233
    .end local v8    # "pid":I
    .end local v11    # "token":J
    :cond_8b
    invoke-static {v2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6235
    if-eqz v7, :cond_d2

    .line 6236
    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v10, v13

    .line 6238
    .local v10, "returnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "WhiteListInstallApps"

    invoke-virtual {v13, v2, v14, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 6241
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_d9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d9

    .line 6242
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_af
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 6243
    .local v3, "cv":Landroid/content/ContentValues;
    if-eqz v3, :cond_af

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-lez v13, :cond_af

    .line 6244
    const-string v13, "packageName"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_af

    .line 6245
    const/4 v13, 0x1

    goto/16 :goto_32

    .line 6251
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "returnColumns":[Ljava/lang/String;
    :cond_d2
    const-string v13, "ApplicationPolicy"

    const-string v14, "Package name is null. Failed to check the package to White list"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6253
    :cond_d9
    const/4 v13, 0x0

    goto/16 :goto_32
.end method

.method public isPackageUpdateAllowed(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 6939
    const-string v1, "PackageNameUpdateBlacklist"

    const-string v2, "PackageNameUpdateWhitelist"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6941
    const-string v1, "ApplicationPolicy"

    const-string v2, "isPackageUpdateAllowed: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6942
    if-eqz p2, :cond_1a

    .line 6943
    const v1, 0x10402b5

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 6947
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6058
    const-string v0, "RevocationCheck"

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarNotificationAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5486
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStatusBarNotificationAllowed: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5487
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 5488
    .local v0, "userId":I
    const-string v1, "PackageNameNotificationBlacklist"

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public isWidgetAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5138
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 381
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 392
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 394
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    .line 395
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationIconDbForUser(I)V

    .line 396
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState()V

    .line 397
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 13
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 6668
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

    .line 6670
    :try_start_28
    const-string v0, "container_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v6

    .line 6674
    .local v6, "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    if-eqz v6, :cond_42

    invoke-interface {v6, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerType(I)I

    move-result v0

    if-nez v0, :cond_42

    .line 6676
    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation() - B2C Container "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6696
    .end local v6    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_41
    :goto_41
    return-void

    .line 6678
    .restart local v6    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_42
    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation() - B2B Container "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_49} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_49} :catch_7f

    .line 6680
    :try_start_49
    const-string v1, ".*"

    const/16 v4, 0x2000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v9

    .line 6682
    .local v9, "result":Z
    const-string v1, ".*"

    const v4, 0x8000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v0

    and-int/2addr v9, v0

    .line 6684
    if-nez v9, :cond_41

    .line 6685
    const-string v0, "ApplicationPolicy"

    const-string v1, "Failed to initialize container"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_6d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_6c} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_6c} :catch_7f

    goto :goto_41

    .line 6687
    .end local v9    # "result":Z
    :catch_6d
    move-exception v7

    .line 6688
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation initialize exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_75} :catch_7f

    goto :goto_41

    .line 6691
    .end local v6    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_76
    move-exception v7

    .line 6692
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "ApplicationPolicy"

    const-string v1, "KNOX : get status exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 6693
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_7f
    move-exception v8

    .line 6694
    .local v8, "e2":Ljava/lang/SecurityException;
    const-string v0, "ApplicationPolicy"

    const-string v1, "KNOX : SecurityException exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 6705
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

    .line 6706
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 6707
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkApplicationsStateToBeReconciled(I)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkComponentsStateToBeReconciled(I)V

    .line 404
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 6700
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

    .line 6701
    return-void
.end method

.method public removeAppNotificationBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5396
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppNotificationWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5419
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppPackageNameFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3970
    const-string v1, "ApplicationPolicy"

    const-string v2, "removeAppPackageNameFromBlackList "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3972
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3973
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3977
    :goto_16
    return v0

    :cond_17
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v2, 0x4

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_16
.end method

.method public removeAppPackageNameFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4035
    const-string v1, "ApplicationPolicy"

    const-string v2, "removeAppPackageNameFromWhiteList"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4036
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4037
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4039
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4043
    :goto_16
    return v0

    :cond_17
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v2, 0x8

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    goto :goto_16
.end method

.method public removeAppPermissionFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPermission"    # Ljava/lang/String;

    .prologue
    .line 3655
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3656
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public removeAppSignatureFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 3740
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3741
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public removeAppSignatureFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 3845
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3846
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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
    .line 1504
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1505
    const/4 v3, 0x0

    .line 1506
    .local v3, "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_35

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_35

    .line 1507
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1508
    .restart local v3    # "removedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1510
    .local v2, "pkg":Ljava/lang/String;
    :try_start_22
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1511
    if-eqz v2, :cond_16

    .line 1512
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 1514
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_16

    .line 1516
    :catch_30
    move-exception v0

    .line 1517
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 1521
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_35
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "x0"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x1"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeManagedApplications(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removePackageFromInstallWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 6263
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6264
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6265
    .local v2, "adminUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6266
    .local v3, "containerId":I
    const-string v1, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePackageFromInstallList :  pkgName: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " containerId: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6267
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39

    .line 6268
    const-string v1, "ApplicationPolicy"

    const-string v4, "removePackageFromInstallWhiteList() Package name is invalid"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6303
    :goto_38
    return v0

    .line 6272
    :cond_39
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6274
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 6275
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 6276
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 6277
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 6280
    .local v10, "token":J
    :try_start_58
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 6282
    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9, p2, v8}, Landroid/os/PersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_65} :catch_6a
    .catchall {:try_start_58 .. :try_end_65} :catchall_84

    .line 6283
    const/4 v0, 0x1

    .line 6289
    .end local v9    # "pm":Landroid/os/PersonaManager;
    :goto_66
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    .line 6285
    :catch_6a
    move-exception v7

    .line 6286
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v1, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackageToInstallList() - "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_84

    goto :goto_66

    .line 6289
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_84
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6295
    .end local v8    # "pid":I
    .end local v10    # "token":J
    :cond_89
    invoke-static {v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6297
    if-eqz v5, :cond_9a

    .line 6298
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_38

    .line 6301
    :cond_9a
    const-string v1, "ApplicationPolicy"

    const-string v4, "Package name is null. Failed to remove the package from White list"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public removePackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6384
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6401
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6327
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6344
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableClipboardBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6628
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardBlackList"

    const/high16 v1, 0x200000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableClipboardWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6642
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameDisableClipboardWhitelist"

    const/high16 v1, 0x400000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromDisableUpdateBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6918
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6919
    const-string v1, "PackageNameUpdateBlacklist"

    const/high16 v2, 0x20000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 6921
    .local v0, "ret":Z
    return v0
.end method

.method public removePackagesFromDisableUpdateWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6896
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6897
    const-string v1, "PackageNameUpdateWhitelist"

    const/high16 v2, 0x40000

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 6899
    .local v0, "ret":Z
    return v0
.end method

.method public removePackagesFromForceStopBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5040
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5057
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromPreventStartBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6538
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStartBlacklist"

    const/high16 v1, 0x80000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5128
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5130
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5131
    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5101
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 5103
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 5104
    return v0
.end method

.method public restoreApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5566
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5567
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5568
    .local v6, "userId":I
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5569
    .local v7, "validPkgName":Ljava/lang/String;
    if-eqz v7, :cond_20

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_20

    if-eqz p3, :cond_20

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    if-nez v8, :cond_22

    .line 5571
    :cond_20
    const/4 v8, -0x2

    .line 5616
    :goto_21
    return v8

    .line 5572
    :cond_22
    iget-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-nez v8, :cond_36

    iget-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-eqz v8, :cond_38

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    if-eqz v8, :cond_38

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 5574
    :cond_36
    const/4 v8, -0x3

    goto :goto_21

    .line 5577
    :cond_38
    :try_start_38
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    .line 5578
    .local v3, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_44} :catch_81

    .line 5584
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v9

    .line 5585
    :try_start_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7e

    move-result-wide v4

    .line 5588
    .local v4, "token":J
    const/4 v8, -0x2

    :try_start_4c
    iput v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    .line 5589
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v8, :cond_8b

    .line 5590
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 5591
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v8, :cond_8b

    .line 5592
    const-string v8, "ApplicationPolicy"

    const-string v10, "failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_69} :catch_d3
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_69} :catch_ea
    .catchall {:try_start_4c .. :try_end_69} :catchall_108

    .line 5593
    const/4 v8, -0x2

    .line 5610
    const/4 v10, 0x0

    :try_start_6b
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5612
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5613
    .local v2, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5614
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5593
    monitor-exit v9

    goto :goto_21

    .line 5617
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catchall_7e
    move-exception v8

    monitor-exit v9
    :try_end_80
    .catchall {:try_start_6b .. :try_end_80} :catchall_7e

    throw v8

    .line 5579
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_81
    move-exception v1

    .line 5580
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v8, "ApplicationPolicy"

    const-string v9, "can\'t read from file descriptor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5581
    const/4 v8, -0x2

    goto :goto_21

    .line 5596
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    .restart local v4    # "token":J
    :cond_8b
    :try_start_8b
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v10, 0x0

    invoke-interface {v8, v10, v7, v6}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;I)Z
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_91} :catch_d3
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_91} :catch_ea
    .catchall {:try_start_8b .. :try_end_91} :catchall_108

    move-result v8

    if-nez v8, :cond_aa

    .line 5597
    const/4 v8, -0x3

    .line 5610
    const/4 v10, 0x0

    :try_start_96
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5612
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5613
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5614
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5597
    monitor-exit v9
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_7e

    goto/16 :goto_21

    .line 5600
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_aa
    const/4 v8, 0x1

    :try_start_ab
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5601
    iput-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 5602
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, p3}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 5603
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_bc
    .catch Ljava/lang/InterruptedException; {:try_start_ab .. :try_end_bc} :catch_d3
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_bc} :catch_ea
    .catchall {:try_start_ab .. :try_end_bc} :catchall_108

    .line 5610
    const/4 v8, 0x0

    :try_start_bd
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5612
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5613
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5614
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5616
    iget v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    monitor-exit v9

    goto/16 :goto_21

    .line 5604
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_d3
    move-exception v0

    .line 5605
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v8, -0x2

    .line 5610
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5612
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5613
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5614
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5605
    monitor-exit v9
    :try_end_e8
    .catchall {:try_start_bd .. :try_end_e8} :catchall_7e

    goto/16 :goto_21

    .line 5606
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_ea
    move-exception v1

    .line 5607
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_eb
    const-string v8, "ApplicationPolicy"

    const-string v10, "Failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_eb .. :try_end_f2} :catchall_108

    .line 5608
    const/4 v8, -0x2

    .line 5610
    const/4 v10, 0x0

    :try_start_f4
    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5612
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5613
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5614
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5608
    monitor-exit v9

    goto/16 :goto_21

    .line 5610
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_108
    move-exception v8

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    .line 5612
    new-instance v2, Landroid/content/Intent;

    const-string v10, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5613
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5614
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5610
    throw v8
    :try_end_11c
    .catchall {:try_start_f4 .. :try_end_11c} :catchall_7e
.end method

.method public setAppInstallToSdCard(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4106
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceOwnerOnlyAndAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4108
    :try_start_5
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4109
    const-string v2, "ApplicationPolicy"

    const-string v3, "setAppInstallToSdCard : External Storage Emulated"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    :goto_12
    return v1

    .line 4112
    :cond_13
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "APPLICATION_GENERAL"

    const-string v5, "installToSdCard"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_20

    move-result v1

    goto :goto_12

    .line 4114
    :catch_20
    move-exception v0

    .line 4115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public setAppInstallationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aInstallationMode"    # I

    .prologue
    .line 2211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2212
    const/4 v0, 0x0

    .line 2214
    .local v0, "bInstallationModeSet":Z
    const/4 v1, 0x1

    if-ne v1, p2, :cond_f

    .line 2216
    const-string v1, ".*"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2224
    :cond_e
    :goto_e
    return v0

    .line 2217
    :cond_f
    if-nez p2, :cond_e

    .line 2219
    const-string v1, ".*"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addAppPackageNameToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method public setApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)Z
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "enableComponent"    # Z

    .prologue
    .line 2005
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2006
    .local v9, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2007
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2008
    .local v4, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2009
    .local v2, "callingUid":I
    const/4 v11, 0x0

    .line 2010
    .local v11, "success":Z
    const-string v1, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setApplicationComponentState :  compName :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " callingUid :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " enableComponent :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2014
    .local v8, "packageName":Ljava/lang/String;
    if-lez v4, :cond_49

    .line 2015
    invoke-static {v4, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2019
    :cond_49
    if-eqz v8, :cond_a7

    .line 2021
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 2022
    const/4 v1, 0x0

    .line 2057
    :goto_52
    return v1

    .line 2024
    :cond_53
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_63

    .line 2025
    const-string v1, "ApplicationPolicy"

    const-string v3, "setApplicationComponentState() : can not disable Admin app"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 2026
    goto :goto_52

    .line 2029
    :cond_63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2032
    .local v12, "token":J
    const/4 v5, 0x1

    if-nez p3, :cond_a9

    const/4 v6, 0x1

    :goto_6b
    move-object v1, p0

    move-object/from16 v3, p2

    :try_start_6e
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationComponentNameControlState(ILandroid/content/ComponentName;IIZ)Z

    .line 2036
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(ILandroid/content/ComponentName;I)Z

    move-result v10

    .line 2037
    .local v10, "state":Z
    const-string v1, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz v10, :cond_ab

    const/4 v1, 0x1

    :goto_99
    const/4 v5, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a3} :catch_ad
    .catchall {:try_start_6e .. :try_end_a3} :catchall_b2

    .line 2041
    const/4 v11, 0x1

    .line 2054
    .end local v10    # "state":Z
    :goto_a4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v12    # "token":J
    :cond_a7
    move v1, v11

    .line 2057
    goto :goto_52

    .line 2032
    .restart local v12    # "token":J
    :cond_a9
    const/4 v6, 0x0

    goto :goto_6b

    .line 2038
    .restart local v10    # "state":Z
    :cond_ab
    const/4 v1, 0x2

    goto :goto_99

    .line 2051
    .end local v10    # "state":Z
    :catch_ad
    move-exception v7

    .line 2052
    .local v7, "e":Ljava/lang/Exception;
    :try_start_ae
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_a4

    .line 2054
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_b2
    move-exception v1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setApplicationInstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 2154
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2155
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 2156
    return-void
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "disableAppInstallation"    # Z
    .param p3, "callingUid"    # I

    .prologue
    .line 2160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2161
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 2162
    return-void
.end method

.method public setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppInstallation"    # Z

    .prologue
    .line 2176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_10

    .line 2177
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2179
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 2180
    return-void
.end method

.method public setApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mode"    # I

    .prologue
    .line 5431
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5432
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 5434
    .local v0, "callingUid":I
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5436
    packed-switch p2, :pswitch_data_56

    .line 5442
    const/4 v1, 0x0

    .line 5455
    :goto_22
    return v1

    .line 5445
    :pswitch_23
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION_MISC"

    const-string v4, "appNotificationMode"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 5450
    .local v1, "status":Z
    if-eqz v1, :cond_3d

    .line 5451
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5454
    :cond_3d
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

    goto :goto_22

    .line 5436
    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enableApp"    # Z

    .prologue
    .line 1944
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1945
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1946
    .local v5, "containerId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1947
    .local v4, "callingUid":I
    const/4 v14, 0x0

    .line 1948
    .local v14, "success":Z
    const-string v2, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setApplicationState :  pkgName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callingUid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enableApp :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1951
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1952
    if-eqz v3, :cond_cb

    .line 1954
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1955
    const-string v2, "ApplicationPolicy"

    const-string v6, " isApplicationInstalled() = false"

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const/4 v2, 0x0

    .line 1992
    :goto_59
    return v2

    .line 1959
    :cond_5a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_6c

    .line 1960
    const-string v2, "ApplicationPolicy"

    const-string v6, "setApplicationState() : can not disable Admin app"

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 1961
    goto :goto_59

    .line 1963
    :cond_6c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1965
    .local v15, "token":J
    const-string v2, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/4 v6, 0x2

    if-nez p3, :cond_cd

    const/4 v7, 0x1

    :goto_8c
    move-object/from16 v2, p0

    :try_start_8e
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    .line 1972
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;I)Z

    move-result v13

    .line 1973
    .local v13, "state":Z
    const-string v2, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz v13, :cond_cf

    const/4 v8, 0x1

    :goto_bd
    const/4 v9, 0x0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_c7} :catch_d1
    .catchall {:try_start_8e .. :try_end_c7} :catchall_d6

    move-result v14

    .line 1989
    .end local v13    # "state":Z
    :goto_c8
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v15    # "token":J
    :cond_cb
    move v2, v14

    .line 1992
    goto :goto_59

    .line 1968
    .restart local v15    # "token":J
    :cond_cd
    const/4 v7, 0x0

    goto :goto_8c

    .line 1974
    .restart local v13    # "state":Z
    :cond_cf
    const/4 v8, 0x2

    goto :goto_bd

    .line 1986
    .end local v13    # "state":Z
    :catch_d1
    move-exception v12

    .line 1987
    .local v12, "e":Ljava/lang/Exception;
    :try_start_d2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_c8

    .line 1989
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_d6
    move-exception v2

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setApplicationStateList(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgList"    # [Ljava/lang/String;
    .param p3, "operation"    # Z

    .prologue
    .line 4789
    const/4 v0, 0x0

    .line 4790
    .local v0, "appStateLst":[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4791
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4792
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4794
    .local v2, "lAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_27

    array-length v4, p2

    if-gez v4, :cond_29

    :cond_27
    move-object v4, v0

    .line 4808
    :goto_28
    return-object v4

    .line 4797
    :cond_29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    array-length v4, p2

    if-ge v1, v4, :cond_58

    .line 4798
    aget-object v4, p2, v1

    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    .line 4799
    .local v3, "ret":Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_55

    .line 4800
    aget-object v4, p2, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4801
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4797
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 4805
    .end local v3    # "ret":Z
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_60

    .line 4806
    const/4 v4, 0x0

    goto :goto_28

    .line 4808
    :cond_60
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_28
.end method

.method public setApplicationUninstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppUninstallation"    # Z

    .prologue
    .line 2365
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2366
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 2367
    return-void
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "disableAppUninstallation"    # Z
    .param p3, "callingUid"    # I

    .prologue
    .line 2371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2372
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 2373
    return-void
.end method

.method public setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disableAppUninstallation"    # Z

    .prologue
    .line 2387
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v0, v1, :cond_10

    .line 2388
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2390
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 2391
    return-void
.end method

.method public setApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uninstallationMode"    # I

    .prologue
    const/4 v4, 0x1

    .line 2292
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2293
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2294
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 2296
    .local v1, "uninstallationModeSet":Z
    if-ne v4, p2, :cond_34

    .line 2298
    const-string v2, ".*"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    .line 2306
    :cond_11
    :goto_11
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

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    return v1

    .line 2300
    :cond_34
    if-nez p2, :cond_11

    .line 2302
    const-string v2, ".*"

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_11
.end method

.method public setAsManagedApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3921
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3923
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3925
    .local v0, "callingUid":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 3940
    :goto_26
    return v3

    .line 3929
    :cond_27
    const/4 v5, 0x1

    :try_start_28
    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 3931
    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    .line 3932
    .local v2, "mAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    if-eqz v2, :cond_42

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_42

    .line 3933
    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 3934
    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_42} :catch_44

    :cond_42
    move v3, v4

    .line 3936
    goto :goto_26

    .line 3938
    .end local v2    # "mAppInfo":Landroid/app/enterprise/ManagedAppInfo;
    :catch_44
    move-exception v1

    .line 3939
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public startApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 4693
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4694
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v18

    .line 4695
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v10

    .line 4696
    .local v10, "ctx":Landroid/content/Context;
    if-nez v10, :cond_29

    .line 4697
    const-string v19, "ApplicationPolicy"

    const-string v20, "Could not create context for current user!"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4698
    const/4 v15, 0x0

    .line 4759
    :cond_28
    :goto_28
    return v15

    .line 4701
    :cond_29
    const/4 v15, 0x0

    .line 4702
    .local v15, "result":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4703
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4704
    if-eqz p2, :cond_28

    .line 4705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4706
    .local v16, "token":J
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 4708
    const-string v19, "PackageNameStartBlacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 4709
    .local v8, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 4712
    .local v13, "options":Landroid/os/Bundle;
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_ea

    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_ea

    .line 4716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4717
    :try_start_60
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v6, v0

    .line 4718
    .local v6, "adminUid":J
    sget-object v19, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 4719
    .local v5, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_e9

    .line 4720
    const-string v19, "PackageNameStartBlacklist"

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 4722
    .local v4, "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_93

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d8

    .line 4724
    :cond_93
    const-string v19, "ApplicationPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Package name "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "is at prevent black list,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " but has not been added by admin "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Prevent this package from starting"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4727
    const/4 v15, 0x0

    monitor-exit v20

    goto/16 :goto_28

    .line 4735
    .end local v4    # "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "adminUid":J
    .end local v15    # "result":Z
    :catchall_d5
    move-exception v19

    :goto_d6
    monitor-exit v20
    :try_end_d7
    .catchall {:try_start_60 .. :try_end_d7} :catchall_d5

    throw v19

    .line 4731
    .restart local v4    # "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v6    # "adminUid":J
    .restart local v15    # "result":Z
    :cond_d8
    :try_start_d8
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_d5

    .line 4732
    .end local v13    # "options":Landroid/os/Bundle;
    .local v14, "options":Landroid/os/Bundle;
    :try_start_dd
    const-string v19, "edm:startedByAdmin"

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_157

    move-object v13, v14

    .line 4735
    .end local v4    # "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "options":Landroid/os/Bundle;
    .restart local v13    # "options":Landroid/os/Bundle;
    :cond_e9
    :try_start_e9
    monitor-exit v20
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_d5

    .line 4740
    .end local v5    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "adminUid":J
    :cond_ea
    if-nez p3, :cond_100

    .line 4741
    :try_start_ec
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f7} :catch_134
    .catchall {:try_start_ec .. :try_end_f7} :catchall_152

    move-result-object v12

    .line 4742
    .local v12, "intent":Landroid/content/Intent;
    if-nez v12, :cond_115

    .line 4743
    const/4 v15, 0x0

    .line 4755
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "result":Z
    :goto_fb
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_28

    .line 4745
    .restart local v15    # "result":Z
    :cond_100
    :try_start_100
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4746
    .restart local v12    # "intent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4747
    .local v9, "cn":Landroid/content/ComponentName;
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4749
    .end local v9    # "cn":Landroid/content/ComponentName;
    :cond_115
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_132} :catch_134
    .catchall {:try_start_100 .. :try_end_132} :catchall_152

    .line 4751
    const/4 v15, 0x1

    goto :goto_fb

    .line 4752
    .end local v12    # "intent":Landroid/content/Intent;
    :catch_134
    move-exception v11

    .line 4753
    .local v11, "e":Ljava/lang/Exception;
    :try_start_135
    const-string v19, "ApplicationPolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "could not start app"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_151
    .catchall {:try_start_135 .. :try_end_151} :catchall_152

    goto :goto_fb

    .line 4755
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_152
    move-exception v19

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .line 4735
    .end local v13    # "options":Landroid/os/Bundle;
    .restart local v4    # "adminBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v6    # "adminUid":J
    .restart local v14    # "options":Landroid/os/Bundle;
    :catchall_157
    move-exception v19

    move-object v13, v14

    .end local v14    # "options":Landroid/os/Bundle;
    .restart local v13    # "options":Landroid/os/Bundle;
    goto/16 :goto_d6
.end method

.method public stopApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4662
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4663
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4665
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 4666
    .local v1, "result":Z
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4667
    if-eqz p2, :cond_26

    .line 4668
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 4669
    const/4 v5, 0x0

    .line 4681
    :goto_16
    return v5

    .line 4671
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4673
    .local v2, "token":J
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p2, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_28
    .catchall {:try_start_1b .. :try_end_22} :catchall_46

    .line 4674
    const/4 v1, 0x1

    .line 4678
    :goto_23
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_26
    move v5, v1

    .line 4681
    goto :goto_16

    .line 4675
    .restart local v2    # "token":J
    :catch_28
    move-exception v0

    .line 4676
    .local v0, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_46

    goto :goto_23

    .line 4678
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_46
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    .line 384
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 385
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    .line 386
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState()V

    .line 387
    return-void
.end method

.method public uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1870
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1871
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public uninstallApplicationBySystem(ILjava/lang/String;Z)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepDataAndCache"    # Z

    .prologue
    .line 1886
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    if-eq v1, v2, :cond_10

    .line 1887
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1889
    :cond_10
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1890
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateDataUsageDb()V
    .registers 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    .line 988
    return-void
.end method

.method public updateWidgetStatus(Landroid/content/ComponentName;I)V
    .registers 13
    .param p1, "cmpName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 5188
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 5191
    .local v1, "ctx":Landroid/content/Context;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5194
    .local v6, "widgetProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5196
    .local v4, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :try_start_13
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders(I)Ljava/util/List;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_2f

    move-result-object v4

    .line 5202
    :goto_19
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 5203
    .local v0, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 5197
    .end local v0    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_2f
    move-exception v2

    .line 5198
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v7, "ApplicationPolicy"

    const-string v8, "Failed to get widget providers"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 5207
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_38
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5210
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5213
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList(I)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5216
    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 5217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5218
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5219
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;Landroid/content/Context;)V

    .line 5221
    .end local v5    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_66
    return-void
.end method

.method public wipeApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1531
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1532
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1533
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 1534
    .local v2, "success":Z
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1535
    if-eqz p2, :cond_54

    .line 1536
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wipeApplicationData : callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1538
    .local v3, "token":J
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wipeApplicationData : Binder.getCallingUid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :try_start_45
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;I)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_50} :catch_55
    .catchall {:try_start_45 .. :try_end_50} :catchall_5b

    move-result v2

    .line 1553
    :goto_51
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1556
    .end local v3    # "token":J
    :cond_54
    return v2

    .line 1549
    .restart local v3    # "token":J
    :catch_55
    move-exception v1

    .line 1550
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1551
    :try_start_57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_51

    .line 1553
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5b
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public writeData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6428
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 6430
    const/16 v16, 0x0

    .line 6431
    .local v16, "retVal":Z
    const/4 v13, 0x0

    .line 6432
    .local v13, "out":Ljava/io/FileOutputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/user/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6435
    .local v8, "destFile":Ljava/lang/String;
    :try_start_3b
    monitor-enter p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_fa
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3c} :catch_10e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3c} :catch_122
    .catchall {:try_start_3b .. :try_end_3c} :catchall_136

    .line 6436
    if-nez p5, :cond_96

    .line 6437
    :try_start_3e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setprop ctl.start createsystemfile:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6438
    .local v4, "command":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6439
    .local v7, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 6440
    .local v6, "commandArray":[Ljava/lang/String;
    move-object v3, v6

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_63
    if-ge v11, v12, :cond_6d

    aget-object v5, v3, v11

    .line 6441
    .local v5, "commandArg":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6440
    add-int/lit8 v11, v11, 0x1

    goto :goto_63

    .line 6444
    .end local v5    # "commandArg":Ljava/lang/String;
    :cond_6d
    new-instance v17, Ljava/lang/ProcessBuilder;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v15

    .line 6446
    .local v15, "process":Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 6448
    const-wide/16 v17, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 6453
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "command":Ljava/lang/String;
    .end local v6    # "commandArray":[Ljava/lang/String;
    .end local v7    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "process":Ljava/lang/Process;
    :cond_96
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6454
    .local v10, "f":Ljava/io/File;
    if-eqz p4, :cond_d7

    .line 6455
    new-instance v14, Ljava/io/FileOutputStream;

    move/from16 v0, p5

    invoke-direct {v14, v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a4
    .catchall {:try_start_3e .. :try_end_a4} :catchall_f7

    .line 6456
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .local v14, "out":Ljava/io/FileOutputStream;
    :try_start_a4
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 6457
    const-string v17, "ApplicationPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes are written to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_a4 .. :try_end_cc} :catchall_142

    move-object v13, v14

    .line 6465
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :cond_cd
    :goto_cd
    const/16 v16, 0x1

    .line 6466
    :try_start_cf
    monitor-exit p0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_f7

    .line 6475
    if-eqz v13, :cond_d6

    .line 6477
    :try_start_d2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_140

    .line 6480
    .end local v10    # "f":Ljava/io/File;
    :goto_d5
    const/4 v13, 0x0

    .line 6484
    :cond_d6
    return v16

    .line 6459
    .restart local v10    # "f":Ljava/io/File;
    :cond_d7
    if-nez p5, :cond_cd

    .line 6460
    :try_start_d9
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 6461
    const-string v17, "ApplicationPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is now removed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd

    .line 6466
    .end local v10    # "f":Ljava/io/File;
    :catchall_f7
    move-exception v17

    :goto_f8
    monitor-exit p0
    :try_end_f9
    .catchall {:try_start_d9 .. :try_end_f9} :catchall_f7

    :try_start_f9
    throw v17
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fa} :catch_fa
    .catch Ljava/lang/InterruptedException; {:try_start_f9 .. :try_end_fa} :catch_10e
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fa} :catch_122
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_136

    .line 6468
    :catch_fa
    move-exception v9

    .line 6469
    .local v9, "e":Ljava/io/IOException;
    :try_start_fb
    const-string v17, "ApplicationPolicy"

    const-string v18, "IOException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_106
    .catchall {:try_start_fb .. :try_end_106} :catchall_136

    .line 6475
    if-eqz v13, :cond_d6

    .line 6477
    :try_start_108
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_10c

    goto :goto_d5

    .line 6478
    :catch_10c
    move-exception v17

    goto :goto_d5

    .line 6470
    .end local v9    # "e":Ljava/io/IOException;
    :catch_10e
    move-exception v9

    .line 6471
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_10f
    const-string v17, "ApplicationPolicy"

    const-string v18, "InterruptedException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11a
    .catchall {:try_start_10f .. :try_end_11a} :catchall_136

    .line 6475
    if-eqz v13, :cond_d6

    .line 6477
    :try_start_11c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_120

    goto :goto_d5

    .line 6478
    :catch_120
    move-exception v17

    goto :goto_d5

    .line 6472
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catch_122
    move-exception v9

    .line 6473
    .local v9, "e":Ljava/lang/Exception;
    :try_start_123
    const-string v17, "ApplicationPolicy"

    const-string v18, "Failed at EnterpriseContainerPolicy API writeData "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12e
    .catchall {:try_start_123 .. :try_end_12e} :catchall_136

    .line 6475
    if-eqz v13, :cond_d6

    .line 6477
    :try_start_130
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_133} :catch_134

    goto :goto_d5

    .line 6478
    :catch_134
    move-exception v17

    goto :goto_d5

    .line 6475
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_136
    move-exception v17

    if-eqz v13, :cond_13d

    .line 6477
    :try_start_139
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13e

    .line 6480
    :goto_13c
    const/4 v13, 0x0

    .line 6475
    :cond_13d
    throw v17

    .line 6478
    :catch_13e
    move-exception v18

    goto :goto_13c

    .restart local v10    # "f":Ljava/io/File;
    :catch_140
    move-exception v17

    goto :goto_d5

    .line 6466
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :catchall_142
    move-exception v17

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto :goto_f8
.end method
