.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 306
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPackageUpdateFinished - packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v7, "com.sec.enterprise.permissions"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 310
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 311
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 350
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_39
    return-void

    .line 313
    :cond_3a
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v8

    .line 314
    const/4 v6, 0x0

    .line 315
    .local v6, "updatedAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 316
    .local v2, "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 317
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v9, "Admin found on map with same package name!"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object v6, v0
    :try_end_79
    .catchall {:try_start_3e .. :try_end_79} :catchall_ab

    goto :goto_4a

    .line 322
    .end local v2    # "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_7a
    if-eqz v6, :cond_fa

    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_start_7d
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-static {v7, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_8a} :catch_ae
    .catchall {:try_start_7d .. :try_end_8a} :catchall_ab

    move-result-object v1

    .line 330
    :goto_8b
    if-nez v1, :cond_b1

    .line 331
    :try_start_8d
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v9, "Removing Admin as component name changed"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    invoke-static {v7, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    .line 335
    monitor-exit v8

    goto :goto_39

    .line 348
    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_ab
    move-exception v7

    monitor-exit v8
    :try_end_ad
    .catchall {:try_start_8d .. :try_end_ad} :catchall_ab

    throw v7

    .line 327
    .restart local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_ae
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_8b

    .line 337
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b1
    :try_start_b1
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    invoke-static {v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    .line 344
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z
    invoke-static {v7, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)Z

    .line 345
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 348
    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_fa
    monitor-exit v8
    :try_end_fb
    .catchall {:try_start_b1 .. :try_end_fb} :catchall_ab

    goto/16 :goto_39
.end method

.method public onSomePackagesChanged()V
    .registers 11

    .prologue
    .line 278
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v7

    .line 279
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v5

    .line 280
    .local v5, "userId":I
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package has changed for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_29
    if-ltz v3, :cond_c4

    .line 283
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 284
    .local v0, "adm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "packageName":Ljava/lang/String;
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin package name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "change":I
    const/4 v6, 0x3

    if-eq v1, v6, :cond_5b

    const/4 v6, 0x2

    if-ne v1, v6, :cond_83

    .line 289
    :cond_5b
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin unexpectedly uninstalled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    invoke-static {v6, v8, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    .line 282
    :cond_80
    :goto_80
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 291
    :cond_83
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_c1

    move-result v6

    if-eqz v6, :cond_80

    .line 293
    :try_start_89
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_89 .. :try_end_99} :catch_9a
    .catchall {:try_start_89 .. :try_end_99} :catchall_c1

    goto :goto_80

    .line 294
    :catch_9a
    move-exception v2

    .line 295
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_9b
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin package change removed component: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    invoke-static {v6, v8, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    goto :goto_80

    .line 301
    .end local v0    # "adm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1    # "change":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    :catchall_c1
    move-exception v6

    monitor-exit v7
    :try_end_c3
    .catchall {:try_start_9b .. :try_end_c3} :catchall_c1

    throw v6

    .restart local v3    # "i":I
    .restart local v5    # "userId":I
    :cond_c4
    :try_start_c4
    monitor-exit v7
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c1

    .line 302
    return-void
.end method
