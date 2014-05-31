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
    .line 796
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 799
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_defaultap_profile"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 801
    .local v5, "wifidefaultapprofile":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 802
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String AP List"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_2f
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1502(Ljava/io/File;)Ljava/io/File;

    .line 806
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 807
    const-string v6, "WifiService"

    const-string v7, "Default file delete is called"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 811
    :cond_51
    :try_start_51
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/misc/wifi"

    const-string v7, "default_ap.conf"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_5a} :catch_7e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_a8

    .line 813
    .local v4, "profilefilepath":Ljava/io/File;
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 814
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 664 /data/misc/wifi/default_ap.conf"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_66} :catch_79
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_66} :catch_7e

    .line 819
    :goto_66
    const/4 v2, 0x0

    .line 821
    .local v2, "fw":Ljava/io/FileOutputStream;
    :try_start_67
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_87
    .catchall {:try_start_67 .. :try_end_6d} :catchall_b1

    .line 822
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_6d
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_b9
    .catchall {:try_start_6d .. :try_end_74} :catchall_b6

    .line 826
    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    move-object v2, v3

    .line 833
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .end local v4    # "profilefilepath":Ljava/io/File;
    :goto_78
    return-void

    .line 815
    .restart local v4    # "profilefilepath":Ljava/io/File;
    :catch_79
    move-exception v0

    .line 816
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_7d} :catch_7e
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7d} :catch_a8

    goto :goto_66

    .line 828
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "profilefilepath":Ljava/io/File;
    :catch_7e
    move-exception v0

    .line 829
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "WifiService"

    const-string v7, "WiFi Profile File Create Not Found "

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 823
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "profilefilepath":Ljava/io/File;
    :catch_87
    move-exception v1

    .line 824
    .local v1, "e1":Ljava/lang/Exception;
    :goto_88
    :try_start_88
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profilefilepath create file failed "

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
    .catchall {:try_start_88 .. :try_end_a4} :catchall_b1

    .line 826
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_a7} :catch_7e
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_78

    .line 830
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .end local v4    # "profilefilepath":Ljava/io/File;
    :catch_a8
    move-exception v0

    .line 831
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "WifiService"

    const-string v7, "WiFi Profile IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 826
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "profilefilepath":Ljava/io/File;
    :catchall_b1
    move-exception v6

    :goto_b2
    :try_start_b2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_b6} :catch_7e
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b6} :catch_a8

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catchall_b6
    move-exception v6

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_b2

    .line 823
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_b9
    move-exception v1

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_88
.end method