.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Landroid/app/enterprise/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DEACTIVATE_LICENSE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field private static final MY_PID:I

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyDeactivateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 92
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 93
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    .line 97
    return-void
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1430
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "pkgName"

    aput-object v2, v0, v3

    .line 1433
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 1436
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private enforcePermission()V
    .registers 4

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_9

    .line 106
    :goto_8
    return-void

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_LICENSE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1416
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
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
    .line 1112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1113
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_14

    .line 1114
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1117
    :cond_14
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1118
    :cond_20
    const/4 v4, 0x0

    .line 1137
    :cond_21
    :goto_21
    return-object v4

    .line 1120
    :cond_22
    const/4 v5, 0x0

    .line 1121
    .local v5, "ro":Landroid/app/enterprise/license/RightsObject;
    const/4 v4, 0x0

    .line 1123
    .local v4, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_24
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string v8, "pkgName"

    const-string v9, "rightsObject"

    invoke-virtual {v6, v7, v8, p0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1127
    .local v1, "blob":[B
    if-eqz v1, :cond_21

    .line 1128
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v5, v0

    .line 1129
    if-eqz v5, :cond_21

    .line 1130
    invoke-virtual {v5}, Landroid/app/enterprise/license/RightsObject;->getPermissions()Ljava/util/List;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_41

    move-result-object v4

    goto :goto_21

    .line 1133
    .end local v1    # "blob":[B
    :catch_41
    move-exception v3

    .line 1134
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "getPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1421
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1422
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1423
    .local v0, "blob":[B
    const-string v3, "rightsObject"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1424
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1425
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .registers 9

    .prologue
    .line 1366
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-eq v6, v7, :cond_10

    .line 1367
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1371
    :cond_10
    const/4 v6, 0x1

    :try_start_11
    new-array v0, v6, [Ljava/lang/String;

    .line 1372
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "pkgName"

    aput-object v7, v0, v6

    .line 1374
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1377
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_6e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 1378
    const/4 v1, 0x0

    .line 1379
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 1380
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1382
    .local v3, "it":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1383
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1384
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "pkgName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1386
    if-eqz v4, :cond_2f

    .line 1387
    const-string v6, "EnterpriseLicenseService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_61} :catch_62

    goto :goto_2f

    .line 1393
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_62
    move-exception v2

    .line 1394
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "updateAdminPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1397
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6e
    return-void
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 861
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 862
    .local v7, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 864
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_5e

    move-result-wide v5

    .line 867
    .local v5, "token":J
    if-nez p3, :cond_27

    .line 868
    :try_start_f
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 884
    :cond_13
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v9, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 885
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "KLM activation is already in process."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_97
    .catchall {:try_start_f .. :try_end_22} :catchall_cd

    .line 908
    :try_start_22
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_5e

    .line 921
    :goto_25
    monitor-exit p0

    return-void

    .line 871
    :cond_27
    :try_start_27
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 872
    .local v3, "pkgs":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 874
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.knox_license.status"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.knox_license.status"

    const-string v10, "fail"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v9, "edm.intent.extra.knox_license.errorcode"

    const/16 v10, 0xcc

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5a} :catch_97
    .catchall {:try_start_27 .. :try_end_5a} :catchall_cd

    .line 908
    :try_start_5a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_25

    .line 861
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pkgs":[Ljava/lang/String;
    .end local v5    # "token":J
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    :catchall_5e
    move-exception v9

    monitor-exit p0

    throw v9

    .line 889
    .restart local v5    # "token":J
    .restart local v7    # "uid":I
    .restart local v8    # "userId":I
    :cond_61
    :try_start_61
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v9, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.knox_license.registration.internal"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v2, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const-string v9, "persona"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v4

    .line 897
    .local v4, "pms":Landroid/os/IPersonaManager;
    if-eqz v4, :cond_91

    invoke-interface {v4, v8}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 898
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 902
    .local v0, "dest":Landroid/os/UserHandle;
    :goto_86
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v9, v2, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8d} :catch_97
    .catchall {:try_start_61 .. :try_end_8d} :catchall_cd

    .line 908
    :try_start_8d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_5e

    goto :goto_25

    .line 900
    .end local v0    # "dest":Landroid/os/UserHandle;
    :cond_91
    :try_start_91
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_96} :catch_97
    .catchall {:try_start_91 .. :try_end_96} :catchall_cd

    .restart local v0    # "dest":Landroid/os/UserHandle;
    goto :goto_86

    .line 904
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pms":Landroid/os/IPersonaManager;
    :catch_97
    move-exception v1

    .line 905
    .local v1, "e":Ljava/lang/Exception;
    :try_start_98
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "activateKnoxLicense() failed."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_cd

    .line 908
    :try_start_a2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.knox_license.status"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 913
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.knox_license.status"

    const-string v10, "fail"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const-string v9, "edm.intent.extra.knox_license.errorcode"

    const/16 v10, 0x12d

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 919
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 920
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_25

    .line 908
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_cd
    move-exception v9

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_d2
    .catchall {:try_start_a2 .. :try_end_d2} :catchall_5e
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 931
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 932
    .local v6, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 934
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_5d

    move-result-wide v4

    .line 936
    .local v4, "token":J
    :try_start_d
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v8, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 937
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "KLM activation for UMC is already in process."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_66
    .catchall {:try_start_d .. :try_end_1c} :catchall_9d

    .line 962
    :try_start_1c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_5d

    .line 975
    :goto_1f
    monitor-exit p0

    return-void

    .line 941
    :cond_21
    :try_start_21
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 942
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v8, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.knox_license.registration.internal_umc"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v2, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v8, "persona"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v3

    .line 950
    .local v3, "pms":Landroid/os/IPersonaManager;
    if-eqz v3, :cond_60

    invoke-interface {v3, v7}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 951
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 955
    .local v0, "dest":Landroid/os/UserHandle;
    :goto_52
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v8, v2, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_59} :catch_66
    .catchall {:try_start_21 .. :try_end_59} :catchall_9d

    .line 962
    :try_start_59
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_1f

    .line 931
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pms":Landroid/os/IPersonaManager;
    .end local v4    # "token":J
    .end local v6    # "uid":I
    .end local v7    # "userId":I
    :catchall_5d
    move-exception v8

    monitor-exit p0

    throw v8

    .line 953
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "pms":Landroid/os/IPersonaManager;
    .restart local v4    # "token":J
    .restart local v6    # "uid":I
    .restart local v7    # "userId":I
    :cond_60
    :try_start_60
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_9d

    .restart local v0    # "dest":Landroid/os/UserHandle;
    goto :goto_52

    .line 958
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pms":Landroid/os/IPersonaManager;
    :catch_66
    move-exception v1

    .line 959
    .local v1, "e":Ljava/lang/Exception;
    :try_start_67
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "activateKnoxLicenseForUMC() failed."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_9d

    .line 962
    :try_start_71
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_74
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.knox_license.status"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "edm.intent.extra.knox_license.status"

    const-string v9, "fail"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    const-string v8, "edm.intent.extra.knox_license.errorcode"

    const/16 v9, 0x12d

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    const-string v8, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 973
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 974
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 962
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_9d
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_a2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a5
    .catchall {:try_start_71 .. :try_end_a5} :catchall_5d

    goto :goto_74
