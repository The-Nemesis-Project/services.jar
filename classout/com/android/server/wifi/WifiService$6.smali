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
    .line 695
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 698
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_generalinfo_nwinfo"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "generalinfonw":Ljava/lang/String;
    const/4 v2, 0x0

    .line 701
    .local v2, "generalFW":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 702
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "String Matched General Info List"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_2f
    :try_start_2f
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/wifi"

    const-string v8, "generalinfo_nw.conf"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_69

    .line 708
    .local v5, "generalinfofilepath":Ljava/io/File;
    :try_start_38
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 709
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_64
    .catchall {:try_start_38 .. :try_end_44} :catchall_69

    move-result-object v4

    .line 711
    .local v4, "generalP":Ljava/lang/Process;
    :try_start_45
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 712
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4b} :catch_5f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_64
    .catchall {:try_start_45 .. :try_end_4b} :catchall_69

    .line 721
    .end local v4    # "generalP":Ljava/lang/Process;
    :goto_4b
    :try_start_4b
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_70
    .catchall {:try_start_4b .. :try_end_51} :catchall_69

    .line 722
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .local v3, "generalFW":Ljava/io/FileOutputStream;
    :try_start_51
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_a3
    .catchall {:try_start_51 .. :try_end_58} :catchall_a0

    move-object v2, v3

    .line 727
    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    :goto_59
    if-eqz v2, :cond_5e

    .line 729
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_97

    .line 735
    :cond_5e
    :goto_5e
    return-void

    .line 713
    .restart local v4    # "generalP":Ljava/lang/Process;
    :catch_5f
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_69

    goto :goto_4b

    .line 716
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "generalP":Ljava/lang/Process;
    :catch_64
    move-exception v0

    .line 717
    .local v0, "e":Ljava/io/IOException;
    :try_start_65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_4b

    .line 727
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "generalinfofilepath":Ljava/io/File;
    :catchall_69
    move-exception v7

    :goto_6a
    if-eqz v2, :cond_6f

    .line 729
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_8e

    .line 727
    :cond_6f
    :goto_6f
    throw v7

    .line 723
    .restart local v5    # "generalinfofilepath":Ljava/io/File;
    :catch_70
    move-exception v1

    .line 724
    .local v1, "e1":Ljava/lang/Exception;
    :goto_71
    :try_start_71
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generalinfofilepath create file failed "

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
    .catchall {:try_start_71 .. :try_end_8d} :catchall_69

    goto :goto_59

    .line 730
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v5    # "generalinfofilepath":Ljava/io/File;
    :catch_8e
    move-exception v0

    .line 731
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "WifiService"

    const-string v9, "Failed to generalFW.close."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 730
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "generalinfofilepath":Ljava/io/File;
    :catch_97
    move-exception v0

    .line 731
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "WifiService"

    const-string v8, "Failed to generalFW.close."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 727
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catchall_a0
    move-exception v7

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_6a

    .line 723
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_a3
    move-exception v1

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_71
.end method
