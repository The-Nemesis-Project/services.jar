.class public Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;
.super Ljava/lang/Object;
.source "EnterpriseUserSpaceSSOPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSOConnection"
.end annotation


# instance fields
.field public mClientID:I

.field public mPackageName:Ljava/lang/String;

.field public mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;IILjava/lang/String;)V
    .registers 5
    .param p2, "clientId"    # I
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput p2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mClientID:I

    .line 646
    iput p3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    .line 647
    iput-object p4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    .line 648
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 652
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v4

    .line 653
    .local v4, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v3, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    iget v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mClientID:I

    iget v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;-><init>(IILjava/lang/String;Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;)V

    .line 657
    .local v3, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$300()Ljava/util/Map;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$300()Ljava/util/Map;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    iget v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->updateClintEntry(ILjava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$400(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;ILjava/lang/String;)V

    .line 662
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$500()Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 663
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceConnected -  USER ID   : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceConnected -  PackageName   : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceConnected -  clientId   : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mClientID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSO ComponentName className : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ssoInterface : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_d8
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "sso.enterprise.userspace.setup.success"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    .local v2, "bindingIntent":Landroid/content/Intent;
    const-string/jumbo v5, "userid"

    iget v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string v5, "pacakgeName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 674
    .local v0, "backupUID":J
    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$600(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V
    invoke-static {v5}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$700(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V
    :try_end_108
    .catchall {:try_start_1 .. :try_end_108} :catchall_10a

    .line 678
    monitor-exit p0

    return-void

    .line 652
    .end local v0    # "backupUID":J
    .end local v2    # "bindingIntent":Landroid/content/Intent;
    .end local v3    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    .end local v4    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catchall_10a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 681
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 682
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceDisconnected - USER ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSO ComponentName className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_3c
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$300()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "sso.enterprise.userspace.disconnected"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v2, "bindingIntent":Landroid/content/Intent;
    const-string/jumbo v3, "userid"

    iget v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    const-string v3, "pacakgeName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 692
    .local v0, "backupUID":J
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$600(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$700(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V

    .line 695
    return-void
.end method
