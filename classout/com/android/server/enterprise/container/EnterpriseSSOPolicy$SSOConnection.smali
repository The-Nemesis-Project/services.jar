.class public Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSOConnection"
.end annotation


# instance fields
.field public mClientID:I

.field public mContainerID:I

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)V
    .registers 5
    .param p2, "clientId"    # I
    .param p3, "containerID"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    .line 1430
    iput p3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    .line 1431
    iput-object p4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    .line 1432
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .line 1437
    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    new-instance v1, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/enterprise/utils/SSOTypeMapData;-><init>(IILjava/lang/String;Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;)V

    .line 1441
    .local v1, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1200()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1200()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->updateClintEntry(ILjava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;ILjava/lang/String;)V

    .line 1445
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 1446
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected -  ContainerId   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected -  PackageName   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected -  clientId   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSO ComponentName className : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ssoInterface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_d8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "sso.enterprise.container.setup.success"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v3, "containerid"

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1455
    const-string v3, "packageName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1457
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    invoke-static {v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    :try_end_fe
    .catchall {:try_start_1 .. :try_end_fe} :catchall_100

    .line 1458
    monitor-exit p0

    return-void

    .line 1436
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catchall_100
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 1461
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1462
    const-string v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected - ContainerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const-string v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSO ComponentName className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_3c
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1200()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sso.enterprise.container.disconnected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "containerid"

    iget v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1470
    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1471
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1472
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    invoke-static {v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    .line 1473
    return-void
.end method
