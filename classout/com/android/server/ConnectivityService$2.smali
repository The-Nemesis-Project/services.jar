.class Lcom/android/server/ConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 11
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 2573
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2574
    :try_start_7
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2575
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_13
    if-ge v1, v3, :cond_23

    aget-object v2, v0, v1

    .line 2576
    .local v2, "iface":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2575
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2579
    .end local v2    # "iface":Ljava/lang/String;
    :cond_23
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v6

    const/16 v8, 0xb

    aget-object v5, v6, v8

    .line 2580
    .local v5, "network":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_5d

    .line 2581
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 2582
    .local v4, "linkPropertie":Landroid/net/LinkProperties;
    if-eqz v4, :cond_5d

    .line 2583
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2584
    .restart local v2    # "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 2585
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_5f

    move-result v6

    if-eqz v6, :cond_5d

    .line 2587
    :try_start_4b
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 2588
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_62
    .catchall {:try_start_4b .. :try_end_5d} :catchall_5f

    .line 2597
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "linkPropertie":Landroid/net/LinkProperties;
    :cond_5d
    :goto_5d
    :try_start_5d
    monitor-exit v7

    .line 2598
    return-void

    .line 2597
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "network":Landroid/net/NetworkStateTracker;
    :catchall_5f
    move-exception v6

    monitor-exit v7
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_5f

    throw v6

    .line 2589
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "iface":Ljava/lang/String;
    .restart local v3    # "len$":I
    .restart local v4    # "linkPropertie":Landroid/net/LinkProperties;
    .restart local v5    # "network":Landroid/net/NetworkStateTracker;
    :catch_62
    move-exception v6

    goto :goto_5d
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 6
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 2609
    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v1

    .line 2610
    .local v1, "networkType":I
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2611
    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    aget-object v2, v3, v1

    .line 2612
    .local v2, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_27

    .line 2613
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2614
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2615
    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 2619
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_27
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 2555
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2557
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2558
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_16

    monitor-exit v2

    .line 2564
    :goto_15
    return-void

    .line 2560
    :cond_16
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2561
    monitor-exit v2

    goto :goto_15

    .end local v0    # "oldRules":I
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
