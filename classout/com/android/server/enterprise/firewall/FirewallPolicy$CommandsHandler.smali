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
    .line 1939
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1940
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1944
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 1945
    .local v9, "data":Landroid/os/Bundle;
    const-string v18, "command"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1946
    .local v3, "command":Ljava/lang/String;
    const-string/jumbo v18, "type"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1947
    .local v15, "type":I
    const-string v18, "containerid"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1949
    .local v8, "containerId":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1950
    .local v6, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1951
    .local v5, "commandArray":[Ljava/lang/String;
    const-string v14, ""

    .line 1953
    .local v14, "result":Ljava/lang/String;
    move-object v2, v5

    .local v2, "arr$":[Ljava/lang/String;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_37
    if-ge v11, v12, :cond_41

    aget-object v4, v2, v11

    .line 1954
    .local v4, "commandArg":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1953
    add-int/lit8 v11, v11, 0x1

    goto :goto_37

    .line 1958
    .end local v4    # "commandArg":Ljava/lang/String;
    :cond_41
    :try_start_41
    new-instance v18, Ljava/lang/ProcessBuilder;

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v13

    .line 1961
    .local v13, "process":Ljava/lang/Process;
    invoke-virtual {v13}, Ljava/lang/Process;->waitFor()I

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v14

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z
    invoke-static {v0, v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_cb

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1965
    .local v16, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_87
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_cb

    .line 1966
    const/4 v7, 0x0

    .local v7, "container":I
    :goto_92
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v7, v0, :cond_c0

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v20

    move/from16 v1, v18

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    invoke-static {v0, v1, v3, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_bd} :catch_c3
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_bd} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_bd} :catch_d5

    .line 1966
    add-int/lit8 v7, v7, 0x1

    goto :goto_92

    .line 1965
    :cond_c0
    add-int/lit8 v17, v17, 0x1

    goto :goto_87

    .line 1971
    .end local v7    # "container":I
    .end local v13    # "process":Ljava/lang/Process;
    .end local v16    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "x":I
    :catch_c3
    move-exception v10

    .line 1972
    .local v10, "e":Ljava/io/IOException;
    const-string v18, "FirewallPolicy"

    const-string v19, "IOException iptables command failed "

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    .end local v10    # "e":Ljava/io/IOException;
    :cond_cb
    :goto_cb
    return-void

    .line 1973
    :catch_cc
    move-exception v10

    .line 1974
    .local v10, "e":Ljava/lang/InterruptedException;
    const-string v18, "FirewallPolicy"

    const-string v19, "InterruptedException iptables command failed "

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    .line 1975
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_d5
    move-exception v10

    .line 1976
    .local v10, "e":Ljava/lang/Exception;
    const-string v18, "FirewallPolicy"

    const-string v19, "Exception on CommandThread"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb
.end method
