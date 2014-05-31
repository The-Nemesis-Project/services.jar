.class public Lcom/android/server/enterprise/EnterpriseMigrationManager;
.super Ljava/lang/Object;
.source "EnterpriseMigrationManager.java"


# static fields
.field private static final ADMIN_OLD_FIREWALL_PREF:Ljava/lang/String; = "AdminOldFirewallPref"

.field private static final BROWSER_PROXY_TABLE:Ljava/lang/String; = "BROWSER_PROXY"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_SETTINGS_TABLE:Ljava/lang/String; = "ContainerSettings"

.field private static final DEFAULT_ALL_PACKAGES:Ljava/lang/String; = ".*"

.field private static final EMAIL_POLICY_TABLE:Ljava/lang/String; = "ADMIN_REF"

.field private static final KNOX_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.knoxlauncher"

.field public static final NEW_CONTAINER_ID:J = 0x0L

.field private static NEW_CONTAINER_USER_ID:J = 0x0L

.field private static OLD_CONTAINER_ID:J = 0x0L

.field public static final OLD_CONTAINER_USER_ID:J = 0x0L

.field private static final OLD_FIREWALL_STATE:Ljava/lang/String; = "OldFirewallState"

.field private static final PREFIX_OF_CONTAINERIZED_APP:Ljava/lang/String; = "sec_container_1."

.field private static final TAG:Ljava/lang/String; = "EnterpriseMigrationManager"

.field private static final WHITE_LIST_INSTALL_APPS_TABLE:Ljava/lang/String; = "WhiteListInstallApps"

.field private static final deleteOldContainerIDRowTableNames:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

.field private static migrationResult:Z

