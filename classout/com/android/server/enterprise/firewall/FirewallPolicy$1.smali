.class Lcom/android/server/enterprise/firewall/FirewallPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 2

    .prologue
    .line 3719
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized enableRulesWithContainerId(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 3742
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I
    invoke-static {v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)I

    move-result v0

    .line 3743
    .local v0, "proxyUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V
    invoke-static {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$700(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/app/enterprise/ContextInfo;)V

    .line 3745
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;

    .line 3746
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$900(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 3747
    monitor-exit p0

    return-void

    .line 3742
    .end local v0    # "proxyUid":I
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3722
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3723
    :cond_18
    const-string v3, "FirewallPolicy"

    const-string v4, "Received intent: android.intent.action.BOOT_COMPLETEDor android.intent.action.USER_ADDED"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3727
    .local v0, "containerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->enableRulesWithContainerId(I)V

    .line 3728
    if-eqz v0, :cond_44

    .line 3729
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 3730
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->enableRulesWithContainerId(I)V

    .line 3729
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 3733
    .end local v2    # "i":I
    :cond_44
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRules()Z

    .line 3734
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4e} :catch_4f

    .line 3739
    .end local v0    # "containerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4e
    :goto_4e
    return-void

    .line 3735
    :catch_4f
    move-exception v1

    .line 3736
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FirewallPolicy"

    const-string v4, "Exception: "

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e
.end method
