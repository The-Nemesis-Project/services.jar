.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Landroid/app/enterprise/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 75
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 76
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    return-void
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 790
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    .line 793
    .local v1, "result":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    .line 794
    const/4 v2, 0x1

    .line 796
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private enforcePermission()V
    .registers 4

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 86
    :goto_8
    return-void

    .line 85
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
    .line 763
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 10
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
    .line 561
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v5, v6, :cond_12

    .line 562
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 565
    :cond_12
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 566
    :cond_1e
    const/4 v3, 0x0

    .line 585
    :cond_1f
    :goto_1f
    return-object v3

    .line 568
    :cond_20
    const/4 v4, 0x0

    .line 569
    .local v4, "ro":Landroid/app/enterprise/license/RightsObject;
    const/4 v3, 0x0

    .line 571
    .local v3, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_22
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string v7, "pkgName"

    const-string v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 575
    .local v1, "blob":[B
    if-eqz v1, :cond_1f

    .line 576
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v4, v0

    .line 577
    if-eqz v4, :cond_1f

    .line 578
    invoke-virtual {v4}, Landroid/app/enterprise/license/RightsObject;->getPermissions()Ljava/util/List;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_3f

    move-result-object v3

    goto :goto_1f

    .line 581
    .end local v1    # "blob":[B
    :catch_3f
    move-exception v2

    .line 582
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "getPermissions() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private getUidForPackageName(Ljava/lang/String;)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 767
    const/4 v2, -0x1

    .line 770
    .local v2, "uid":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 771
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 775
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_10
    return v2

    .line 772
    :catch_11
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getUidForPackageName() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 780
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 782
    .local v0, "blob":[B
    const-string v3, "rightsObject"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 783
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 784
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .registers 9

    .prologue
    .line 713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v6, v7, :cond_12

    .line 714
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 718
    :cond_12
    const/4 v6, 0x1

    :try_start_13
    new-array v0, v6, [Ljava/lang/String;

    .line 719
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "pkgName"

    aput-object v7, v0, v6

    .line 721
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 724
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_6d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6d

    .line 725
    const/4 v1, 0x0

    .line 726
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 727
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 729
    .local v3, "it":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 730
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 731
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "pkgName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 733
    if-eqz v4, :cond_30

    .line 734
    const-string v6, "EnterpriseLicenseService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_61} :catch_62

    goto :goto_30

    .line 740
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_62
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "updateAdminPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6d
    return-void
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Ljava/lang/String;)V
    .registers 8
    .param p1, "knoxLicenseKey"    # Ljava/lang/String;

    .prologue
    .line 529
    monitor-enter p0

    const/4 v2, 0x0

    .line 532
    .local v2, "pkgName":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 533
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 536
    new-instance v1, Landroid/content/Intent;

    const-string v4, "edm.intent.action.knox_license.registration.internal"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v4, "edm.intent.extra.knox_license.data.licensekey"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24
    .catchall {:try_start_2 .. :try_end_22} :catchall_4d

    .line 553
    .end local v3    # "uid":I
    :goto_22
    monitor-exit p0

    return-void

    .line 541
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_24
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "activateKnoxLicense() failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    new-instance v1, Landroid/content/Intent;

    const-string v4, "edm.intent.action.knox_license.status"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "edm.intent.extra.knox_license.status"

    const-string v5, "fail"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v4, "edm.intent.extra.knox_license.errorcode"

    const/16 v5, 0x12d

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_4d

    goto :goto_22

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_4d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized activateLicense(Ljava/lang/String;)V
    .registers 10
    .param p1, "licenseKey"    # Ljava/lang/String;

    .prologue
    .line 494
    monitor-enter p0

    const/4 v3, 0x0

    .line 497
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 498
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 499
    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 500
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 503
    .local v4, "pkgVersion":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "edm.intent.action.license.registration.internal"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v6, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v6, "edm.intent.extra.license.data.licensekey"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_36
    .catchall {:try_start_2 .. :try_end_34} :catchall_5f

    .line 521
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgVersion":Ljava/lang/String;
    .end local v5    # "uid":I
    :goto_34
    monitor-exit p0

    return-void

    .line 509
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_36
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "activateLicense() failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    new-instance v2, Landroid/content/Intent;

    const-string v6, "edm.intent.action.license.status"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "edm.intent.extra.license.status"

    const-string v7, "fail"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v6, "edm.intent.extra.license.errorcode"

    const/16 v7, 0x12d

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_5f

    goto :goto_34

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_5f
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    .registers 11
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 347
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 366
    :cond_10
    :goto_10
    return v2

    .line 352
    :cond_11
    :try_start_11
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const-string v5, "instanceId"

    const-string v6, "pkgName"

    invoke-virtual {v3, v4, v5, p2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 356
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "deleteApiCallData(): Record does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_10

    .line 362
    .end local v1    # "pkgName":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "deleteApiCallData() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_30
    :try_start_30
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_27

    move-result v2

    goto :goto_10
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .registers 12
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 658
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 662
    .local v3, "token":J
    if-eqz p1, :cond_15

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_2f
    .catchall {:try_start_b .. :try_end_12} :catchall_48

    move-result v6

    if-eqz v6, :cond_19

    .line 681
    :cond_15
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    :goto_18
    return v5

    .line 665
    :cond_19
    :try_start_19
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string v8, "instanceId"

    const-string v9, "pkgName"

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_3c

    .line 669
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "deleteLicense(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f
    .catchall {:try_start_19 .. :try_end_2e} :catchall_48

    goto :goto_15

    .line 678
    .end local v1    # "pkgName":Ljava/lang/String;
    :catch_2f
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteLicense() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_48

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    .line 683
    goto :goto_18

    .line 673
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v2

    .line 674
    if-eqz v2, :cond_37

    .line 676
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_2f
    .catchall {:try_start_3c .. :try_end_47} :catchall_48

    goto :goto_37

    .line 681
    .end local v1    # "pkgName":Ljava/lang/String;
    :catchall_48
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 693
    const/4 v1, 0x0

    .line 694
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 696
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

    .line 697
    :cond_14
    const/4 v4, 0x0

    .line 707
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    :goto_18
    return v4

    .line 699
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 700
    if-eqz v1, :cond_24

    .line 702
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_29
    .catchall {:try_start_19 .. :try_end_24} :catchall_32

    .line 707
    :cond_24
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 709
    goto :goto_18

    .line 704
    :catch_29
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_24

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    .registers 15

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 450
    const/4 v7, 0x0

    .line 451
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    const/4 v5, 0x0

    .line 454
    .local v5, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    const/4 v12, 0x3

    :try_start_6
    new-array v0, v12, [Ljava/lang/String;

    .line 455
    .local v0, "columns":[Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "pkgName"

    aput-object v13, v0, v12

    .line 456
    const/4 v12, 0x1

    const-string v13, "instanceId"

    aput-object v13, v0, v12

    .line 457
    const/4 v12, 0x2

    const-string v13, "pkgVersion"

    aput-object v13, v0, v12

    .line 459
    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    invoke-virtual {v12, v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 462
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_7e

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7e

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 465
    .local v9, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 466
    .local v3, "instanceId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 467
    .local v10, "packageVersion":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_76

    .line 468
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :try_start_30
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_80

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 470
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_35
    :try_start_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5d

    .line 471
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 472
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v12, "pkgName"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 473
    const-string v12, "instanceId"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    const-string v12, "pkgVersion"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 475
    new-instance v5, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v5, v9, v3, v10}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_83

    .line 476
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :try_start_58
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_80

    move-object v6, v5

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_35

    .line 478
    :cond_5d
    if-eqz v8, :cond_87

    :try_start_5f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_87

    .line 479
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/app/enterprise/license/LicenseInfo;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_73} :catch_83

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .line 485
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instanceId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageVersion":Ljava/lang/String;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :goto_75
    return-object v12

    .line 481
    :catch_76
    move-exception v2

    .line 482
    .local v2, "e":Ljava/lang/Exception;
    :goto_77
    const-string v12, "EnterpriseLicenseService"

    const-string v13, "getLicenseInfo() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    const/4 v12, 0x0

    goto :goto_75

    .line 481
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "instanceId":Ljava/lang/String;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageVersion":Ljava/lang/String;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_80
    move-exception v2

    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_77

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :catch_83
    move-exception v2

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_77

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :cond_87
    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_7e
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 311
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 330
    :cond_10
    :goto_10
    return-object v2

    .line 316
    :cond_11
    :try_start_11
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const-string v5, "instanceId"

    const-string v6, "pkgName"

    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 320
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getApiCallData(): Record does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_10

    .line 326
    .end local v1    # "pkgName":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getApiCallData() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_30
    :try_start_30
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_27

    move-result-object v2

    goto :goto_10
.end method

.method public getApiCallDataByAdmin(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 390
    :cond_14
    :goto_14
    return-object v1

    .line 385
    :cond_15
    :try_start_15
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_14

    .line 386
    :catch_1a
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    .registers 15
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 401
    const/4 v6, 0x0

    .line 403
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_10
    move-object v7, v6

    .line 440
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v7, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_11
    return-object v7

    .line 407
    .end local v7    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_12
    const/4 v11, 0x3

    :try_start_13
    new-array v0, v11, [Ljava/lang/String;

    .line 408
    .local v0, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "pkgName"

    aput-object v12, v0, v11

    .line 409
    const/4 v11, 0x1

    const-string v12, "instanceId"

    aput-object v12, v0, v11

    .line 410
    const/4 v11, 0x2

    const-string v12, "pkgVersion"

    aput-object v12, v0, v11

    .line 411
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "instanceId"

    invoke-virtual {v2, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 417
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_72

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_72

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 420
    .local v4, "instId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 421
    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 422
    .local v9, "packageVersion":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 424
    .local v5, "it":Ljava/util/Iterator;
    :cond_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 425
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 426
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v11, "instanceId"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    if-eqz v4, :cond_46

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 429
    const-string v11, "pkgName"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 430
    const-string v11, "pkgVersion"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 431
    new-instance v7, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v7, v8, v4, v9}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_71} :catch_74

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v7    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v6, v7

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "instId":Ljava/lang/String;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v7    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "packageVersion":Ljava/lang/String;
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_72
    :goto_72
    move-object v7, v6

    .line 440
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v7    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_11

    .line 436
    .end local v7    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :catch_74
    move-exception v3

    .line 437
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "getLicenseInfo() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method public getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    .registers 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 213
    const/4 v3, 0x0

    .line 214
    .local v3, "ro":Landroid/app/enterprise/license/RightsObject;
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move-object v4, v3

    .line 228
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .local v4, "ro":Landroid/app/enterprise/license/RightsObject;
    :goto_11
    return-object v4

    .line 218
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

    .line 222
    .local v1, "blob":[B
    if-eqz v1, :cond_28

    .line 223
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

    .line 228
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    goto :goto_11

    .line 224
    .end local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    :catch_2a
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "getRightsObject() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public log(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->log(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 752
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 756
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 760
    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;II)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;
    .param p4, "initiator"    # I
    .param p5, "result_type"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 188
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.knox_license.status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.extra.knox_license.status"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v2, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v2, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2c

    .line 200
    const/4 v2, 0x1

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2b
    return v2

    .line 195
    :catch_2c
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string v3, "processKnoxLicenseResponse() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p6, "error"    # Landroid/app/enterprise/license/Error;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 111
    .local v9, "token":J
    if-nez p5, :cond_33

    .line 112
    const/4 v7, 0x1

    .line 149
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_11e

    .line 154
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :goto_28
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_f5

    move v8, v7

    .line 165
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_31
    monitor-exit p0

    return v8

    .line 117
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ret":I
    .restart local v7    # "ret":Z
    :cond_33
    :try_start_33
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "pkgName"

    invoke-virtual {v4, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    .line 122
    .local v1, "blob":[B
    const-string v11, "rightsObject"

    invoke-virtual {v3, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 123
    const-string v11, "instanceId"

    move-object/from16 v0, p4

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 127
    .local v2, "cnt":I
    if-lez v2, :cond_b0

    .line 129
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    .line 136
    :goto_64
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

    .line 138
    if-eqz v7, :cond_8a

    .line 140
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_8a} :catch_c5
    .catchall {:try_start_33 .. :try_end_8a} :catchall_f8

    .line 149
    :cond_8a
    :try_start_8a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .restart local v6    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_14c

    .line 154
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :goto_a6
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_ae
    .catchall {:try_start_8a .. :try_end_ae} :catchall_f5

    .end local v1    # "blob":[B
    .end local v2    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :goto_ae
    move v8, v7

    .line 165
    .restart local v8    # "ret":I
    goto :goto_31

    .line 132
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ret":I
    .restart local v1    # "blob":[B
    .restart local v2    # "cnt":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_b0
    :try_start_b0
    const-string v11, "pkgName"

    invoke-virtual {v3, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v11, "pkgVersion"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c3} :catch_c5
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_f8

    move-result v7

    goto :goto_64

    .line 145
    .end local v1    # "blob":[B
    .end local v2    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_c5
    move-exception v5

    .line 146
    .local v5, "e":Ljava/lang/Exception;
    :try_start_c6
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseActivationResponse() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_f8

    .line 149
    :try_start_d0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .restart local v6    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_13d

    .line 154
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :goto_ec
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_f4
    .catchall {:try_start_d0 .. :try_end_f4} :catchall_f5

    goto :goto_ae

    .line 105
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "ret":Z
    .end local v9    # "token":J
    :catchall_f5
    move-exception v11

    monitor-exit p0

    throw v11

    .line 149
    .restart local v7    # "ret":Z
    .restart local v9    # "token":J
    :catchall_f8
    move-exception v11

    :try_start_f9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    new-instance v6, Landroid/content/Intent;

    const-string v12, "edm.intent.action.license.status"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .restart local v6    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_12e

    .line 154
    const-string v12, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :goto_115
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v12, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    throw v11

    .line 157
    :cond_11e
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_28

    .line 157
    :cond_12e
    const-string v12, "edm.intent.extra.license.status"

    const-string v13, "fail"

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_115

    .line 157
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_13d
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_ec

    .line 157
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "blob":[B
    .restart local v2    # "cnt":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_14c
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_15a
    .catchall {:try_start_f9 .. :try_end_15a} :catchall_f5

    goto/16 :goto_a6
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .registers 20
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p4, "error"    # Landroid/app/enterprise/license/Error;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 246
    const/4 v7, 0x0

    .line 247
    .local v7, "ret":Z
    const/4 v6, 0x0

    .line 248
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 251
    .local v9, "token":J
    if-nez p3, :cond_32

    .line 252
    const/4 v7, 0x1

    .line 281
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_127

    .line 286
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    :goto_28
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    .line 297
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_31
    return v8

    .line 257
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "ret":I
    .restart local v7    # "ret":Z
    :cond_32
    :try_start_32
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    const-string v13, "instanceId"

    const-string v14, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    if-nez v6, :cond_6f

    .line 261
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseValidationResult(): Record does not exist"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_49} :catch_d7
    .catchall {:try_start_32 .. :try_end_49} :catchall_101

    .line 281
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_155

    .line 286
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    :goto_65
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    .line 262
    .restart local v8    # "ret":I
    goto :goto_31

    .line 266
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "ret":I
    :cond_6f
    :try_start_6f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    .line 268
    .local v1, "blob":[B
    const-string v11, "rightsObject"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 269
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "instanceId"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    .line 273
    const-string v11, "EnterpriseLicenseService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processLicenseValidationResult(): ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz v7, :cond_b0

    .line 276
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v6}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_b0} :catch_d7
    .catchall {:try_start_6f .. :try_end_b0} :catchall_101

    .line 281
    :cond_b0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_165

    .line 286
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    :goto_cc
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .end local v1    # "blob":[B
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    :goto_d1
    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    .line 297
    .restart local v8    # "ret":I
    goto/16 :goto_31

    .line 278
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "ret":I
    :catch_d7
    move-exception v4

    .line 279
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d8
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseValidationResult() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_101

    .line 281
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_146

    .line 286
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    :goto_fb
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    goto :goto_d1

    .line 281
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "intent":Landroid/content/Intent;
    :catchall_101
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    new-instance v5, Landroid/content/Intent;

    const-string v12, "edm.intent.action.license.status"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_137

    .line 286
    const-string v12, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    :goto_11e
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v12, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    throw v11

    .line 289
    :cond_127
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_28

    .line 289
    :cond_137
    const-string v12, "edm.intent.extra.license.status"

    const-string v13, "fail"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11e

    .line 289
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_146
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_fb

    .line 289
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_155
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_65

    .line 289
    .restart local v1    # "blob":[B
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    :cond_165
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_cc
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .registers 12
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 598
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 599
    const/4 v2, 0x0

    .line 600
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 602
    .local v3, "token":J
    if-eqz p1, :cond_15

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_2f
    .catchall {:try_start_b .. :try_end_12} :catchall_48

    move-result v6

    if-eqz v6, :cond_19

    .line 621
    :cond_15
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    :goto_18
    return v5

    .line 605
    :cond_19
    :try_start_19
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string v8, "instanceId"

    const-string v9, "pkgName"

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_3c

    .line 609
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "resetLicense(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f
    .catchall {:try_start_19 .. :try_end_2e} :catchall_48

    goto :goto_15

    .line 618
    .end local v1    # "pkgName":Ljava/lang/String;
    :catch_2f
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "resetLicense() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_48

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    .line 623
    goto :goto_18

    .line 613
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v2

    .line 614
    if-eqz v2, :cond_37

    .line 616
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_2f
    .catchall {:try_start_3c .. :try_end_47} :catchall_48

    goto :goto_37

    .line 621
    .end local v1    # "pkgName":Ljava/lang/String;
    :catchall_48
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 636
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

    .line 637
    :cond_14
    const/4 v4, 0x0

    .line 647
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    :goto_18
    return v4

    .line 639
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 640
    if-eqz v1, :cond_24

    .line 642
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_29
    .catchall {:try_start_19 .. :try_end_24} :catchall_32

    .line 647
    :cond_24
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 649
    goto :goto_18

    .line 644
    :catch_29
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_24

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 747
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 748
    return-void
.end method
