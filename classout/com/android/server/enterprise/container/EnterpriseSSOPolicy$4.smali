.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .registers 2

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1559
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1560
    .local v4, "action":Ljava/lang/String;
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "inside mBReciever onReceive : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v18, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a4

    .line 1562
    const-string v18, "android.intent.extra.user_handle"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1563
    .local v17, "userHandle":I
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_REMOVED UserHandle : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100()Ljava/util/Map;

    move-result-object v18

    if-eqz v18, :cond_71

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100()Ljava/util/Map;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_71

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100()Ljava/util/Map;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    :cond_71
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " after removed mSSOInterfaceMap= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100()Ljava/util/Map;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$500(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    .line 1654
    .end local v17    # "userHandle":I
    :cond_a3
    :goto_a3
    return-void

    .line 1568
    :cond_a4
    const-string v18, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a3

    .line 1570
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 1571
    .local v6, "bundle":Landroid/os/Bundle;
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700()Z

    move-result v18

    if-eqz v18, :cond_bf

    .line 1572
    const-string v18, "EnterpriseSSOPolicyService"

    const-string v19, "ACTION_USER_SWITCHED "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_bf
    const-string v18, "2.0"

    const-string/jumbo v19, "version"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29f

    .line 1574
    const-string v18, "android.intent.extra.user_handle"

    const/16 v19, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1576
    .restart local v17    # "userHandle":I
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - userHandle is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v15, 0x0

    .line 1579
    .local v15, "uid":Ljava/lang/String;
    const/4 v14, -0x1

    .line 1580
    .local v14, "uID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_15b

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1583
    .local v16, "uidEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_116
    :goto_116
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1584
    .local v10, "item":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_116

    .line 1585
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-direct {v13, v10, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    .local v13, "toknizer":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    goto :goto_116

    .line 1592
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "item":Ljava/lang/String;
    .end local v13    # "toknizer":Ljava/util/StringTokenizer;
    .end local v16    # "uidEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15b
    if-eqz v15, :cond_17b

    .line 1593
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1594
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - uID is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_17b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_a3

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1599
    .local v7, "clientEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_195
    :goto_195
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1600
    .restart local v10    # "item":Ljava/lang/String;
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-direct {v13, v10, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    .restart local v13    # "toknizer":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 1603
    .local v8, "clientUid":Ljava/lang/String;
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - clientUid is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_195

    .line 1606
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, "ContainerId":Ljava/lang/String;
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - ContainerId is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_195

    .line 1611
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 1612
    .local v12, "sso":Ljava/lang/String;
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - sso is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1200()Ljava/util/Map;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 1619
    .local v5, "bIsContainKey":Z
    if-eqz v5, :cond_290

    .line 1620
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1200()Ljava/util/Map;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    .line 1623
    .local v11, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    invoke-virtual {v11}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v18

    if-eqz v18, :cond_281

    invoke-virtual {v11}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_281

    invoke-virtual {v11}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_281

    .line 1630
    const-string v18, "EnterpriseSSOPolicyService"

    const-string v19, "ACTION_USER_SWITCHED - SSO Service is already bound: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_195

    .line 1633
    :cond_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I
    invoke-static {v0, v14, v1, v12}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)I

    goto/16 :goto_195

    .line 1637
    .end local v11    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    :cond_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I
    invoke-static {v0, v14, v1, v12}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)I

    goto/16 :goto_195

    .line 1646
    .end local v3    # "ContainerId":Ljava/lang/String;
    .end local v5    # "bIsContainKey":Z
    .end local v7    # "clientEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "clientUid":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "item":Ljava/lang/String;
    .end local v12    # "sso":Ljava/lang/String;
    .end local v13    # "toknizer":Ljava/util/StringTokenizer;
    .end local v14    # "uID":I
    .end local v15    # "uid":Ljava/lang/String;
    .end local v17    # "userHandle":I
    :cond_29f
    const-string v18, "android.intent.extra.user_handle"

    const/16 v19, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1648
    .restart local v17    # "userHandle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z

    move-result v18

    if-eqz v18, :cond_a3

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_a3

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    goto/16 :goto_a3
.end method