.field private static final updateAdminUIDTableNames:[Ljava/lang/String;

.field private static final updateDefaultValuesTableNames:[Ljava/lang/String;

.field private static final updatePackageNameTableNames:[Ljava/lang/String;


# instance fields
.field private mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

.field private mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

.field private mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

.field private mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    .line 64
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    .line 72
    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 74
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccountBlackWhiteList"

    aput-object v1, v0, v4

    const-string v1, "ADMIN_REF"

    aput-object v1, v0, v3

    const-string v1, "APPLICATION_COMPONENT"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "APPLICATION_GENERAL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "APPLICATION_MISC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "APPLICATION_PERMISSION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "APPLICATION_SIGNATURE2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BROWSER"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EmailSettingsTable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ExchangeAccountTable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PermAppPrivateKey"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SmartCardAccessTable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SmartCardAccessWhitelistTable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SmartCardBrowserCertAliasTable"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SmartCardBrowserTable"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SmartCardEmailTable"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WebFilterTable"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "WebFilterSettingsTable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    .line 96
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "APPLICATION"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    .line 105
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "RESTRICTION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    .line 110
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "CONTAINER"

    aput-object v1, v0, v4

    const-string v1, "ADMIN"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 142
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    .line 145
    const-string v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    .line 148
    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

    .line 151
    const-string v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 154
    const-string v0, "mum_container_rcp_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/container/IRCPPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/container/IRCPPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

    .line 157
    return-void
.end method

.method private deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 797
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 800
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 801
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_2e

    .line 803
    const/4 v2, 0x1

    .line 810
    :goto_12
    return v2

    .line 804
    :catch_13
    move-exception v1

    .line 805
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_2c
    const/4 v2, 0x0

    goto :goto_12

    .line 806
    :catch_2e
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 9

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 165
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 166
    .local v3, "pid":I
    const-string v2, ""

    .line 168
    .local v2, "packageName":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_68

    move-result-object v2

    .line 172
    :goto_12
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check permission for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "caller":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_42

    if-eqz v0, :cond_42

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 178
    :cond_42
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 179
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Container Migration Permission to calling Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    .end local v0    # "caller":Ljava/lang/String;
    :catch_68
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/String;
    :cond_82
    return-void
.end method

.method private getAdminID()J
    .registers 9

    .prologue
    .line 461
    const-wide/16 v3, -0x1

    .line 463
    .local v3, "result":J
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string/jumbo v5, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 467
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminID"

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 470
    .local v0, "adminIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 471
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_42

    move-result-wide v3

    .line 479
    .end local v0    # "adminIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_38
    :goto_38
    return-wide v3

    .line 473
    :catch_39
    move-exception v2

    .line 474
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getAdminID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 475
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_42
    move-exception v2

    .line 476
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getAdminID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-class v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    if-nez v0, :cond_e

    .line 130
    new-instance v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    .line 132
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNewConatinerAdminUID()J
    .registers 9

    .prologue
    .line 416
    const-wide/16 v2, -0x1

    .line 419
    .local v2, "result":J
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 420
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "containerID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string/jumbo v5, "userID"

    sget-wide v6, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminUid"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 426
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_39

    .line 427
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_38} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_43

    move-result-wide v2

    .line 435
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_39
    :goto_39
    return-wide v2

    .line 429
    :catch_3a
    move-exception v1

    .line 430
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 431
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_43
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method private getOldConatinerAdminUID()J
    .registers 9

    .prologue
    .line 439
    const-wide/16 v2, -0x1

    .line 441
    .local v2, "result":J
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string/jumbo v5, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminUid"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 448
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 449
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_42

    move-result-wide v2

    .line 457
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_38
    :goto_38
    return-wide v2

    .line 451
    :catch_39
    move-exception v1

    .line 452
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 453
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_42
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private getOldContainerID()J
    .registers 9

    .prologue
    .line 483
    const-wide/16 v2, -0x1

    .line 485
    .local v2, "result":J
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 486
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string/jumbo v5, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "containerID"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 492
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 493
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_42

    move-result-wide v2

    .line 501
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_38
    :goto_38
    return-wide v2

    .line 495
    :catch_39
    move-exception v1

    .line 496
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 497
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_42
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private makeDenyRule(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "adminName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 365
    if-eqz p1, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 384
    :cond_9
    :goto_9
    return-object v1

    .line 369
    :cond_a
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 370
    .local v0, "index":I
    move-object v2, p1

    .line 372
    .local v2, "tempPackageName":Ljava/lang/String;
    if-lez v0, :cond_18

    .line 373
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 375
    :cond_18
    if-eqz v0, :cond_9

    .line 378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*:*;*;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "newRule":Ljava/lang/String;
    goto :goto_9
.end method

.method private updateBrowserProxy(Ljava/lang/String;JJ)Z
    .registers 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldAdminUid"    # J
    .param p4, "newAdminUid"    # J

    .prologue
    .line 777
    const/4 v4, 0x1

    .line 778
    .local v4, "ret":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 779
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v5, p4

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 782
    .local v2, "newCxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_d
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 783
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "proxyServer"

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, "proxyServer":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

    invoke-interface {v5, v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->setHttpProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    .line 785
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update BrowserProxy done with retrun : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_3d

    .line 792
    .end local v3    # "proxyServer":Ljava/lang/String;
    :goto_3c
    return v4

    .line 787
    :catch_3d
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string/jumbo v6, "update BrowserProxy could not be executed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v4, 0x0

    goto :goto_3c
.end method

.method private updateContainerSettingsTable(Ljava/lang/String;JJ)Z
    .registers 15
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldAdminUid"    # J
    .param p4, "newAdminUid"    # J

    .prologue
    .line 900
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 902
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x1

    .line 903
    .local v5, "retVal":Z
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v6, p4

    invoke-direct {v2, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 906
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_c
    const-string v6, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 907
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "allowContactInfoToNonKnox"

    invoke-virtual {v6, p1, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 909
    .local v4, "isAllowed":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "Contacts"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

    const-string v7, "knox-export-data"

    invoke-interface {v6, v2, v0, v7, v4}, Lcom/sec/enterprise/knox/container/IRCPPolicy;->setAllowChangeDataSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_30

    move-result v5

    .line 920
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "isAllowed":Z
    :goto_2f
    return v5

    .line 915
    :catch_30
    move-exception v3

    .line 916
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured during updateContainerSettingsTable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/4 v5, 0x0

    goto :goto_2f
.end method

.method private updateDefaultContainerApplications(J)Z
    .registers 16
    .param p1, "adminUid"    # J

    .prologue
    const/4 v9, 0x0

    .line 836
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v5, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v10, p1

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 838
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v7, 0x1

    .line 841
    .local v7, "ret":Z
    :try_start_d
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    move-result-object v10

    sget-wide v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getPackageNames(I)Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_2a

    move-result-object v5

    .line 847
    :goto_1a
    if-eqz v5, :cond_22

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_34

    .line 848
    :cond_22
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "getPackageNames() for Application Table Update returned empty list"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_29
    return v9

    .line 842
    :catch_2a
    move-exception v3

    .line 843
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "getPackageNames() for Application Table Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const/4 v7, 0x0

    goto :goto_1a

    .line 853
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_34
    const-string v9, "com.sec.android.app.knoxlauncher"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    const-string v9, "com.sec.knox.app.container"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_10b

    .line 857
    const-string v10, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 860
    .local v6, "pkgName":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .local v1, "cvWhereValues":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v9, "packageName"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :try_start_7d
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "APPLICATION"

    const-string v11, "controlState"

    invoke-virtual {v9, v10, v11, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 866
    .local v0, "controlState":Landroid/content/ContentValues;
    const-string v9, "controlState"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 868
    .local v8, "state":Ljava/lang/Integer;
    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_91} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_91} :catch_f0

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_9c

    .line 870
    :try_start_96
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v10, 0x0

    invoke-interface {v9, v2, v6, v10}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_96 .. :try_end_9c} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9c} :catch_ba

    .line 856
    .end local v0    # "controlState":Landroid/content/ContentValues;
    .end local v8    # "state":Ljava/lang/Integer;
    :cond_9c
    :goto_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 879
    .restart local v0    # "controlState":Landroid/content/ContentValues;
    .restart local v8    # "state":Ljava/lang/Integer;
    :catch_9f
    move-exception v3

    .line 880
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_a0
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v7, 0x0

    .line 885
    goto :goto_9c

    .line 882
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_ba
    move-exception v3

    .line 883
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_d3} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_d3} :catch_f0

    .line 884
    const/4 v7, 0x0

    goto :goto_9c

    .line 887
    .end local v0    # "controlState":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "state":Ljava/lang/Integer;
    :catch_d5
    move-exception v3

    .line 888
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const/4 v7, 0x0

    .line 893
    goto :goto_9c

    .line 890
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_f0
    move-exception v3

    .line 891
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v7, 0x0

    goto :goto_9c

    .end local v1    # "cvWhereValues":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_10b
    move v9, v7

    .line 896
    goto/16 :goto_29
.end method

.method private updateEmailPolicyPkgName(Ljava/lang/String;J)Z
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldContainerAdminUid"    # J

    .prologue
    .line 814
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 816
    .local v1, "cv2":Landroid/content/ContentValues;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 819
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_f
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 820
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "policyName"

    invoke-virtual {v5, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    .line 821
    .local v4, "oldEmailPkgName":Ljava/lang/String;
    const-string v5, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v5, "policyName"

    invoke-static {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_37} :catch_39
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_37} :catch_54

    .line 825
    const/4 v5, 0x1

    .line 832
    .end local v4    # "oldEmailPkgName":Ljava/lang/String;
    :goto_38
    return v5

    .line 826
    :catch_39
    move-exception v2

    .line 827
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute update() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_52
    const/4 v5, 0x0

    goto :goto_38

    .line 828
    :catch_54
    move-exception v2

    .line 829
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute update() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method private updateFirewallRule(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ContextInfo;I)Z
    .registers 11
    .param p1, "oldCxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "newCxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "action"    # I

    .prologue
    .line 602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v2, "ruleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 604
    .local v1, "ret":Z
    const/4 v3, 0x1

    .line 607
    .local v3, "tempReturn":Z
    :try_start_7
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v4, p1, p3}, Landroid/app/enterprise/IFirewallPolicy;->getRules(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_64

    move-result-object v2

    .line 613
    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_63

    .line 615
    :try_start_13
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v4, p2, v2, p3}, Landroid/app/enterprise/IFirewallPolicy;->addRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v3

    .line 616
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRules() for Firewall Table Update action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3b} :catch_85

    .line 623
    :goto_3b
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v4, p1, v2, p3}, Landroid/app/enterprise/IFirewallPolicy;->removeRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v3

    .line 624
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeRules() for Firewall Table Update action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_63} :catch_a6

    .line 630
    :cond_63
    :goto_63
    return v1

    .line 608
    :catch_64
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRules() for Firewall Table Update action :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be executed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v1, 0x0

    goto :goto_d

    .line 617
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_85
    move-exception v0

    .line 618
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRules() for Firewall Table Update action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be executed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v1, 0x0

    goto :goto_3b

    .line 625
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a6
    move-exception v0

    .line 626
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeRules() for Firewall Table Update action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be executed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v1, 0x0

    goto :goto_63
