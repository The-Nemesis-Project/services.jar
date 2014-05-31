.class Lcom/android/server/print/PrintManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService;->registerBoradcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService;)V
    .registers 2

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 9
    .param p1, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 491
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 492
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    :cond_20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 496
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_28
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    # getter for: Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService;->access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 498
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stoppedPackages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 439
    iget-object v9, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    # getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 440
    :try_start_7
    iget-object v9, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$3;->getChangingUserId()I

    move-result v11

    # invokes: Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v9, v11}, Lcom/android/server/print/PrintManagerService;->access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;

    move-result-object v8

    .line 441
    .local v8, "userState":Lcom/android/server/print/UserState;
    const/4 v7, 0x0

    .line 442
    .local v7, "stoppedSomePackages":Z
    invoke-virtual {v8}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 443
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 444
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 445
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "componentPackage":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2d
    if-ge v3, v5, :cond_1a

    aget-object v6, v0, v3

    .line 447
    .local v6, "stoppedPackage":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 448
    if-nez p4, :cond_3c

    .line 449
    const/4 v9, 0x1

    monitor-exit v10

    .line 459
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "componentPackage":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "stoppedPackage":Ljava/lang/String;
    :goto_3b
    return v9

    .line 451
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentPackage":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "stoppedPackage":Ljava/lang/String;
    :cond_3c
    const/4 v7, 0x1

    .line 452
    goto :goto_1a

    .line 446
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 456
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "componentPackage":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "stoppedPackage":Ljava/lang/String;
    :cond_41
    if-eqz v7, :cond_46

    .line 457
    invoke-virtual {v8}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 459
    :cond_46
    const/4 v9, 0x0

    monitor-exit v10

    goto :goto_3b

    .line 460
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v7    # "stoppedSomePackages":Z
    .end local v8    # "userState":Lcom/android/server/print/UserState;
    :catchall_49
    move-exception v9

    monitor-exit v10
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_49

    throw v9
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 465
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.printservice.PrintService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    # getter for: Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService;->access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$3;->getChangingUserId()I

    move-result v9

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 472
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_20

    .line 485
    :cond_1f
    return-void

    .line 476
    :cond_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 477
    .local v2, "installedServiceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v2, :cond_1f

    .line 478
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 479
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    # getter for: Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService;->access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "label":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$3;->getChangingUserId()I

    move-result v8

    # invokes: Lcom/android/server/print/PrintManagerService;->showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V
    invoke-static {v7, v0, v5, v8}, Lcom/android/server/print/PrintManagerService;->access$400(Lcom/android/server/print/PrintManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_25
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    # getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 404
    :try_start_7
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$3;->getChangingUserId()I

    move-result v5

    # invokes: Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v3, v5}, Lcom/android/server/print/PrintManagerService;->access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 405
    .local v2, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 406
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 408
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 409
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 410
    const/4 v3, 0x1

    monitor-exit v4

    .line 414
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_34
    return v3

    .line 413
    :cond_35
    monitor-exit v4

    .line 414
    const/4 v3, 0x0

    goto :goto_34

    .line 413
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    # getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 420
    :try_start_7
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$3;->getChangingUserId()I

    move-result v5

    # invokes: Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v3, v5}, Lcom/android/server/print/PrintManagerService;->access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 421
    .local v2, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 422
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 423
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 424
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 425
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 426
    const-string v3, "enabled_print_services"

    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$3;->getChangingUserId()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/print/PrintManagerService$3;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 429
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 430
    monitor-exit v4

    .line 434
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_43
    return-void

    .line 433
    :cond_44
    monitor-exit v4

    goto :goto_43

    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    :catchall_46
    move-exception v3

    monitor-exit v4
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_46

    throw v3
.end method
