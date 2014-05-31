.class Lcom/android/server/connectivity/EnterpriseVpn$3;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 2

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 14
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 545
    const-string v8, "EnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interface removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    monitor-enter v8

    .line 547
    :try_start_1c
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_142

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # invokes: Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v9, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_142

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_8a

    move-result-wide v4

    .line 551
    .local v4, "token":J
    :try_start_34
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 552
    .local v3, "size":I
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v9, :cond_7e

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_7e

    move v1, v7

    .line 554
    .local v1, "forwardDns":Z
    :goto_57
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_58
    if-ge v2, v3, :cond_8d

    .line 555
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 556
    .local v6, "user":I
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_85

    move-result v9

    if-ne v9, v7, :cond_7b

    .line 558
    :try_start_6c
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V
    :try_end_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_7b} :catch_80
    .catchall {:try_start_6c .. :try_end_7b} :catchall_85

    .line 554
    :cond_7b
    :goto_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 552
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v6    # "user":I
    :cond_7e
    const/4 v1, 0x0

    goto :goto_57

    .line 559
    .restart local v1    # "forwardDns":Z
    .restart local v2    # "i":I
    .restart local v6    # "user":I
    :catch_80
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_81
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_7b

    .line 571
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "user":I
    :catchall_85
    move-exception v7

    :try_start_86
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 603
    .end local v4    # "token":J
    :catchall_8a
    move-exception v7

    monitor-exit v8
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    throw v7

    .line 565
    .restart local v1    # "forwardDns":Z
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "token":J
    :cond_8d
    :try_start_8d
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$002(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    .line 566
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v9

    if-ne v9, v7, :cond_aa

    .line 567
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V

    .line 569
    :cond_aa
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V
    :try_end_b3
    .catchall {:try_start_8d .. :try_end_b3} :catchall_85

    .line 571
    :try_start_b3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting interface to null : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$502(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-result-object v9

    if-eqz v9, :cond_10f

    .line 576
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 577
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1002(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 581
    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN State Callback : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v10, 0x2

    # invokes: Lcom/android/server/connectivity/EnterpriseVpn;->sendInterfaceStateToKnoxVpn(I)V
    invoke-static {v9, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1200(Lcom/android/server/connectivity/EnterpriseVpn;I)V

    .line 586
    :cond_10f
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v9

    if-ne v9, v7, :cond_142

    .line 587
    const-string v7, "EnterpriseVpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRouteInfo value is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v7, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/connectivity/EnterpriseVpn$3$1;

    invoke-direct {v9, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn$3;)V

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 603
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "token":J
    :cond_142
    monitor-exit v8
    :try_end_143
    .catchall {:try_start_b3 .. :try_end_143} :catchall_8a

    .line 604
    return-void
.end method