.end method

.method private updateFirewallTable(JJ)Z
    .registers 16
    .param p1, "oldAdminUid"    # J
    .param p3, "newAdminUid"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 553
    const/4 v4, 0x1

    .line 554
    .local v4, "ret":Z
    const/4 v5, 0x0

    .line 555
    .local v5, "tempReturn":Z
    const/4 v1, 0x0

    .line 557
    .local v1, "isEnable":Z
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    long-to-int v8, p1

    sget-wide v9, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v9, v9

    invoke-direct {v3, v8, v9}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 558
    .local v3, "oldCxtInfo":Landroid/app/enterprise/ContextInfo;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v8, p3

    invoke-direct {v2, v8, v7}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 561
    .local v2, "newCxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_14
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v8, v3}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledRules(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 562
    const-string v8, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEnabledRules(oldCxtInfo) for Firewall Update returned : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_32} :catch_de

    .line 569
    :goto_32
    const/4 v8, 0x2

    invoke-direct {p0, v3, v2, v8}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateFirewallRule(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ContextInfo;I)Z

    move-result v5

    .line 570
    const-string v8, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFirewallRule() for Firewall Table Update DENY rule returned : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    if-eqz v5, :cond_e9

    if-eqz v4, :cond_e9

    move v4, v6

    .line 574
    :goto_55
    invoke-direct {p0, v3, v2, v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateFirewallRule(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ContextInfo;I)Z

    move-result v5

    .line 575
    const-string v8, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFirewallRule() for Firewall Table Update ALLOW rule returned : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    if-eqz v5, :cond_ec

    if-eqz v4, :cond_ec

    move v4, v6

    .line 579
    :goto_77
    invoke-direct {p0, v3, v2, v7}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateFirewallRule(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ContextInfo;I)Z

    move-result v5

    .line 580
    const-string v8, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFirewallRule() for Firewall Table Update Reroute rule returned : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    if-eqz v5, :cond_ee

    if-eqz v4, :cond_ee

    move v4, v6

    .line 584
    :goto_99
    const/4 v8, 0x7

    invoke-direct {p0, v3, v2, v8}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateFirewallRule(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ContextInfo;I)Z

    move-result v5

    .line 585
    const-string v8, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFirewallRule() for Firewall Table Update Redirect exception rule returned : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    if-eqz v5, :cond_f0

    if-eqz v4, :cond_f0

    move v4, v6

    .line 588
    :goto_bc
    if-eqz v1, :cond_dd

    .line 590
    :try_start_be
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mFirewallPolicyService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v7, 0x1

    invoke-interface {v6, v2, v7}, Landroid/app/enterprise/IFirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v5

    .line 591
    const-string v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableRules(true) for Firewall Update returned : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_dd} :catch_f2

    .line 598
    :cond_dd
    :goto_dd
    return v4

    .line 563
    :catch_de
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseMigrationManager"

    const-string v9, "isEnabledRules(oldCxtInfo) for Firewall Update could not be executed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v4, 0x0

    goto/16 :goto_32

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e9
    move v4, v7

    .line 571
    goto/16 :goto_55

    :cond_ec
    move v4, v7

    .line 576
    goto :goto_77

    :cond_ee
    move v4, v7

    .line 581
    goto :goto_99

    :cond_f0
    move v4, v7

    .line 586
    goto :goto_bc

    .line 592
    :catch_f2
    move-exception v0

    .line 593
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseMigrationManager"

    const-string v7, "enableRules(true) for Firewall Update could not be executed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v4, 0x0

    goto :goto_dd