.end method

.method public declared-synchronized activateLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 734
    monitor-enter p0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 735
    .local v12, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 737
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_6c

    move-result-wide v10

    .line 739
    .local v10, "token":J
    if-nez p3, :cond_2d

    .line 740
    :try_start_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 756
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6f

    .line 757
    const-string v14, "EnterpriseLicenseService"

    const-string v15, "ELM activation is already in process."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_c8
    .catchall {:try_start_f .. :try_end_28} :catchall_102

    .line 785
    :try_start_28
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_6c

    .line 797
    :goto_2b
    monitor-exit p0

    return-void

    .line 743
    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 744
    .local v7, "pkgs":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 746
    new-instance v5, Landroid/content/Intent;

    const-string v14, "edm.intent.action.license.status"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 747
    .local v5, "intent":Landroid/content/Intent;
    const-string v14, "edm.intent.extra.license.status"

    const-string v15, "fail"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v14, "edm.intent.extra.license.errorcode"

    const/16 v15, 0xcc

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v5, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_68} :catch_c8
    .catchall {:try_start_2d .. :try_end_68} :catchall_102

    .line 785
    :try_start_68
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_2b

    .line 734
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "pkgs":[Ljava/lang/String;
    .end local v10    # "token":J
    .end local v12    # "uid":I
    .end local v13    # "userId":I
    :catchall_6c
    move-exception v14

    monitor-exit p0

    throw v14

    .line 762
    .restart local v10    # "token":J
    .restart local v12    # "uid":I
    .restart local v13    # "userId":I
    :cond_6f
    :try_start_6f
    const-string v14, "package"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 763
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v8, v0, v14, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 764
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 765
    .local v6, "pkgVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    new-instance v5, Landroid/content/Intent;

    const-string v14, "edm.intent.action.license.registration.internal"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v14, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p3

    invoke-virtual {v5, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v14, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v5, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v14, "persona"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v9

    .line 774
    .local v9, "pms":Landroid/os/IPersonaManager;
    if-eqz v9, :cond_c2

    invoke-interface {v9, v13}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v14

    if-eqz v14, :cond_c2

    .line 775
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 779
    .local v2, "dest":Landroid/os/UserHandle;
    :goto_b4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v14, v5, v2, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_bd} :catch_c8
    .catchall {:try_start_6f .. :try_end_bd} :catchall_102

    .line 785
    :try_start_bd
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_6c

    goto/16 :goto_2b

    .line 777
    .end local v2    # "dest":Landroid/os/UserHandle;
    :cond_c2
    :try_start_c2
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v13}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c7} :catch_c8
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_102

    .restart local v2    # "dest":Landroid/os/UserHandle;
    goto :goto_b4

    .line 781
    .end local v2    # "dest":Landroid/os/UserHandle;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pkgVersion":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/IPackageManager;
    .end local v9    # "pms":Landroid/os/IPersonaManager;
    :catch_c8
    move-exception v3

    .line 782
    .local v3, "e":Ljava/lang/Exception;
    :try_start_c9
    const-string v14, "EnterpriseLicenseService"

    const-string v15, "activateLicense() failed."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_102

    .line 785
    :try_start_d3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 789
    new-instance v5, Landroid/content/Intent;

    const-string v14, "edm.intent.action.license.status"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v14, "edm.intent.extra.license.status"

    const-string v15, "fail"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v14, "edm.intent.extra.license.errorcode"

    const/16 v15, 0x12d

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v5, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 796
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2b

    .line 785
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "intent":Landroid/content/Intent;
    :catchall_102
    move-exception v14

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
    :try_end_107
    .catchall {:try_start_d3 .. :try_end_107} :catchall_6c
.end method

