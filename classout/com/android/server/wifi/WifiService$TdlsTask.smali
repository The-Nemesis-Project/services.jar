.class Lcom/android/server/wifi/WifiService$TdlsTask;
.super Landroid/os/AsyncTask;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TdlsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/wifi/WifiService$TdlsTaskParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    .prologue
    .line 2812
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$TdlsTask;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/wifi/WifiService$TdlsTaskParams;)Ljava/lang/Integer;
    .registers 16
    .param p1, "params"    # [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    .prologue
    .line 2817
    const/4 v11, 0x0

    aget-object v6, p1, v11

    .line 2818
    .local v6, "param":Lcom/android/server/wifi/WifiService$TdlsTaskParams;
    iget-object v11, v6, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 2819
    .local v9, "remoteIpAddress":Ljava/lang/String;
    iget-boolean v1, v6, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->enable:Z

    .line 2822
    .local v1, "enable":Z
    const/4 v5, 0x0

    .line 2824
    .local v5, "macAddress":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2827
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_d
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    const-string v12, "/proc/net/arp"

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_a3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_84
    .catchall {:try_start_d .. :try_end_19} :catchall_92

    .line 2830
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_19
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2832
    .local v3, "line":Ljava/lang/String;
    :cond_1d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 2833
    const-string v11, "[ ]+"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2834
    .local v10, "tokens":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x6

    if-lt v11, v12, :cond_1d

    .line 2840
    const/4 v11, 0x0

    aget-object v2, v10, v11

    .line 2841
    .local v2, "ip":Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v4, v10, v11

    .line 2843
    .local v4, "mac":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 2844
    move-object v5, v4

    .line 2849
    .end local v2    # "ip":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v10    # "tokens":[Ljava/lang/String;
    :cond_3a
    if-nez v5, :cond_6d

    .line 2850
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did not find remoteAddress {"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "} in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/proc/net/arp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_61} :catch_73
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_61} :catch_a0
    .catchall {:try_start_19 .. :try_end_61} :catchall_9d

    .line 2862
    :goto_61
    if-eqz v8, :cond_66

    .line 2863
    :try_start_63
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_9b

    :cond_66
    :goto_66
    move-object v7, v8

    .line 2871
    .end local v3    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_67
    :goto_67
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    return-object v11

    .line 2853
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_6d
    :try_start_6d
    iget-object v11, p0, Lcom/android/server/wifi/WifiService$TdlsTask;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v11, v5, v1}, Lcom/android/server/wifi/WifiService;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_72} :catch_73
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_72} :catch_a0
    .catchall {:try_start_6d .. :try_end_72} :catchall_9d

    goto :goto_61

    .line 2856
    .end local v3    # "line":Ljava/lang/String;
    :catch_73
    move-exception v0

    move-object v7, v8

    .line 2857
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_75
    :try_start_75
    const-string v11, "WifiService"

    const-string v12, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_92

    .line 2862
    if-eqz v7, :cond_67

    .line 2863
    :try_start_7e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_67

    .line 2866
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_82
    move-exception v11

    goto :goto_67

    .line 2858
    :catch_84
    move-exception v0

    .line 2859
    .local v0, "e":Ljava/io/IOException;
    :goto_85
    :try_start_85
    const-string v11, "WifiService"

    const-string v12, "Could not read /proc/net/arp to lookup mac address"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_92

    .line 2862
    if-eqz v7, :cond_67

    .line 2863
    :try_start_8e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_82

    goto :goto_67

    .line 2861
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_92
    move-exception v11

    .line 2862
    :goto_93
    if-eqz v7, :cond_98

    .line 2863
    :try_start_95
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    .line 2861
    :cond_98
    :goto_98
    throw v11

    .line 2866
    :catch_99
    move-exception v12

    goto :goto_98

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_9b
    move-exception v11

    goto :goto_66

    .line 2861
    .end local v3    # "line":Ljava/lang/String;
    :catchall_9d
    move-exception v11

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_93

    .line 2858
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_a0
    move-exception v0

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_85

    .line 2856
    :catch_a3
    move-exception v0

    goto :goto_75
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2812
    check-cast p1, [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiService$TdlsTask;->doInBackground([Lcom/android/server/wifi/WifiService$TdlsTaskParams;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