.end method

.method private updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z
    .registers 22
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "updateColumn"    # Ljava/lang/String;
    .param p3, "oldAdminUid"    # J
    .param p5, "newAdminUid"    # J
    .param p7, "oldAdminId"    # J

    .prologue
    .line 638
    const/4 v8, 0x1

    .line 639
    .local v8, "ret":Z
    const/4 v7, 0x1

    .line 642
    .local v7, "result":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-wide/from16 v0, p7

    long-to-int v10, v0

    sget-wide v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v11, v11

    invoke-direct {v5, v10, v11}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 645
    .local v5, "oldCxtInfo":Landroid/app/enterprise/ContextInfo;
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    move-wide/from16 v0, p5

    long-to-int v10, v0

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 649
    .local v4, "newCxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v8, 0x1

    .line 651
    :try_start_1c
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 652
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPackagesFromClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_55

    .line 659
    :goto_3a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5f

    .line 660
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 661
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 659
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 653
    .end local v3    # "i":I
    :catch_55
    move-exception v2

    .line 654
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "getPackagesFromClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v8, 0x0

    goto :goto_3a

    .line 665
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_5f
    :try_start_5f
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 666
    .local v9, "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7d} :catch_104

    .line 672
    .end local v9    # "tempReturn":Z
    :goto_7d
    if-eqz v7, :cond_10f

    if-eqz v8, :cond_10f

    const/4 v7, 0x1

    .line 673
    :goto_82
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 677
    const/4 v8, 0x1

    .line 679
    :try_start_86
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 680
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPackagesFromClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a4} :catch_112

    .line 687
    :goto_a4
    :try_start_a4
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 688
    .restart local v9    # "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c2} :catch_11c

    .line 694
    .end local v9    # "tempReturn":Z
    :goto_c2
    if-eqz v7, :cond_126

    if-eqz v8, :cond_126

    const/4 v7, 0x1

    .line 695
    :goto_c7
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 699
    const/4 v8, 0x1

    .line 701
    :try_start_cb
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 702
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPackagesFromClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_e9} :catch_128

    .line 708
    :goto_e9
    const/4 v3, 0x0

    :goto_ea
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_132

    .line 709
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_101

    .line 710
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 708
    :cond_101
    add-int/lit8 v3, v3, 0x1

    goto :goto_ea

    .line 667
    :catch_104
    move-exception v2

    .line 668
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v8, 0x0

    goto/16 :goto_7d

    .line 672
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_10f
    const/4 v7, 0x0

    goto/16 :goto_82

    .line 681
    :catch_112
    move-exception v2

    .line 682
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "getPackagesFromClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v8, 0x0

    goto :goto_a4

    .line 689
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_11c
    move-exception v2

    .line 690
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v8, 0x0

    goto :goto_c2

    .line 694
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_126
    const/4 v7, 0x0

    goto :goto_c7

    .line 703
    :catch_128
    move-exception v2

    .line 704
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "getPackagesFromClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v8, 0x0

    goto :goto_e9

    .line 713
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_132
    :try_start_132
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 714
    .restart local v9    # "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_150} :catch_1a3

    .line 720
    .end local v9    # "tempReturn":Z
    :goto_150
    if-eqz v7, :cond_1ad

    if-eqz v8, :cond_1ad

    const/4 v7, 0x1

    .line 721
    :goto_155
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 725
    const/4 v8, 0x1

    .line 727
    :try_start_159
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 728
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPackagesFromClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_177} :catch_1af

    .line 735
    :goto_177
    :try_start_177
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 736
    .restart local v9    # "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_195} :catch_1b9

    .line 742
    .end local v9    # "tempReturn":Z
    :goto_195
    if-eqz v7, :cond_1c3

    if-eqz v8, :cond_1c3

    const/4 v7, 0x1

    .line 743
    :goto_19a
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 745
    if-eqz v7, :cond_1c5

    if-eqz v8, :cond_1c5

    const/4 v10, 0x1

    :goto_1a2
    return v10

    .line 715
    :catch_1a3
    move-exception v2

    .line 716
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v8, 0x0

    goto :goto_150

    .line 720
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1ad
    const/4 v7, 0x0

    goto :goto_155

    .line 729
    :catch_1af
    move-exception v2

    .line 730
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "getPackagesFromClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const/4 v8, 0x0

    goto :goto_177

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1b9
    move-exception v2

    .line 738
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/4 v8, 0x0

    goto :goto_195

    .line 742
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1c3
    const/4 v7, 0x0

    goto :goto_19a

    .line 745
    :cond_1c5
    const/4 v10, 0x0

    goto :goto_1a2