.method public declared-synchronized activateLicenseForUMC(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVersion"    # Ljava/lang/String;

    .prologue
    .line 806
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 807
    .local v6, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 809
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_62

    move-result-wide v4

    .line 811
    .local v4, "token":J
    :try_start_d
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v8, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 812
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "ELM activation for UMC is already in process."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_6b
    .catchall {:try_start_d .. :try_end_1c} :catchall_a3

    .line 838
    :try_start_1c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_62

    .line 850
    :goto_1f
    monitor-exit p0

    return-void

    .line 816
    :cond_21
    :try_start_21
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 817
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v8, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.license.registration.internal_umc"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v2, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v8, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v2, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v8, "persona"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v3

    .line 826
    .local v3, "pms":Landroid/os/IPersonaManager;
    if-eqz v3, :cond_65

    invoke-interface {v3, v7}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 827
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 831
    .local v0, "dest":Landroid/os/UserHandle;
    :goto_57
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v8, v2, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5e} :catch_6b
    .catchall {:try_start_21 .. :try_end_5e} :catchall_a3

    .line 838
    :try_start_5e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_1f

    .line 806
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pms":Landroid/os/IPersonaManager;
    .end local v4    # "token":J
    .end local v6    # "uid":I
    .end local v7    # "userId":I
    :catchall_62
    move-exception v8

    monitor-exit p0

    throw v8

    .line 829
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "pms":Landroid/os/IPersonaManager;
    .restart local v4    # "token":J
    .restart local v6    # "uid":I
    .restart local v7    # "userId":I
    :cond_65
    :try_start_65
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_6b
    .catchall {:try_start_65 .. :try_end_6a} :catchall_a3

    .restart local v0    # "dest":Landroid/os/UserHandle;
    goto :goto_57

    .line 834
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pms":Landroid/os/IPersonaManager;
    :catch_6b
    move-exception v1

    .line 835
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "activateLicenseForUMC() failed."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_a3

    .line 838
    :try_start_76
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 842
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_79
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.license.status"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "edm.intent.extra.license.status"

    const-string v9, "fail"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v8, "edm.intent.extra.license.errorcode"

    const/16 v9, 0x12d

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 846
    const-string v8, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 848
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 849
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1f

    .line 838
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_a3
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_a8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ab
    .catchall {:try_start_76 .. :try_end_ab} :catchall_62

    goto :goto_79
.end method

.method public declared-synchronized deActivateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 986
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v10, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 989
    .local v7, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 991
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_66

    move-result-wide v5

    .line 994
    .local v5, "token":J
    if-nez p3, :cond_2f

    .line 995
    :try_start_17
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 1010
    :cond_1b
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v9, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 1011
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "KLM de-activation is already in process."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_9f
    .catchall {:try_start_17 .. :try_end_2a} :catchall_d5

    .line 1034
    :try_start_2a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_66

    .line 1047
    :goto_2d
    monitor-exit p0

    return-void

    .line 997
    :cond_2f
    :try_start_2f
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 998
    .local v3, "pkgs":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 1000
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.knox_license.deactivation.internal"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.knox_license.status"

    const-string v10, "fail"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    const-string v9, "edm.intent.extra.knox_license.errorcode"

    const/16 v10, 0xcc

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1004
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_62} :catch_9f
    .catchall {:try_start_2f .. :try_end_62} :catchall_d5

    .line 1034
    :try_start_62
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_2d

    .line 986
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pkgs":[Ljava/lang/String;
    .end local v5    # "token":J
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    :catchall_66
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1015
    .restart local v5    # "token":J
    .restart local v7    # "uid":I
    .restart local v8    # "userId":I
    :cond_69
    :try_start_69
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v9, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.knox_license.deactivation.internal"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v2, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const-string v9, "persona"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v4

    .line 1023
    .local v4, "pms":Landroid/os/IPersonaManager;
    if-eqz v4, :cond_99

    invoke-interface {v4, v8}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 1024
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1028
    .local v0, "dest":Landroid/os/UserHandle;
    :goto_8e
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v9, v2, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_95} :catch_9f
    .catchall {:try_start_69 .. :try_end_95} :catchall_d5

    .line 1034
    :try_start_95
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_66

    goto :goto_2d

    .line 1026
    .end local v0    # "dest":Landroid/os/UserHandle;
    :cond_99
    :try_start_99
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9e} :catch_9f
    .catchall {:try_start_99 .. :try_end_9e} :catchall_d5

    .restart local v0    # "dest":Landroid/os/UserHandle;
    goto :goto_8e

    .line 1030
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pms":Landroid/os/IPersonaManager;
    :catch_9f
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a0
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "deActivateKnoxLicense() failed."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_d5

    .line 1034
    :try_start_aa
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1038
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.knox_license.status"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.knox_license.status"

    const-string v10, "fail"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v9, "edm.intent.extra.knox_license.errorcode"

    const/16 v10, 0x12d

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1042
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1045
    iget-object v9, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1046
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2d

    .line 1034
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_d5
    move-exception v9

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_da
    .catchall {:try_start_aa .. :try_end_da} :catchall_66
.end method

