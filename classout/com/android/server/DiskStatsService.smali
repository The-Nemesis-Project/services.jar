.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "path"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v9, 0x0

    .line 89
    :try_start_2
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 90
    .local v5, "statfs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 91
    .local v2, "bsize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 92
    .local v0, "avail":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 93
    .local v6, "total":J
    cmp-long v8, v2, v9

    if-lez v8, :cond_22

    cmp-long v8, v6, v9

    if-gtz v8, :cond_60

    .line 94
    :cond_22
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid stat: bsize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " avail="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " total="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_4f} :catch_4f

    .line 106
    .end local v0    # "avail":J
    .end local v2    # "bsize":J
    .end local v5    # "statfs":Landroid/os/StatFs;
    .end local v6    # "total":J
    :catch_4f
    move-exception v4

    .line 107
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    const-string v8, "-Error: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5f
    return-void

    .line 98
    .restart local v0    # "avail":J
    .restart local v2    # "bsize":J
    .restart local v5    # "statfs":Landroid/os/StatFs;
    .restart local v6    # "total":J
    :cond_60
    :try_start_60
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    const-string v8, "-Free: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    mul-long v8, v0, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 101
    const-string v8, "K / "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    mul-long v8, v6, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 103
    const-string v8, "K total = "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    div-long/2addr v8, v6

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 105
    const-string v8, "% free"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_8e} :catch_4f

    goto :goto_5f
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 47
    iget-object v12, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    const-string v14, "DiskStatsService"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v12, 0x200

    new-array v10, v12, [B

    .line 51
    .local v10, "junk":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    array-length v12, v10

    if-ge v9, v12, :cond_17

    int-to-byte v12, v9

    aput-byte v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 53
    :cond_17
    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    const-string/jumbo v13, "system/perftest.tmp"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v11, "tmp":Ljava/io/File;
    const/4 v7, 0x0

    .line 55
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 57
    .local v6, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 59
    .local v3, "before":J
    :try_start_29
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_7b
    .catchall {:try_start_29 .. :try_end_2e} :catchall_85

    .line 60
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2e
    invoke-virtual {v8, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_a9
    .catchall {:try_start_2e .. :try_end_31} :catchall_a6

    .line 64
    if-eqz v8, :cond_36

    :try_start_33
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_a4

    :cond_36
    :goto_36
    move-object v7, v8

    .line 67
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_37
    :goto_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 68
    .local v1, "after":J
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_44

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 70
    :cond_44
    if-eqz v6, :cond_8c

    .line 71
    const-string v12, "Test-Error: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :goto_56
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "Data"

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v13, v0}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 80
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "Cache"

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v13, v0}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 81
    new-instance v12, Ljava/io/File;

    const-string v13, "/system"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v13, "System"

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v13, v0}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 85
    return-void

    .line 61
    .end local v1    # "after":J
    :catch_7b
    move-exception v5

    .line 62
    .local v5, "e":Ljava/io/IOException;
    :goto_7c
    move-object v6, v5

    .line 64
    if-eqz v7, :cond_37

    :try_start_7f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_37

    :catch_83
    move-exception v12

    goto :goto_37

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_85
    move-exception v12

    :goto_86
    if-eqz v7, :cond_8b

    :try_start_88
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_a2

    :cond_8b
    :goto_8b
    throw v12

    .line 74
    .restart local v1    # "after":J
    :cond_8c
    const-string v12, "Latency: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    sub-long v12, v1, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 76
    const-string v12, "ms [512B Data Write]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 64
    .end local v1    # "after":J
    :catch_a2
    move-exception v13

    goto :goto_8b

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_a4
    move-exception v12

    goto :goto_36

    :catchall_a6
    move-exception v12

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_86

    .line 61
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_a9
    move-exception v5

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7c
.end method
