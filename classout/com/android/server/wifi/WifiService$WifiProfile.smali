.class Lcom/android/server/wifi/WifiService$WifiProfile;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private flagForDefaultAp:Z

.field private flagForGeneralNwInfo:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1367
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2302([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1369
    # setter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2402([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1370
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    .line 1371
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1372
    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1373
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiService$WifiProfile;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiService$WifiProfile;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService$WifiProfile;

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method private checkNetworkName()V
    .registers 14

    .prologue
    .line 1579
    const-string v7, ""

    .line 1580
    .local v7, "mMCCMNC":Ljava/lang/String;
    const-string v6, ""

    .line 1581
    .local v6, "mKeymgmt":Ljava/lang/String;
    const-string v5, ""

    .line 1582
    .local v5, "mEap":Ljava/lang/String;
    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1583
    .local v8, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1584
    iget-object v10, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1585
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2602(Ljava/lang/String;)Ljava/lang/String;

    .line 1586
    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2102(Ljava/lang/String;)Ljava/lang/String;

    .line 1587
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_3f

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_3f
    :try_start_3f
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_bc

    .line 1590
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_46
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_bc

    .line 1591
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_75

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[j].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_75
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_175

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_175

    .line 1593
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2602(Ljava/lang/String;)Ljava/lang/String;

    .line 1594
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_bc

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    .end local v4    # "j":I
    :cond_bc
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_174

    .line 1600
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_c3
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_174

    .line 1601
    if-eqz v1, :cond_186

    .line 1602
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_d0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_168

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1603
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_ee

    iget-object v10, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 1604
    :cond_ee
    const-string v6, "WPA-EAP IEEE8021X"

    .line 1606
    :cond_f0
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_179

    .line 1607
    const-string v5, "SIM"

    .line 1611
    :cond_fb
    :goto_fb
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 1612
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2102(Ljava/lang/String;)Ljava/lang/String;

    .line 1613
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_160

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedPrevNetworkName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_160
    const-string v6, ""

    .line 1615
    const-string v5, ""

    .line 1616
    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2002(Z)Z

    .line 1620
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_168
    const-string v10, ""

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_186

    .line 1628
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":I
    :cond_174
    :goto_174
    return-void

    .line 1590
    .restart local v4    # "j":I
    :cond_175
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_46

    .line 1608
    .end local v4    # "j":I
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "p":I
    :cond_179
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_fb

    .line 1609
    const-string v5, "AKA"
    :try_end_184
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_184} :catch_18a

    goto/16 :goto_fb

    .line 1600
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_186
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_c3

    .line 1625
    .end local v9    # "p":I
    :catch_18a
    move-exception v2

    .line 1626
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "checkNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 19
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1492
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_d
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1495
    const-string v1, ""

    .line 1496
    .local v1, "buf1":Ljava/lang/String;
    const-string v2, ""

    .line 1498
    .local v2, "buf2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1500
    .local v6, "in":Ljava/io/BufferedReader;
    :try_start_17
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_b8
    .catchall {:try_start_17 .. :try_end_23} :catchall_c9

    .line 1503
    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufLine":Ljava/lang/String;
    if-eqz v3, :cond_d0

    .line 1504
    const-string v14, "mccmnc=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_70

    .line 1505
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1506
    .local v8, "mccmnc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1508
    goto :goto_23

    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_70
    const-string v14, "networkname=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 1509
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1510
    .local v11, "networkname":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1511
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_b5} :catch_163
    .catchall {:try_start_23 .. :try_end_b5} :catchall_15f

    move-result-object v2

    .line 1512
    goto/16 :goto_23

    .line 1514
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v11    # "networkname":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :catch_b8
    move-exception v4

    .line 1515
    .local v4, "e":Ljava/io/IOException;
    :goto_b9
    :try_start_b9
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_c9

    .line 1516
    const/4 v13, 0x0

    .line 1518
    if-eqz v6, :cond_c8

    .line 1520
    :try_start_c5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_146

    .line 1541
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c8
    :goto_c8
    return-object v13

    .line 1518
    :catchall_c9
    move-exception v14

    :goto_ca
    if-eqz v6, :cond_cf

    .line 1520
    :try_start_cc
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_13a

    .line 1518
    :cond_cf
    throw v14

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :cond_d0
    if-eqz v7, :cond_d5

    .line 1520
    :try_start_d2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_151

    .line 1528
    :cond_d5
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1529
    .local v9, "mccmncs":[Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1531
    .local v12, "networknames":[Ljava/lang/String;
    array-length v10, v9

    .line 1532
    .local v10, "networkCount":I
    new-array v13, v10, [Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1534
    .local v13, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e5
    if-ge v5, v10, :cond_12d

    .line 1535
    :try_start_e7
    new-instance v14, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v15, v9, v5

    aget-object v16, v12, v5

    invoke-direct/range {v14 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v13, v5

    .line 1536
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_12a

    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GeneralNwInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/NullPointerException; {:try_start_e7 .. :try_end_12a} :catch_12f

    .line 1534
    :cond_12a
    add-int/lit8 v5, v5, 0x1

    goto :goto_e5

    :cond_12d
    move-object v6, v7

    .line 1538
    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_c8

    .line 1539
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_12f
    move-exception v4

    .line 1540
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v13, 0x0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_c8

    .line 1521
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "i":I
    .end local v9    # "mccmncs":[Ljava/lang/String;
    .end local v10    # "networkCount":I
    .end local v12    # "networknames":[Ljava/lang/String;
    .end local v13    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :catch_13a
    move-exception v4

    .line 1522
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :goto_144
    const/4 v13, 0x0

    goto :goto_c8

    .line 1521
    :catch_146
    move-exception v4

    .line 1522
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    .line 1521
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_151
    move-exception v4

    .line 1522
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v13, 0x0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_c8

    .line 1518
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catchall_15f
    move-exception v14

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_ca

    .line 1514
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_163
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_b9
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 35
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1401
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "WifiService"

    const-string v3, "getVendorApInfoFromFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    .line 1404
    const-string v8, ""

    .line 1405
    .local v8, "buf1":Ljava/lang/String;
    const-string v9, ""

    .line 1406
    .local v9, "buf2":Ljava/lang/String;
    const-string v10, ""

    .line 1407
    .local v10, "buf3":Ljava/lang/String;
    const-string v11, ""

    .line 1408
    .local v11, "buf4":Ljava/lang/String;
    const-string v12, ""

    .line 1409
    .local v12, "buf5":Ljava/lang/String;
    const-string v13, ""

    .line 1411
    .local v13, "buf6":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1413
    .local v19, "in":Ljava/io/BufferedReader;
    :try_start_20
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_1d1
    .catchall {:try_start_20 .. :try_end_2e} :catchall_1e3

    .line 1416
    .end local v19    # "in":Ljava/io/BufferedReader;
    .local v20, "in":Ljava/io/BufferedReader;
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "bufLine":Ljava/lang/String;
    if-eqz v14, :cond_1ea

    .line 1417
    const-string/jumbo v2, "ssid=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1418
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 1419
    .local v29, "ssid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1421
    goto :goto_2e

    .end local v29    # "ssid":Ljava/lang/String;
    :cond_7e
    const-string v2, "key_mgmt="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1422
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 1423
    .local v27, "secure":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1425
    goto/16 :goto_2e

    .end local v27    # "secure":Ljava/lang/String;
    :cond_c0
    const-string/jumbo v2, "wep_key0="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 1426
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 1427
    .local v31, "wepkey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1429
    goto/16 :goto_2e

    .end local v31    # "wepkey":Ljava/lang/String;
    :cond_103
    const-string v2, "priority="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 1430
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 1431
    .local v24, "priority":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1433
    goto/16 :goto_2e

    .end local v24    # "priority":Ljava/lang/String;
    :cond_145
    const-string v2, "eap="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_187

    .line 1434
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 1435
    .local v16, "eap":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1437
    goto/16 :goto_2e

    .end local v16    # "eap":Ljava/lang/String;
    :cond_187
    const-string v2, "networkname=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1438
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 1439
    .local v22, "networkname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_1ce} :catch_378
    .catchall {:try_start_2e .. :try_end_1ce} :catchall_373

    move-result-object v13

    .line 1441
    goto/16 :goto_2e

    .line 1443
    .end local v14    # "bufLine":Ljava/lang/String;
    .end local v20    # "in":Ljava/io/BufferedReader;
    .end local v22    # "networkname":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catch_1d1
    move-exception v15

    .line 1444
    .local v15, "e":Ljava/io/IOException;
    :goto_1d2
    :try_start_1d2
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catchall {:try_start_1d2 .. :try_end_1db} :catchall_1e3

    .line 1445
    const/16 v26, 0x0

    .line 1447
    if-eqz v19, :cond_1e2

    .line 1449
    :try_start_1df
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_358

    .line 1487
    .end local v15    # "e":Ljava/io/IOException;
    :cond_1e2
    :goto_1e2
    return-object v26

    .line 1447
    :catchall_1e3
    move-exception v2

    :goto_1e4
    if-eqz v19, :cond_1e9

    .line 1449
    :try_start_1e6
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1e9} :catch_34a

    .line 1447
    :cond_1e9
    throw v2

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "bufLine":Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_1ea
    if-eqz v20, :cond_1ef

    .line 1449
    :try_start_1ec
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ef} :catch_363

    .line 1457
    :cond_1ef
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1458
    .local v30, "ssids":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1459
    .local v28, "secures":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1460
    .local v32, "wepkeys":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1461
    .local v25, "prioritys":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1462
    .local v17, "eaps":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1463
    .local v23, "networknames":[Ljava/lang/String;
    move-object/from16 v0, v30

    array-length v2, v0

    move-object/from16 v0, v28

    array-length v3, v0

    if-eq v2, v3, :cond_227

    .line 1464
    const-string v2, "WifiService"

    const-string v3, "Parse error default ap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/16 v26, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto :goto_1e2

    .line 1468
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_227
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    .line 1469
    .local v21, "networkCount":I
    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/server/wifi/WifiService$ApInfo;

    move-object/from16 v26, v0

    .line 1471
    .local v26, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :try_start_232
    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v25, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33d

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v30, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33d

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33d

    .line 1472
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_255
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_339

    .line 1473
    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f0

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f0

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f0

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f0

    .line 1474
    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    aget-object v7, v23, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18

    .line 1478
    :cond_296
    :goto_296
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2ec

    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultAp["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret[].getEap() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_2ec
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_255

    .line 1475
    :cond_2f0
    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_296

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_296

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_296

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_296

    .line 1476
    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18
    :try_end_329
    .catch Ljava/lang/NullPointerException; {:try_start_232 .. :try_end_329} :catch_32b

    goto/16 :goto_296

    .line 1485
    .end local v18    # "i":I
    :catch_32b
    move-exception v15

    .line 1486
    .local v15, "e":Ljava/lang/NullPointerException;
    const-string v2, "WifiService"

    const-string v3, "getVendorApInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/16 v26, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1e2

    .end local v15    # "e":Ljava/lang/NullPointerException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "i":I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_339
    move-object/from16 v19, v20

    .line 1480
    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1e2

    .line 1482
    .end local v18    # "i":I
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_33d
    :try_start_33d
    const-string v2, "WifiService"

    const-string v3, "No ApInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_344
    .catch Ljava/lang/NullPointerException; {:try_start_33d .. :try_end_344} :catch_32b

    .line 1483
    const/16 v26, 0x0

    .end local v26    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1e2

    .line 1450
    .end local v14    # "bufLine":Ljava/lang/String;
    .end local v17    # "eaps":[Ljava/lang/String;
    .end local v21    # "networkCount":I
    .end local v23    # "networknames":[Ljava/lang/String;
    .end local v25    # "prioritys":[Ljava/lang/String;
    .end local v28    # "secures":[Ljava/lang/String;
    .end local v30    # "ssids":[Ljava/lang/String;
    .end local v32    # "wepkeys":[Ljava/lang/String;
    :catch_34a
    move-exception v15

    .line 1451
    .local v15, "e":Ljava/io/IOException;
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :goto_354
    const/16 v26, 0x0

    goto/16 :goto_1e2

    .line 1450
    :catch_358
    move-exception v15

    .line 1451
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_354

    .line 1450
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "bufLine":Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :catch_363
    move-exception v15

    .line 1451
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/16 v26, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1e2

    .line 1447
    .end local v14    # "bufLine":Ljava/lang/String;
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :catchall_373
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1e4

    .line 1443
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :catch_378
    move-exception v15

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1d2
.end method


# virtual methods
.method public addChangedWifiProfile()V
    .registers 9

    .prologue
    .line 1631
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1632
    .local v4, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1633
    .local v5, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1634
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .line 1636
    .local v3, "mRes":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    .line 1638
    :try_start_1e
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    if-eqz v6, :cond_e2

    .line 1639
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_25
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_e2

    .line 1640
    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bd

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1641
    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1643
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1644
    const/4 v6, 0x2

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1645
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1646
    const-string v6, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 1647
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 1648
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 1650
    :cond_99
    const-string v6, "SIM"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 1651
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1654
    :cond_b1
    :goto_b1
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 1655
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1656
    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1802(Z)Z

    .line 1639
    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    .line 1652
    :cond_c1
    const-string v6, "AKA"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 1653
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_d9
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_d9} :catch_da

    goto :goto_b1

    .line 1660
    .end local v2    # "k":I
    :catch_da
    move-exception v1

    .line 1661
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile - NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_e2
    return-void
.end method

.method public addWifiVendorProfile()V
    .registers 8

    .prologue
    .line 1549
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1550
    .local v3, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1551
    .local v4, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 1553
    .local v2, "mRes":I
    :try_start_15
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    if-eqz v5, :cond_bc

    .line 1554
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_bc

    .line 1555
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_30

    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_30
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1557
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1558
    const/4 v5, 0x2

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1559
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1560
    const-string v5, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 1561
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 1562
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 1564
    :cond_74
    const-string v5, "SIM"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 1565
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1568
    :cond_8c
    :goto_8c
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 1569
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1570
    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$1802(Z)Z

    .line 1554
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1566
    :cond_9b
    const-string v5, "AKA"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 1567
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_b3
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_b3} :catch_b4

    goto :goto_8c

    .line 1573
    .end local v1    # "i":I
    :catch_b4
    move-exception v0

    .line 1574
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile - NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_bc
    return-void
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 3

    .prologue
    .line 1390
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_9

    .line 1391
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1397
    :goto_8
    return-object v0

    .line 1392
    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1394
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1395
    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2402([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1397
    :cond_23
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_8
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 3

    .prologue
    .line 1376
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    if-eqz v0, :cond_9

    .line 1377
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1386
    :goto_8
    return-object v0

    .line 1378
    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1379
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    .line 1381
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1382
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2302([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1386
    :cond_34
    :goto_34
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_8

    .line 1383
    :cond_39
    const-string v0, "Private"

    # getter for: Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1384
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2302([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    goto :goto_34
.end method

.method public removeChangedWifiProfile()V
    .registers 11

    .prologue
    .line 1666
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1667
    .local v6, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1668
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, ""

    .line 1669
    .local v5, "mKeymgmt":Ljava/lang/String;
    const-string v4, ""

    .line 1671
    .local v4, "mEap":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    .line 1673
    :try_start_12
    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_bf

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    if-eqz v8, :cond_bf

    .line 1674
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_27
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_bf

    .line 1675
    if-eqz v1, :cond_cc

    .line 1676
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1677
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_52

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 1678
    :cond_52
    const-string v5, "WPA-EAP IEEE8021X"

    .line 1680
    :cond_54
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_c0

    .line 1681
    const-string v4, "SIM"

    .line 1685
    :cond_5f
    :goto_5f
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 1686
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_a2

    const-string v8, "WifiService"

    const-string v9, "remove proper wifi profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_a2
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiService;->removeNetwork(I)Z

    .line 1688
    const-string v5, ""

    .line 1689
    const-string v4, ""

    .line 1690
    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$1802(Z)Z

    .line 1691
    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$2202(Z)Z
    :try_end_b5
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_b5} :catch_b7

    goto/16 :goto_34

    .line 1697
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "p":I
    :catch_b7
    move-exception v2

    .line 1698
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v8, "WifiService"

    const-string v9, "removeChangedWifiProfile - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_bf
    return-void

    .line 1682
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "p":I
    :cond_c0
    :try_start_c0
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5f

    .line 1683
    const-string v4, "AKA"
    :try_end_cb
    .catch Ljava/lang/NullPointerException; {:try_start_c0 .. :try_end_cb} :catch_b7

    goto :goto_5f

    .line 1674
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_cc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_27
.end method