.method public declared-synchronized deActivateKnoxLicenseForUMC(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1060
    .local v6, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1062
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_65

    move-result-wide v4

    .line 1065
    .local v4, "token":J
    :try_start_15
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v8, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1066
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "KLM de-activation for UMC is already in process."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_6e
    .catchall {:try_start_15 .. :try_end_24} :catchall_a5

    .line 1091
    :try_start_24
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_65

    .line 1104
    :goto_27
    monitor-exit p0

    return-void

    .line 1070
    :cond_29
    :try_start_29
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 1071
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v8, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.knox_license.deactivation.internal"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v2, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const-string v8, "persona"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v3

    .line 1079
    .local v3, "pms":Landroid/os/IPersonaManager;
    if-eqz v3, :cond_68

    invoke-interface {v3, v7}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 1080
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1084
    .local v0, "dest":Landroid/os/UserHandle;
    :goto_5a
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v8, v2, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_61} :catch_6e
    .catchall {:try_start_29 .. :try_end_61} :catchall_a5

    .line 1091
    :try_start_61
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_27

    .line 1057
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pms":Landroid/os/IPersonaManager;
    .end local v4    # "token":J
    .end local v6    # "uid":I
    .end local v7    # "userId":I
    :catchall_65
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1082
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "pms":Landroid/os/IPersonaManager;
    .restart local v4    # "token":J
    .restart local v6    # "uid":I
    .restart local v7    # "userId":I
    :cond_68
    :try_start_68
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_6e
    .catchall {:try_start_68 .. :try_end_6d} :catchall_a5

    .restart local v0    # "dest":Landroid/os/UserHandle;
    goto :goto_5a

    .line 1087
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pms":Landroid/os/IPersonaManager;
    :catch_6e
    move-exception v1

    .line 1088
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6f
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "deActivateKnoxLicenseForUMC() failed."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_6f .. :try_end_79} :catchall_a5

    .line 1091
    :try_start_79
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7c
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.knox_license.status"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "edm.intent.extra.knox_license.status"

    const-string v9, "fail"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v8, "edm.intent.extra.knox_license.errorcode"

    const/16 v9, 0x12d

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    const-string v8, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1102
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1103
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .line 1091
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_a5
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_aa
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ad
    .catchall {:try_start_79 .. :try_end_ad} :catchall_65

    goto :goto_7c
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    .registers 12
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;

    .prologue
    const/4 v5, 0x0

    .line 572
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 574
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 607
    :cond_10
    :goto_10
    return v5

    .line 579
    :cond_11
    const/4 v3, 0x0

    .line 581
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_12
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 582
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "instanceId"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v0, "pkgName"

    .line 585
    .local v0, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 588
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_3c

    .line 589
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "deleteApiCallData(): result is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_10

    .line 602
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_30
    move-exception v2

    .line 603
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "deleteApiCallData() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 593
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_3c
    :try_start_3c
    const-string v6, "pkgName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 595
    if-nez v3, :cond_4c

    .line 596
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "deleteApiCallData(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 601
    :cond_4c
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4f} :catch_30

    move-result v5

    goto :goto_10
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .registers 13
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1232
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1233
    const/4 v5, 0x0

    .line 1234
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1236
    .local v6, "token":J
    if-eqz p1, :cond_15

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_38
    .catchall {:try_start_b .. :try_end_12} :catchall_58

    move-result v9

    if-eqz v9, :cond_19

    .line 1268
    :cond_15
    :goto_15
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1270
    :goto_18
    return v8

    .line 1239
    :cond_19
    const/4 v3, 0x0

    .line 1241
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1242
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "instanceId"

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v0, "pkgName"

    .line 1245
    .local v0, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1247
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_48

    .line 1248
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "deleteLicense(): result is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_37} :catch_38
    .catchall {:try_start_1a .. :try_end_37} :catchall_58

    goto :goto_15

    .line 1264
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_38
    move-exception v2

    .line 1265
    .local v2, "e":Ljava/lang/Exception;
    :try_start_39
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "deleteLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_58

    .line 1268
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v5

    .line 1270
    goto :goto_18

    .line 1252
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_48
    :try_start_48
    const-string v9, "pkgName"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    if-nez v3, :cond_5d

    .line 1255
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_57} :catch_38
    .catchall {:try_start_48 .. :try_end_57} :catchall_58

    goto :goto_15

    .line 1268
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catchall_58
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1259
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_5d
    :try_start_5d
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1260
    if-eqz v5, :cond_43

    .line 1262
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_38
    .catchall {:try_start_5d .. :try_end_68} :catchall_58

    goto :goto_43
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1280
    const/4 v1, 0x0

    .line 1281
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1283
    .local v2, "token":J
    if-eqz p1, :cond_14

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_29
    .catchall {:try_start_a .. :try_end_11} :catchall_32

    move-result v4

    if-eqz v4, :cond_19

    .line 1284
    :cond_14
    const/4 v4, 0x0

    .line 1294
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1296
    :goto_18
    return v4

    .line 1286
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1287
    if-eqz v1, :cond_24

    .line 1289
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_29
    .catchall {:try_start_19 .. :try_end_24} :catchall_32

    .line 1294
    :cond_24
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 1296
    goto :goto_18

    .line 1291
    :catch_29
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_24

    .line 1294
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    .registers 16

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 689
    const/4 v7, 0x0

    .line 690
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    const/4 v5, 0x0

    .line 693
    .local v5, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    const/4 v12, 0x3

    :try_start_6
    new-array v0, v12, [Ljava/lang/String;

    .line 694
    .local v0, "columns":[Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "pkgName"

    aput-object v13, v0, v12

    .line 695
    const/4 v12, 0x1

    const-string v13, "instanceId"

    aput-object v13, v0, v12

    .line 696
    const/4 v12, 0x2

    const-string v13, "pkgVersion"

    aput-object v13, v0, v12

    .line 698
    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 701
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_7f

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7f

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 704
    .local v9, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 705
    .local v3, "instanceId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 706
    .local v10, "packageVersion":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_77

    .line 707
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :try_start_31
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_81

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 709
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_36
    :try_start_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5e

    .line 710
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 711
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v12, "pkgName"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 712
    const-string v12, "instanceId"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    const-string v12, "pkgVersion"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 714
    new-instance v5, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v5, v9, v3, v10}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_59} :catch_84

    .line 715
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :try_start_59
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_81

    move-object v6, v5

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_36

    .line 717
    :cond_5e
    if-eqz v8, :cond_88

    :try_start_60
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_88

    .line 718
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/app/enterprise/license/LicenseInfo;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_74} :catch_84

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .line 724
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instanceId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageVersion":Ljava/lang/String;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :goto_76
    return-object v12

    .line 720
    :catch_77
    move-exception v2

    .line 721
    .local v2, "e":Ljava/lang/Exception;
    :goto_78
    const-string v12, "EnterpriseLicenseService"

    const-string v13, "getLicenseInfo() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7f
    :goto_7f
    const/4 v12, 0x0

    goto :goto_76

    .line 720
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "instanceId":Ljava/lang/String;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageVersion":Ljava/lang/String;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_81
    move-exception v2

    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_78

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :catch_84
    move-exception v2

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_78

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :cond_88
    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_7f
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 524
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 526
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 557
    :cond_10
    :goto_10
    return-object v5

    .line 531
    :cond_11
    const/4 v3, 0x0

    .line 532
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_12
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "instanceId"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "pkgName"

    .line 536
    .local v0, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 538
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_3c

    .line 539
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_10

    .line 552
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_30
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "getApiCallData() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 543
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_3c
    :try_start_3c
    const-string v6, "pkgName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 545
    if-nez v3, :cond_4c

    .line 546
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 551
    :cond_4c
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4f} :catch_30

    move-result-object v5

    goto :goto_10
.end method

