.class Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;
.super Landroid/os/Handler;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 2

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1841
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1845
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1846
    .local v6, "data":Landroid/os/Bundle;
    const-string v13, "command"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1847
    .local v1, "command":Ljava/lang/String;
    const-string v13, "type"

    const/4 v14, -0x1

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1848
    .local v12, "type":I
    const-string v13, "containerid"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1850
    .local v5, "containerId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    .local v4, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, " "

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1852
    .local v3, "commandArray":[Ljava/lang/String;
    const-string v11, ""

    .line 1853
    .local v11, "result":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_28
    if-ge v8, v9, :cond_32

    aget-object v2, v0, v8

    .line 1854
    .local v2, "commandArg":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1853
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 1857
    .end local v2    # "commandArg":Ljava/lang/String;
    :cond_32
    :try_start_32
    new-instance v13, Ljava/lang/ProcessBuilder;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v10

    .line 1859
    .local v10, "process":Ljava/lang/Process;
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 1860
    iget-object v13, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    invoke-static {v13, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v11

    .line 1861
    iget-object v13, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z
    invoke-static {v13, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_65

    .line 1862
    iget-object v13, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    iget-object v14, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v14

    aget-object v14, v14, v5

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    invoke-static {v13, v14, v1, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_65} :catch_66
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_65} :catch_6f

    .line 1869
    .end local v10    # "process":Ljava/lang/Process;
    :cond_65
    :goto_65
    return-void

    .line 1864
    :catch_66
    move-exception v7

    .line 1865
    .local v7, "e":Ljava/io/IOException;
    const-string v13, "FirewallPolicy"

    const-string v14, "IOException iptables command failed "

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 1866
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6f
    move-exception v7

    .line 1867
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v13, "FirewallPolicy"

    const-string v14, "InterruptedException iptables command failed "

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method
