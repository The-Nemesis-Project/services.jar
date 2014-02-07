.class Lcom/android/server/UltrasonicService;
.super Landroid/app/IUltrasonicService$Stub;
.source "UltrasonicService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UltrasonicService"


# instance fields
.field private id_value:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/IUltrasonicService$Stub;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/UltrasonicService;->id_value:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/server/UltrasonicService;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public get_ultra_id()Ljava/lang/String;
    .registers 6

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 127
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/ultrasonic/ultrasonic/read"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2f
    .catchall {:try_start_1 .. :try_end_d} :catchall_3b

    .line 128
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/UltrasonicService;->id_value:Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_17} :catch_52
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_4f
    .catchall {:try_start_d .. :try_end_17} :catchall_4c

    .line 134
    if-eqz v2, :cond_1c

    .line 136
    :try_start_19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_47

    :cond_1c
    :goto_1c
    move-object v1, v2

    .line 143
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :cond_1d
    :goto_1d
    iget-object v3, p0, Lcom/android/server/UltrasonicService;->id_value:Ljava/lang/String;

    return-object v3

    .line 129
    :catch_20
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_21
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3b

    .line 134
    if-eqz v1, :cond_1d

    .line 136
    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1d

    .line 137
    :catch_2a
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/io/IOException;
    :goto_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 131
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2f
    move-exception v0

    .line 132
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3b

    .line 134
    if-eqz v1, :cond_1d

    .line 136
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_1d

    .line 137
    :catch_39
    move-exception v0

    goto :goto_2b

    .line 134
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_3b
    move-exception v3

    :goto_3c
    if-eqz v1, :cond_41

    .line 136
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 134
    :cond_41
    :goto_41
    throw v3

    .line 137
    :catch_42
    move-exception v0

    .line 138
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 137
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_47
    move-exception v0

    .line 138
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 134
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_4c
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3c

    .line 131
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_4f
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_30

    .line 129
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_52
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_21
.end method

.method public ultra_disable()V
    .registers 5

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/ultrasonic/ultrasonic/enable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 86
    .local v1, "out":Ljava/io/OutputStream;
    if-eqz v1, :cond_16

    .line 87
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 88
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_1c

    .line 121
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_16
    :goto_16
    return-void

    .line 91
    :catch_17
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 94
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :catch_1c
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method

.method public ultra_enable()V
    .registers 5

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/ultrasonic/ultrasonic/enable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 44
    .local v1, "out":Ljava/io/OutputStream;
    if-eqz v1, :cond_16

    .line 45
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 46
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_1c

    .line 80
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_16
    :goto_16
    return-void

    .line 49
    :catch_17
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 52
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :catch_1c
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method
