.class Lcom/android/server/wifi/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v15, v15, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v15}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v13

    .line 695
    .local v13, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 696
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 697
    .local v10, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v4, 0x0

    .line 698
    .local v4, "currentAP":Landroid/net/wifi/WifiConfiguration;
    const/4 v14, 0x0

    .line 699
    .local v14, "shouldBreak":Z
    const/4 v5, 0x0

    .line 700
    .local v5, "currentIsVendorAP":Z
    const/4 v11, 0x0

    .line 702
    .local v11, "netId":I
    if-eqz v10, :cond_88

    if-eqz v3, :cond_88

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    .line 705
    const/4 v15, -0x1

    if-eq v11, v15, :cond_59

    .line 706
    :try_start_31
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v4, v0

    .line 707
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v15

    if-eqz v15, :cond_59

    const-string v15, "WifiService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ConfigPriorAP netId = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_59} :catch_89

    .line 715
    :cond_59
    :goto_59
    if-eqz v4, :cond_88

    if-eqz v13, :cond_88

    if-eqz v3, :cond_88

    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_73

    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_88

    .line 718
    :cond_73
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v15}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v1

    .line 719
    .local v1, "apInfo":[Lcom/android/server/wifi/WifiService$ApInfo;
    if-nez v1, :cond_98

    .line 720
    const-string v15, "WifiService"

    const-string v16, "No VendorAP"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v1    # "apInfo":[Lcom/android/server/wifi/WifiService$ApInfo;
    :cond_88
    :goto_88
    return-void

    .line 709
    :catch_89
    move-exception v6

    .line 710
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v15

    if-eqz v15, :cond_59

    const-string v15, "WifiService"

    const-string v16, "IndexOutOfBoundsException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 723
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "apInfo":[Lcom/android/server/wifi/WifiService$ApInfo;
    :cond_98
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_99
    array-length v15, v1

    if-ge v7, v15, :cond_c0

    .line 724
    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v16

    aget-object v17, v1, v7

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiService$WifiProfile;->access$1000(Lcom/android/server/wifi/WifiService$WifiProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_136

    .line 725
    const-string v15, "WifiService"

    const-string v16, "Current AP is confirmed to be Vendor AP"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v5, 0x1

    .line 730
    :cond_c0
    if-eqz v5, :cond_88

    .line 731
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_88

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 732
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v15, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_132

    .line 733
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_e0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_132

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 734
    .local v12, "scan":Landroid/net/wifi/ScanResult;
    iget-object v15, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    move-object/from16 v16, v0

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiService;->access$1100(Lcom/android/server/wifi/WifiService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # invokes: Lcom/android/server/wifi/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v15, v2}, Lcom/android/server/wifi/WifiService;->access$1200(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/WifiConfiguration;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/wifi/WifiService;->getSecurity(Landroid/net/wifi/ScanResult;)I
    invoke-static {v0, v12}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/ScanResult;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_e0

    .line 735
    const-string v15, "WifiService"

    const-string v16, "ConfigPriorAP Req is met. It will be return to Saved Private AP"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v15, v11}, Lcom/android/server/wifi/WifiService;->disableNetwork(I)Z

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v15, v15, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v15}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 738
    const/4 v14, 0x1

    .line 743
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "scan":Landroid/net/wifi/ScanResult;
    :cond_132
    if-eqz v14, :cond_c6

    goto/16 :goto_88

    .line 723
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_136
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_99
.end method