.end method

.method private updateTableAdminUid(Ljava/lang/String;JJ)Z
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldContainerAdminUid"    # J
    .param p4, "newContainerAdminUid"    # J

    .prologue
    .line 505
    const-string v3, "ADMIN_REF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateEmailPolicyPkgName(Ljava/lang/String;J)Z

    .line 508
    :cond_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 512
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_15
    const-string v3, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v3, "adminUid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 514
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2c} :catch_49

    .line 516
    const/4 v3, 0x1

    .line 523
    :goto_2d
    return v3

    .line 517
    :catch_2e
    move-exception v1

    .line 518
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_47
    const/4 v3, 0x0

    goto :goto_2d

    .line 519
    :catch_49
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method private updateTableDefaultValues(Ljava/lang/String;JJ)Z
    .registers 13
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldContainerAdminUid"    # J
    .param p4, "newContainerAdminUid"    # J

    .prologue
    .line 527
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 529
    .local v0, "count":I
    const/4 v3, 0x1

    .line 532
    .local v3, "ret":Z
    :try_start_7
    const-string v4, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_15} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_35

    move-result v0

    .line 543
    :goto_16
    if-gtz v0, :cond_50

    move v4, v3

    .line 548
    :goto_19
    return v4

    .line 535
    :catch_1a
    move-exception v2

    .line 536
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute getCount() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const/4 v3, 0x0

    .line 541
    goto :goto_16

    .line 538
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_35
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute getCount() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v3, 0x0

    goto :goto_16

    .line 546
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_50
    const-string v4, "adminUid"

    invoke-direct {p0, p1, v4, p4, p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    .line 548
    if-eqz v3, :cond_60

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v4

    if-eqz v4, :cond_60

    const/4 v4, 0x1

    goto :goto_19

    :cond_60
    const/4 v4, 0x0

    goto :goto_19
.end method

.method private updateWhitelistInstallApp(Ljava/lang/String;JJ)Z
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldAdminUid"    # J
    .param p4, "newAdminUid"    # J

    .prologue
    .line 749
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 750
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x1

    .line 753
    .local v6, "ret":Z
    :try_start_6
    const-string v7, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 754
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "packageName"

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 756
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 757
    .local v5, "pm":Landroid/os/PersonaManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_77

    .line 758
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_6e

    move-result-object v3

    .line 761
    .local v3, "packageName":Ljava/lang/String;
    :try_start_32
    sget-wide v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    long-to-int v7, v7

    invoke-virtual {v5, v3, v7}, Landroid/os/PersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    .line 762
    const-string v7, "EnterpriseMigrationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallWhiteList() for Persona Manager Policy Update for package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_50} :catch_53

    .line 757
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 763
    :catch_53
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    :try_start_54
    const-string v7, "EnterpriseMigrationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallWhiteList() for Application Policy Update could not be executed for package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6c} :catch_6e

    .line 765
    const/4 v6, 0x0

    goto :goto_50

    .line 768
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pm":Landroid/os/PersonaManager;
    :catch_6e
    move-exception v1

    .line 769
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseMigrationManager"

    const-string v8, "addPackageToInstallWhiteList() for Application Policy Update could not be executed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const/4 v6, 0x0

    .line 773
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_77
    return v6
.end method


# virtual methods
.method public blockAdminToReceivePolicy(Z)Z
    .registers 9
    .param p1, "blockAdminConnection"    # Z

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    .line 390
    const/4 v1, 0x1

    .line 392
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 394
    .local v2, "token":J
    if-eqz p1, :cond_33

    .line 396
    :try_start_a
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "migrationState"

    const-string v6, "nok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_18

    move-result v1

    .line 410
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    return v1

    .line 397
    :catch_18
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_NOK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x0

    .line 400
    goto :goto_14

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_33
    :try_start_33
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "migrationState"

    const-string v6, "ok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_3e

    move-result v1

    goto :goto_14

    .line 404
    :catch_3e
    move-exception v0

    .line 405
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_OK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getEnterpriseMigrationResult()Z
    .registers 2

    .prologue
    .line 360
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    return v0
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .registers 27
    .param p1, "newContainerUsedId"    # I

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    .line 185
    const/16 v17, 0x1

    .line 186
    .local v17, "ret":Z
    const/16 v20, 0x1

    .line 188
    .local v20, "tempReturn":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v21

    sput-wide v21, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    .line 189
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v21, v0

    sput-wide v21, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v13

    .line 192
    .local v13, "oldAdminUid":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v11

    .line 193
    .local v11, "newAdminUid":J
    const-string v19, "APPLICATION"

    .line 195
    .local v19, "tableName":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v15, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Landroid/app/enterprise/ContextInfo;

    long-to-int v0, v11

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 202
    .local v8, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_31
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v21, "adminUid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "packageName"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_54} :catch_115
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_54} :catch_121

    move-result-object v15

    .line 215
    .end local v7    # "cv":Landroid/content/ContentValues;
    :goto_55
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_56
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_1aa

    .line 216
    const-string v22, "EnterpriseMigrationManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "check application disabled : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 219
    .local v16, "pkgName":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v5, "cValue":Landroid/content/ContentValues;
    const-string v21, "adminUid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-string v21, "packageName"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "controlState"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 225
    .local v6, "controlState":Landroid/content/ContentValues;
    const-string v21, "controlState"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 227
    .local v18, "state":Ljava/lang/Integer;
    const/16 v21, 0x2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a9 .. :try_end_c8} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c8} :catch_17b

    move-result v22

    and-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_111

    .line 229
    :try_start_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v20

    .line 230
    const-string v21, "EnterpriseMigrationManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setApplicationState(false) for Application Policy Update package name : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " returned : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_111} :catch_12d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d1 .. :try_end_111} :catch_14d

    .line 215
    .end local v6    # "controlState":Landroid/content/ContentValues;
    .end local v18    # "state":Ljava/lang/Integer;
    :cond_111
    :goto_111
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_56

    .line 207
    .end local v5    # "cValue":Landroid/content/ContentValues;
    .end local v10    # "i":I
    .end local v16    # "pkgName":Ljava/lang/String;
    :catch_115
    move-exception v9

    .line 208
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const-string v21, "EnterpriseMigrationManager"

    const-string v22, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/16 v17, 0x0

    .line 213
    goto/16 :goto_55

    .line 210
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_121
    move-exception v9

    .line 211
    .local v9, "e":Ljava/lang/Exception;
    const-string v21, "EnterpriseMigrationManager"

    const-string v22, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v17, 0x0

    goto/16 :goto_55

    .line 231
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "cValue":Landroid/content/ContentValues;
    .restart local v6    # "controlState":Landroid/content/ContentValues;
    .restart local v10    # "i":I
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v18    # "state":Ljava/lang/Integer;
    :catch_12d
    move-exception v9

    .line 232
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_12e
    const-string v21, "EnterpriseMigrationManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setApplicationState(false) for Application Policy Update could not be executed for package name : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12e .. :try_end_14a} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_14a} :catch_17b

    .line 233
    const/16 v17, 0x0

    goto :goto_111

    .line 236
    .end local v6    # "controlState":Landroid/content/ContentValues;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v18    # "state":Ljava/lang/Integer;
    :catch_14d
    move-exception v9

    .line 237
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const-string v21, "EnterpriseMigrationManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "could not execute getValue() for tablename : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " package name : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/16 v17, 0x0

    .line 242
    goto :goto_111

    .line 239
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_17b
    move-exception v9

    .line 240
    .local v9, "e":Ljava/lang/Exception;
    const-string v21, "EnterpriseMigrationManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "could not execute getValue() for tablename : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " package name : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/16 v17, 0x0

    goto/16 :goto_111

    .line 247
    .end local v5    # "cValue":Landroid/content/ContentValues;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "pkgName":Ljava/lang/String;
    :cond_1aa
    const/4 v10, 0x0

    :goto_1ab
    sget-object v21, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_200

    .line 248
    sget-object v21, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v21, v21, v10

    const-string v22, "containerID"

    sget-wide v23, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v20

    .line 249
    const-string v21, "EnterpriseMigrationManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deleteTableRow() for TableName : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v23, v23, v10

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " returned : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz v17, :cond_1fd

    if-eqz v20, :cond_1fd

    const/16 v17, 0x1

    .line 247
    :goto_1fa
    add-int/lit8 v10, v10, 0x1

    goto :goto_1ab

    .line 250
    :cond_1fd
    const/16 v17, 0x0

    goto :goto_1fa

    .line 253
    :cond_200
    return v17
