.class Lcom/android/server/wifi/WifiService$6;
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
    .line 839
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 842
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_generalinfo_nwinfo"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 844
    .local v5, "generalinfonw":Ljava/lang/String;
    const/4 v2, 0x0

    .line 845
    .local v2, "generalFW":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 846
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String Matched General Info List"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_30
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1502(Ljava/io/File;)Ljava/io/File;

    .line 850
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 851
    const-string v6, "WifiService"

    const-string v7, "GeneralInfo file delete is called"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 855
    :cond_52
    :try_start_52
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/misc/wifi"

    const-string v7, "generalinfo_nw.conf"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_80

    .line 857
    .local v4, "generalinfofilepath":Ljava/io/File;
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 858
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_67} :catch_7b
    .catchall {:try_start_5b .. :try_end_67} :catchall_80

    .line 864
    :goto_67
    :try_start_67
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_87
    .catchall {:try_start_67 .. :try_end_6d} :catchall_80

    .line 865
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .local v3, "generalFW":Ljava/io/FileOutputStream;
    :try_start_6d
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_ba
    .catchall {:try_start_6d .. :try_end_74} :catchall_b7

    move-object v2, v3

    .line 870
    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    :goto_75
    if-eqz v2, :cond_7a

    .line 872
    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_ae

    .line 878
    :cond_7a
    :goto_7a
    return-void

    .line 859
    :catch_7b
    move-exception v0

    .line 860
    .local v0, "e":Ljava/io/IOException;
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_67

    .line 870
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "generalinfofilepath":Ljava/io/File;
    :catchall_80
    move-exception v6

    :goto_81
    if-eqz v2, :cond_86

    .line 872
    :try_start_83
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_a5

    .line 870
    :cond_86
    :goto_86
    throw v6

    .line 866
    .restart local v4    # "generalinfofilepath":Ljava/io/File;
    :catch_87
    move-exception v1

    .line 867
    .local v1, "e1":Ljava/lang/Exception;
    :goto_88
    :try_start_88
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generalinfofilepath create file failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_88 .. :try_end_a4} :catchall_80

    goto :goto_75

    .line 873
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v4    # "generalinfofilepath":Ljava/io/File;
    :catch_a5
    move-exception v0

    .line 874
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "WifiService"

    const-string v8, "Failed to generalFW.close."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 873
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "generalinfofilepath":Ljava/io/File;
    :catch_ae
    move-exception v0

    .line 874
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "WifiService"

    const-string v7, "Failed to generalFW.close."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 870
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catchall_b7
    move-exception v6

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_81

    .line 866
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_ba
    move-exception v1

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_88
.end method
