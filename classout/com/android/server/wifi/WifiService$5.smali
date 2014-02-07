.class Lcom/android/server/wifi/WifiService$5;
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
    .line 651
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 654
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_defaultap_profile"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, "wifidefaultapprofile":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 657
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "String AP List"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2e
    :try_start_2e
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/wifi"

    const-string v8, "default_ap.conf"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_37} :catch_67
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_91

    .line 663
    .local v5, "profilefilepath":Ljava/io/File;
    :try_start_37
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 664
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "chmod 664 /data/misc/wifi/default_ap.conf"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_43} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_43} :catch_67

    move-result-object v4

    .line 666
    .local v4, "p":Ljava/lang/Process;
    :try_start_44
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 667
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4a} :catch_5d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4a} :catch_67

    .line 675
    .end local v4    # "p":Ljava/lang/Process;
    :goto_4a
    const/4 v2, 0x0

    .line 677
    .local v2, "fw":Ljava/io/FileOutputStream;
    :try_start_4b
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_70
    .catchall {:try_start_4b .. :try_end_51} :catchall_9a

    .line 678
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_51
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_a2
    .catchall {:try_start_51 .. :try_end_58} :catchall_9f

    .line 682
    :try_start_58
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_67
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_91

    move-object v2, v3

    .line 689
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .end local v5    # "profilefilepath":Ljava/io/File;
    :goto_5c
    return-void

    .line 668
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "profilefilepath":Ljava/io/File;
    :catch_5d
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_61} :catch_67

    goto :goto_4a

    .line 671
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "p":Ljava/lang/Process;
    :catch_62
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    :try_start_63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_66} :catch_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_91

    goto :goto_4a

    .line 684
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "profilefilepath":Ljava/io/File;
    :catch_67
    move-exception v0

    .line 685
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "WifiService"

    const-string v8, "WiFi Profile File Create Not Found "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 679
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "profilefilepath":Ljava/io/File;
    :catch_70
    move-exception v1

    .line 680
    .local v1, "e1":Ljava/lang/Exception;
    :goto_71
    :try_start_71
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profilefilepath create file failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_9a

    .line 682
    :try_start_8d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_90} :catch_67
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_5c

    .line 686
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .end local v5    # "profilefilepath":Ljava/io/File;
    :catch_91
    move-exception v0

    .line 687
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "WifiService"

    const-string v8, "WiFi Profile IOException"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 682
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "profilefilepath":Ljava/io/File;
    :catchall_9a
    move-exception v7

    :goto_9b
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v7
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_9f} :catch_67
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9f} :catch_91

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catchall_9f
    move-exception v7

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_9b

    .line 679
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_a2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_71
.end method