.end method

.method public migrateEnterpriseDB(IZ)J
    .registers 25
    .param p1, "newContainerUsedId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    .line 261
    const/16 v18, 0x0

    .line 262
    .local v18, "i":I
    const/16 v19, 0x1

    .line 264
    .local v19, "ret":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    .line 265
    move/from16 v0, p1

    int-to-long v1, v0

    sput-wide v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v3

    .line 268
    .local v3, "oldContainerAdminUid":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v5

    .line 269
    .local v5, "newContainerAdminUid":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getAdminID()J

    move-result-wide v14

    .line 271
    .local v14, "adminId":J
    new-instance v16, Landroid/app/enterprise/ContextInfo;

    long-to-int v1, v5

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 273
    .local v16, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 275
    .local v20, "token":J
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v1, :cond_4d

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_4d

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-lez v1, :cond_4d

    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_4d

    sget-wide v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_4d

    if-nez v16, :cond_a8

    .line 277
    :cond_4d
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in Enterprise Container migration "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a2} :catch_263
    .catchall {:try_start_2b .. :try_end_a2} :catchall_283

    .line 281
    const-wide/16 v5, -0x1

    .line 353
    .end local v5    # "newContainerAdminUid":J
    :cond_a4
    :goto_a4
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    return-wide v5

    .line 283
    .restart local v5    # "newContainerAdminUid":J
    :cond_a8
    const/4 v1, 0x1

    :try_start_a9
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 285
    if-eqz p2, :cond_28f

    .line 287
    const/16 v18, 0x0

    :goto_af
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_f7

    .line 288
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v2, v1, v18

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableDefaultValues(Ljava/lang/String;JJ)Z

    move-result v19

    .line 289
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTableDefaultValues() for TableName : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v7, v7, v18

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz v19, :cond_f5

    sget-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v1, :cond_f5

    const/4 v1, 0x1

    :goto_f0
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 287
    add-int/lit8 v18, v18, 0x1

    goto :goto_af

    .line 290
    :cond_f5
    const/4 v1, 0x0

    goto :goto_f0

    .line 292
    :cond_f7
    if-eqz v19, :cond_103

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v2}, Landroid/app/enterprise/IRestrictionPolicy;->setScreenCapture(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 297
    :cond_103
    const/16 v18, 0x0

    :goto_105
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_14d

    .line 298
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v2, v1, v18

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v19

    .line 299
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTableAdminUid() for TableName : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v7, v7, v18

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz v19, :cond_14b

    sget-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v1, :cond_14b

    const/4 v1, 0x1

    :goto_146
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 297
    add-int/lit8 v18, v18, 0x1

    goto :goto_105

    .line 300
    :cond_14b
    const/4 v1, 0x0

    goto :goto_146

    .line 304
    :cond_14d
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateFirewallTable(JJ)Z

    move-result v19

    .line 305
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFirewallTable() for TableName : FirewallTable returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-eqz v19, :cond_1ba

    sget-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v1, :cond_1ba

    const/4 v1, 0x1

    :goto_175
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 309
    const/16 v18, 0x0

    :goto_179
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_1bc

    .line 310
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v8, v1, v18

    const-string v9, "packageName"

    move-object/from16 v7, p0

    move-wide v10, v3

    move-wide v12, v5

    invoke-direct/range {v7 .. v15}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z

    move-result v19

    .line 311
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePkgNameInApplicationTable() for TableName : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v7, v7, v18

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    add-int/lit8 v18, v18, 0x1

    goto :goto_179

    .line 306
    :cond_1ba
    const/4 v1, 0x0

    goto :goto_175

    .line 315
    :cond_1bc
    const-string v2, "WhiteListInstallApps"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateWhitelistInstallApp(Ljava/lang/String;JJ)Z

    move-result v19

    .line 316
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWhitelistInstallApp() for TableName : WhiteListInstallApps returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-eqz v19, :cond_288

    sget-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v1, :cond_288

    const/4 v1, 0x1

    :goto_1e6
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 320
    const-string v2, "BROWSER_PROXY"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateBrowserProxy(Ljava/lang/String;JJ)Z

    move-result v19

    .line 321
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateBrowserProxy() for TableName : BROWSER_PROXY returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-eqz v19, :cond_28b

    sget-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v1, :cond_28b

    const/4 v1, 0x1

    :goto_212
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 325
    const-string v2, "ContainerSettings"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateContainerSettingsTable(Ljava/lang/String;JJ)Z

    move-result v19

    .line 326
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateContainerSettingsTable() for TableName : ContainerSettings returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz v19, :cond_28d

    sget-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz v1, :cond_28d

    const/4 v1, 0x1

    :goto_23e
    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 330
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v19

    .line 331
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_261} :catch_263
    .catchall {:try_start_a9 .. :try_end_261} :catchall_283

    goto/16 :goto_a4

    .line 349
    :catch_263
    move-exception v17

    .line 350
    .local v17, "e":Ljava/lang/Exception;
    :try_start_264
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Some unknown exception occured in enterprise DB migration!!! "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_281
    .catchall {:try_start_264 .. :try_end_281} :catchall_283

    goto/16 :goto_a4

    .line 353
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_283
    move-exception v1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 317
    :cond_288
    const/4 v1, 0x0

    goto/16 :goto_1e6

    .line 322
    :cond_28b
    const/4 v1, 0x0

    goto :goto_212

    .line 327
    :cond_28d
    const/4 v1, 0x0

    goto :goto_23e

    .line 336
    :cond_28f
    :try_start_28f
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v19

    .line 337
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/16 v18, 0x0

    :goto_2b2
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    array-length v1, v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_a4

    .line 342
    sget-object v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v1, v1, v18

    const-string v2, "containerID"

    sget-wide v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    .line 343
    const-string v1, "EnterpriseMigrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteTableRow() for TableName : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v7, v7, v18

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " returned : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v7, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_2f1} :catch_263
    .catchall {:try_start_28f .. :try_end_2f1} :catchall_283

    .line 341
    add-int/lit8 v18, v18, 0x1

    goto :goto_2b2
.end method

.method removePrefixPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 634
    const-string v0, "sec_container_1."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