.method public getApiCallDataByAdmin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 619
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 631
    :cond_14
    :goto_14
    return-object v1

    .line 626
    :cond_15
    :try_start_15
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_14

    .line 627
    :catch_1a
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1307
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1308
    :cond_f
    const/4 v2, 0x0

    .line 1318
    :goto_10
    return-object v2

    .line 1310
    :cond_11
    const/4 v2, 0x0

    .line 1312
    .local v2, "elmKey":Ljava/lang/String;
    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1313
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_10

    .line 1314
    :catch_22
    move-exception v1

    .line 1315
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getELMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
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
    .line 1142
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 1145
    :goto_4
    return-object v1

    .line 1143
    :catch_5
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "EnterpriseLicenseService"

    const-string v2, "getELMPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1329
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1330
    :cond_f
    const/4 v2, 0x0

    .line 1340
    :goto_10
    return-object v2

    .line 1332
    :cond_11
    const/4 v2, 0x0

    .line 1334
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1335
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_10

    .line 1336
    :catch_22
    move-exception v1

    .line 1337
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1351
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1352
    :cond_f
    const/4 v2, 0x0

    .line 1362
    :goto_10
    return-object v2

    .line 1354
    :cond_11
    const/4 v2, 0x0

    .line 1356
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1357
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_10

    .line 1358
    :catch_22
    move-exception v1

    .line 1359
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    .registers 15
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 642
    const/4 v5, 0x0

    .line 644
    .local v5, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_10
    move-object v6, v5

    .line 679
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_11
    return-object v6

    .line 648
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_12
    const/4 v10, 0x3

    :try_start_13
    new-array v0, v10, [Ljava/lang/String;

    .line 649
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "pkgName"

    aput-object v11, v0, v10

    .line 650
    const/4 v10, 0x1

    const-string v11, "instanceId"

    aput-object v11, v0, v10

    .line 651
    const/4 v10, 0x2

    const-string v11, "pkgVersion"

    aput-object v11, v0, v10

    .line 653
    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 656
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_69

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_69

    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 659
    .local v3, "instId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 660
    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 661
    .local v8, "packageVersion":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 663
    .local v4, "it":Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_69

    .line 664
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 665
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v10, "instanceId"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 667
    if-eqz v3, :cond_3d

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 668
    const-string v10, "pkgName"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 669
    const-string v10, "pkgVersion"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 670
    new-instance v6, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v6, v7, v3, v8}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_68} :catch_6b

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v5, v6

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "packageVersion":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_69
    :goto_69
    move-object v6, v5

    .line 679
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_11

    .line 675
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :catch_6b
    move-exception v2

    .line 676
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseLicenseService"

    const-string v11, "getLicenseInfo() failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method public getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    .registers 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 389
    const/4 v3, 0x0

    .line 390
    .local v3, "ro":Landroid/app/enterprise/license/RightsObject;
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move-object v4, v3

    .line 404
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .local v4, "ro":Landroid/app/enterprise/license/RightsObject;
    :goto_11
    return-object v4

    .line 394
    .end local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    :cond_12
    :try_start_12
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string v7, "instanceId"

    const-string v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 398
    .local v1, "blob":[B
    if-eqz v1, :cond_28

    .line 399
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v3, v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_2a

    .end local v1    # "blob":[B
    :cond_28
    :goto_28
    move-object v4, v3

    .line 404
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    goto :goto_11

    .line 400
    .end local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    :catch_2a
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "getRightsObject() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apiName"    # Ljava/lang/String;

    .prologue
    .line 1150
    invoke-static {p1, p2}, Lcom/android/server/enterprise/license/LicenseLog;->log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 1151
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1405
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1409
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1413
    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;II)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;
    .param p4, "initiator"    # I
    .param p5, "result_type"    # I

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 318
    .local v2, "token":J
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "edm.intent.action.knox_license.status"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "edm.intent.extra.knox_license.status"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v4, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v4, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v4, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_35
    .catchall {:try_start_7 .. :try_end_30} :catchall_42

    .line 329
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    const/4 v4, 0x1

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_34
    return v4

    .line 325
    :catch_35
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "processKnoxLicenseResponse() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_42

    .line 327
    const/4 v4, 0x0

    .line 329
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_42
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public processKnoxLicenseResponseForUMC(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;II)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;
    .param p4, "initiator"    # I
    .param p5, "result_type"    # I

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 356
    .local v2, "token":J
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "edm.intent.action.knox_license.status"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "edm.intent.extra.knox_license.status"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v4, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v4, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v4, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v4, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 367
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_41
    .catchall {:try_start_7 .. :try_end_3c} :catchall_4e

    .line 373
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    const/4 v4, 0x1

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_40
    return v4

    .line 369
    :catch_41
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "processKnoxLicenseResponseForUMC() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_4e

    .line 371
    const/4 v4, 0x0

    .line 373
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_40

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;Ljava/lang/String;)Z
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p6, "error"    # Landroid/app/enterprise/license/Error;
    .param p7, "permGroup"    # Ljava/lang/String;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 128
    const/4 v7, 0x0

    .line 129
    .local v7, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 132
    .local v9, "token":J
    if-nez p5, :cond_43

    .line 133
    const/4 v7, 0x1

    .line 171
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_15f

    .line 173
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v11, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :goto_2c
    const-string v11, "edm.intent.extra.license.result_type"

    const/16 v12, 0x320

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_126

    move v8, v7

    .line 188
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_41
    monitor-exit p0

    return v8

    .line 138
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ret":I
    .restart local v7    # "ret":Z
    :cond_43
    :try_start_43
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "pkgName"

    invoke-virtual {v4, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    .line 143
    .local v1, "blob":[B
    const-string v11, "rightsObject"

    invoke-virtual {v3, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 144
    const-string v11, "instanceId"

    move-object/from16 v0, p4

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 148
    .local v2, "cnt":I
    if-lez v2, :cond_d1

    .line 150
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    .line 157
    :goto_74
    const-string v11, "EnterpriseLicenseService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processLicenseActivationResponse(): ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz v7, :cond_9a

    .line 161
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_9a} :catch_e6
    .catchall {:try_start_43 .. :try_end_9a} :catchall_129

    .line 171
    :cond_9a
    :try_start_9a
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v6    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_18d

    .line 173
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v11, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :goto_ba
    const-string v11, "edm.intent.extra.license.result_type"

    const/16 v12, 0x320

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ce
    .catchall {:try_start_9a .. :try_end_ce} :catchall_126

    .end local v1    # "blob":[B
    .end local v2    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :goto_ce
    move v8, v7

    .line 188
    .restart local v8    # "ret":I
    goto/16 :goto_41

    .line 153
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ret":I
    .restart local v1    # "blob":[B
    .restart local v2    # "cnt":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_d1
    :try_start_d1
    const-string v11, "pkgName"

    invoke-virtual {v3, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v11, "pkgVersion"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e4} :catch_e6
    .catchall {:try_start_d1 .. :try_end_e4} :catchall_129

    move-result v7

    goto :goto_74

    .line 166
    .end local v1    # "blob":[B
    .end local v2    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_e6
    move-exception v5

    .line 167
    .local v5, "e":Ljava/lang/Exception;
    :try_start_e7
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseActivationResponse() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f1
    .catchall {:try_start_e7 .. :try_end_f1} :catchall_129

    .line 171
    :try_start_f1
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v6    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_17e

    .line 173
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v11, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :goto_111
    const-string v11, "edm.intent.extra.license.result_type"

    const/16 v12, 0x320

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_125
    .catchall {:try_start_f1 .. :try_end_125} :catchall_126

    goto :goto_ce

    .line 126
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "ret":Z
    .end local v9    # "token":J
    :catchall_126
    move-exception v11

    monitor-exit p0

    throw v11

    .line 171
    .restart local v7    # "ret":Z
    .restart local v9    # "token":J
    :catchall_129
    move-exception v11

    :try_start_12a
    new-instance v6, Landroid/content/Intent;

    const-string v12, "edm.intent.action.license.status"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v6    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_16f

    .line 173
    const-string v12, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v12, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :goto_14a
    const-string v12, "edm.intent.extra.license.result_type"

    const/16 v13, 0x320

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v12, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v6, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    throw v11

    .line 177
    :cond_15f
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2c

    .line 177
    :cond_16f
    const-string v12, "edm.intent.extra.license.status"

    const-string v13, "fail"

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14a

    .line 177
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_17e
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_111

    .line 177
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "blob":[B
    .restart local v2    # "cnt":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_18d
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_19b
    .catchall {:try_start_12a .. :try_end_19b} :catchall_126

    goto/16 :goto_ba
.end method

.method public declared-synchronized processLicenseActivationResponseForUMC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;Ljava/lang/String;)Z
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p6, "error"    # Landroid/app/enterprise/license/Error;
    .param p7, "permGroup"    # Ljava/lang/String;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 211
    const/4 v9, 0x0

    .line 212
    .local v9, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 215
    .local v11, "token":J
    if-nez p5, :cond_7a

    .line 216
    const/4 v9, 0x1

    .line 253
    new-instance v7, Landroid/content/Intent;

    const-string v13, "edm.intent.action.license.status"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_243

    .line 255
    const-string v13, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v13, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v13, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 263
    .local v8, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_4a

    .line 264
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v6, "extra":Landroid/os/Bundle;
    const-string v13, "Permissions"

    invoke-virtual {v6, v13, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 266
    const-string v13, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v7, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_4a
    const-string v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v13, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v13, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    .end local v8    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_74
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_1d3

    move v10, v9

    .line 294
    .end local v9    # "ret":Z
    .local v10, "ret":I
    :goto_78
    monitor-exit p0

    return v10

    .line 221
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "ret":I
    .restart local v9    # "ret":Z
    :cond_7a
    :try_start_7a
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v13, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v4, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    .line 226
    .local v1, "blob":[B
    const-string v13, "rightsObject"

    invoke-virtual {v3, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 227
    const-string v13, "instanceId"

    move-object/from16 v0, p4

    invoke-virtual {v3, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "LICENSE"

    invoke-virtual {v13, v14, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 230
    .local v2, "cnt":I
    if-lez v2, :cond_143

    .line 232
    sget-object v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "LICENSE"

    invoke-virtual {v13, v14, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    .line 239
    :goto_ad
    const-string v13, "EnterpriseLicenseService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processLicenseActivationResponseForUMC(): ret = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz v9, :cond_d5

    .line 243
    sget-object v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_d5} :catch_15b
    .catchall {:try_start_7a .. :try_end_d5} :catchall_1d6

    .line 253
    :cond_d5
    :try_start_d5
    new-instance v7, Landroid/content/Intent;

    const-string v13, "edm.intent.action.license.status"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v7    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_2b1

    .line 255
    const-string v13, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v13, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v13, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 263
    .restart local v8    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_113

    .line 264
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 265
    .restart local v6    # "extra":Landroid/os/Bundle;
    const-string v13, "Permissions"

    invoke-virtual {v6, v13, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 266
    const-string v13, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v7, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_113
    const-string v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v13, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v13, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    .end local v8    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_13d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_140
    .catchall {:try_start_d5 .. :try_end_140} :catchall_1d3

    .end local v1    # "blob":[B
    .end local v2    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :goto_140
    move v10, v9

    .line 294
    .restart local v10    # "ret":I
    goto/16 :goto_78

    .line 235
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "ret":I
    .restart local v1    # "blob":[B
    .restart local v2    # "cnt":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_143
    :try_start_143
    const-string v13, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v3, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v13, "pkgVersion"

    move-object/from16 v0, p2

    invoke-virtual {v3, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "LICENSE"

    invoke-virtual {v13, v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_158} :catch_15b
    .catchall {:try_start_143 .. :try_end_158} :catchall_1d6

    move-result v9

    goto/16 :goto_ad

    .line 248
    .end local v1    # "blob":[B
    .end local v2    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_15b
    move-exception v5

    .line 249
    .local v5, "e":Ljava/lang/Exception;
    :try_start_15c
    const-string v13, "EnterpriseLicenseService"

    const-string v14, "processLicenseActivationResponseForUMC() failed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_166
    .catchall {:try_start_15c .. :try_end_166} :catchall_1d6

    .line 253
    :try_start_166
    new-instance v7, Landroid/content/Intent;

    const-string v13, "edm.intent.action.license.status"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v7    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_28c

    .line 255
    const-string v13, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v13, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v13, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 263
    .restart local v8    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_1a4

    .line 264
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 265
    .restart local v6    # "extra":Landroid/os/Bundle;
    const-string v13, "Permissions"

    invoke-virtual {v6, v13, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 266
    const-string v13, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v7, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_1a4
    const-string v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v13, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v13, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    .end local v8    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1ce
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d1
    .catchall {:try_start_166 .. :try_end_1d1} :catchall_1d3

    goto/16 :goto_140

    .line 209
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "ret":Z
    .end local v11    # "token":J
    :catchall_1d3
    move-exception v13

    monitor-exit p0

    throw v13

    .line 253
    .restart local v9    # "ret":Z
    .restart local v11    # "token":J
    :catchall_1d6
    move-exception v13

    :try_start_1d7
    new-instance v7, Landroid/content/Intent;

    const-string v14, "edm.intent.action.license.status"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v7    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_268

    .line 255
    const-string v14, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v14, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v14, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v14, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 263
    .restart local v8    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_215

    .line 264
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 265
    .restart local v6    # "extra":Landroid/os/Bundle;
    const-string v14, "Permissions"

    invoke-virtual {v6, v14, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 266
    const-string v14, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v7, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_215
    const-string v14, "edm.intent.extra.license.result_type"

    const/16 v15, 0x320

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v14, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v14, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    .end local v8    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_23f
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw v13

    .line 281
    :cond_243
    const-string v13, "edm.intent.extra.license.status"

    const-string v14, "fail"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v13, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_74

    .line 281
    :cond_268
    const-string v14, "edm.intent.extra.license.status"

    const-string v15, "fail"

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v14, "edm.intent.extra.license.errorcode"

    const/16 v15, 0x12d

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v14, "edm.intent.extra.license.result_type"

    const/16 v15, 0x320

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v14, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_23f

    .line 281
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_28c
    const-string v13, "edm.intent.extra.license.status"

    const-string v14, "fail"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v13, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1ce

    .line 281
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "blob":[B
    .restart local v2    # "cnt":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_2b1
    const-string v13, "edm.intent.extra.license.status"

    const-string v14, "fail"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v13, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2d4
    .catchall {:try_start_1d7 .. :try_end_2d4} :catchall_1d3

    goto/16 :goto_13d
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;Ljava/lang/String;)Z
    .registers 27
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p4, "error"    # Landroid/app/enterprise/license/Error;
    .param p5, "permGroup"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 423
    const/4 v14, 0x0

    .line 424
    .local v14, "ret":Z
    const/4 v12, 0x0

    .line 425
    .local v12, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 428
    .local v16, "token":J
    if-nez p3, :cond_d1

    .line 429
    const/4 v14, 0x1

    .line 471
    new-instance v10, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_538

    .line 473
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_36
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_cc

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v2, "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_550

    .line 489
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :goto_89
    const-string v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-static {v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 499
    .local v11, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_ab

    .line 500
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v9, "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 502
    const-string v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_ab
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 509
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .end local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_cc
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v14

    .line 512
    .end local v14    # "ret":Z
    .local v15, "ret":I
    :goto_d0
    return v15

    .line 434
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "ret":I
    .restart local v14    # "ret":Z
    :cond_d1
    :try_start_d1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 435
    .local v7, "cvWhereforPkg":Landroid/content/ContentValues;
    const-string v18, "instanceId"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v4, "pkgName"

    .line 438
    .local v4, "column":Ljava/lang/String;
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v19, "LICENSE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v13

    .line 441
    .local v13, "result":Landroid/content/ContentValues;
    if-nez v13, :cond_1bc

    .line 442
    const-string v18, "EnterpriseLicenseService"

    const-string v19, "processLicenseValidationResult(): result is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f6} :catch_3a6
    .catchall {:try_start_d1 .. :try_end_f6} :catchall_473

    .line 471
    new-instance v10, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v10    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_5c8

    .line 473
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_120
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b6

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_5e0

    .line 489
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :goto_173
    const-string v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-static {v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 499
    .restart local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_195

    .line 500
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 501
    .restart local v9    # "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 502
    const-string v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_195
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 509
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .end local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1b6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v14

    .line 443
    .restart local v15    # "ret":I
    goto/16 :goto_d0

    .line 446
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "ret":I
    :cond_1bc
    :try_start_1bc
    const-string v18, "pkgName"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 448
    if-nez v12, :cond_293

    .line 449
    const-string v18, "EnterpriseLicenseService"

    const-string v19, "processLicenseValidationResult(): pkgName is null, Record does not exist"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1cd} :catch_3a6
    .catchall {:try_start_1bc .. :try_end_1cd} :catchall_473

    .line 471
    new-instance v10, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v10    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_5f8

    .line 473
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_1f7
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_28d

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_610

    .line 489
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :goto_24a
    const-string v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-static {v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 499
    .restart local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_26c

    .line 500
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 501
    .restart local v9    # "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 502
    const-string v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_26c
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 509
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .end local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_28d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v14

    .line 450
    .restart local v15    # "ret":I
    goto/16 :goto_d0

    .line 454
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "ret":I
    :cond_293
    :try_start_293
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v3

    .line 456
    .local v3, "blob":[B
    const-string v18, "rightsObject"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 457
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v6, "cvWhere":Landroid/content/ContentValues;
    const-string v18, "instanceId"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v19, "LICENSE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v14

    .line 461
    const-string v18, "EnterpriseLicenseService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "processLicenseValidationResult(): ret = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v14, :cond_2e0

    .line 464
    sget-object v18, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2e0} :catch_3a6
    .catchall {:try_start_293 .. :try_end_2e0} :catchall_473

    .line 471
    :cond_2e0
    new-instance v10, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v10    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_628

    .line 473
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_30a
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3a0

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_640

    .line 489
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :goto_35d
    const-string v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-static {v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 499
    .restart local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_37f

    .line 500
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 501
    .restart local v9    # "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 502
    const-string v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_37f
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 509
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .end local v3    # "blob":[B
    .end local v4    # "column":Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "cvWhereforPkg":Landroid/content/ContentValues;
    .end local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "result":Landroid/content/ContentValues;
    :cond_3a0
    :goto_3a0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v14

    .line 512
    .restart local v15    # "ret":I
    goto/16 :goto_d0

    .line 466
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "ret":I
    :catch_3a6
    move-exception v8

    .line 467
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3a7
    const-string v18, "EnterpriseLicenseService"

    const-string v19, "processLicenseValidationResult() failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b1
    .catchall {:try_start_3a7 .. :try_end_3b1} :catchall_473

    .line 471
    new-instance v10, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v10    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_598

    .line 473
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_3db
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3a0

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_5b0

    .line 489
    const-string v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :goto_42e
    const-string v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-static {v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 499
    .restart local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_450

    .line 500
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 501
    .restart local v9    # "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 502
    const-string v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_450
    const-string v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_3a0

    .line 471
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_473
    move-exception v18

    new-instance v10, Landroid/content/Intent;

    const-string v19, "edm.intent.action.license.status"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v10    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_568

    .line 473
    const-string v19, "edm.intent.extra.license.status"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v19, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string v19, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_49e
    const-string v19, "edm.intent.extra.license.result_type"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_534

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v19, "edm.intent.action.license.status"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    if-eqz v14, :cond_580

    .line 489
    const-string v19, "edm.intent.extra.license.status"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v19, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v19, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :goto_4f1
    const-string v19, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-static {v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 499
    .restart local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_513

    .line 500
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 501
    .restart local v9    # "extra":Landroid/os/Bundle;
    const-string v19, "Permissions"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 502
    const-string v19, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_513
    const-string v19, "edm.intent.extra.license.result_type"

    const/16 v20, 0x321

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v19, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 509
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .end local v11    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_534
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    throw v18

    .line 477
    :cond_538
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_36

    .line 493
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    :cond_550
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_89

    .line 477
    .end local v2    # "UMCintent":Landroid/content/Intent;
    :cond_568
    const-string v19, "edm.intent.extra.license.status"

    const-string v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v19, "edm.intent.extra.license.errorcode"

    const/16 v20, 0x12d

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_49e

    .line 493
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    :cond_580
    const-string v19, "edm.intent.extra.license.status"

    const-string v20, "fail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v19, "edm.intent.extra.license.errorcode"

    const/16 v20, 0x12d

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4f1

    .line 477
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_598
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3db

    .line 493
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    :cond_5b0
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_42e

    .line 477
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "column":Ljava/lang/String;
    .restart local v7    # "cvWhereforPkg":Landroid/content/ContentValues;
    .restart local v13    # "result":Landroid/content/ContentValues;
    :cond_5c8
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_120

    .line 493
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    :cond_5e0
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_173

    .line 477
    .end local v2    # "UMCintent":Landroid/content/Intent;
    :cond_5f8
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1f7

    .line 493
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    :cond_610
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_24a

    .line 477
    .end local v2    # "UMCintent":Landroid/content/Intent;
    .restart local v3    # "blob":[B
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvWhere":Landroid/content/ContentValues;
    :cond_628
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_30a

    .line 493
    .restart local v2    # "UMCintent":Landroid/content/Intent;
    :cond_640
    const-string v18, "edm.intent.extra.license.status"

    const-string v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_35d
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .registers 13
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1159
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1160
    const/4 v5, 0x0

    .line 1161
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1163
    .local v6, "token":J
    if-eqz p1, :cond_15

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_38
    .catchall {:try_start_b .. :try_end_12} :catchall_58

    move-result v9

    if-eqz v9, :cond_19

    .line 1195
    :cond_15
    :goto_15
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    :goto_18
    return v8

    .line 1166
    :cond_19
    const/4 v3, 0x0

    .line 1168
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1169
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "instanceId"

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v0, "pkgName"

    .line 1172
    .local v0, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1174
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_48

    .line 1175
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "resetLicense(): result is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_37} :catch_38
    .catchall {:try_start_1a .. :try_end_37} :catchall_58

    goto :goto_15

    .line 1191
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_38
    move-exception v2

    .line 1192
    .local v2, "e":Ljava/lang/Exception;
    :try_start_39
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "resetLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_58

    .line 1195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v5

    .line 1197
    goto :goto_18

    .line 1179
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_48
    :try_start_48
    const-string v9, "pkgName"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1181
    if-nez v3, :cond_5d

    .line 1182
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_57} :catch_38
    .catchall {:try_start_48 .. :try_end_57} :catchall_58

    goto :goto_15

    .line 1195
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catchall_58
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1186
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_5d
    :try_start_5d
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1187
    if-eqz v5, :cond_43

    .line 1189
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_38
    .catchall {:try_start_5d .. :try_end_68} :catchall_58

    goto :goto_43
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1206
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1207
    const/4 v1, 0x0

    .line 1208
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1210
    .local v2, "token":J
    if-eqz p1, :cond_14

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_29
    .catchall {:try_start_a .. :try_end_11} :catchall_32

    move-result v4

    if-eqz v4, :cond_19

    .line 1211
    :cond_14
    const/4 v4, 0x0

    .line 1221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    :goto_18
    return v4

    .line 1213
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1214
    if-eqz v1, :cond_24

    .line 1216
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_29
    .catchall {:try_start_19 .. :try_end_24} :catchall_32

    .line 1221
    :cond_24
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 1223
    goto :goto_18

    .line 1218
    :catch_29
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_24

    .line 1221
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1400
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 1401
    return-void
.end method
