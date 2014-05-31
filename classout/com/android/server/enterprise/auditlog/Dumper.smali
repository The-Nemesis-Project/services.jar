.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mZos:Ljava/util/zip/GZIPOutputStream;


# direct methods
.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 10
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "obs"    # Lcom/android/server/enterprise/auditlog/IObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const-string v0, "Dumper"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 66
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 67
    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 68
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 69
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 70
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 73
    return-void
.end method

.method private fullDump()V
    .registers 11

    .prologue
    .line 252
    const/4 v5, 0x0

    .line 253
    .local v5, "raf":Ljava/io/RandomAccessFile;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 260
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :cond_8
    :goto_8
    :try_start_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 262
    .local v4, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 263
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_b9
    .catchall {:try_start_8 .. :try_end_29} :catchall_94

    .line 265
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :try_start_29
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_72

    .line 266
    :cond_2d
    :goto_2d
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_87

    .line 267
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 268
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_57} :catch_58
    .catchall {:try_start_29 .. :try_end_57} :catchall_b7

    goto :goto_2d

    .line 279
    .end local v3    # "line":Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 280
    .end local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v0, "e":Ljava/lang/Exception;
    :goto_59
    const/4 v7, 0x0

    :try_start_5a
    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 281
    const-string v7, "Dumper"

    const-string v8, "fullDump.Exception"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5a .. :try_end_6c} :catchall_b7

    .line 284
    if-eqz v5, :cond_71

    .line 286
    :try_start_6e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_a5

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_71
    :goto_71
    return-void

    .line 272
    .restart local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_72
    :try_start_72
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v1, v7, [B

    .line 273
    .local v1, "fileBytes":[B
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v5, v1, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 274
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 276
    .end local v1    # "fileBytes":[B
    :cond_87
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8a} :catch_58
    .catchall {:try_start_72 .. :try_end_8a} :catchall_b7

    move-object v6, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .line 284
    .end local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_8d
    if-eqz v6, :cond_92

    .line 286
    :try_start_8f
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_ae

    :cond_92
    :goto_92
    move-object v5, v6

    .line 291
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_71

    .line 284
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_94
    move-exception v7

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :goto_96
    if-eqz v5, :cond_9b

    .line 286
    :try_start_98
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 284
    :cond_9b
    :goto_9b
    throw v7

    .line 287
    :catch_9c
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "fullDump.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    :catch_a5
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "fullDump.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_ae
    move-exception v0

    .line 288
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "fullDump.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_b7
    move-exception v7

    goto :goto_96

    .line 279
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_b9
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_59
.end method

.method private readFileLineByLine(Ljava/io/File;)V
    .registers 12
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 174
    const/4 v4, 0x0

    .line 175
    .local v4, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "aTime":J
    :try_start_3
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c1
    .catchall {:try_start_3 .. :try_end_a} :catchall_bf

    .line 182
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :cond_a
    :goto_a
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 183
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_65
    .catchall {:try_start_a .. :try_end_15} :catchall_a4

    move-result-object v6

    .line 186
    .local v6, "time":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_17
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_20} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_65
    .catchall {:try_start_17 .. :try_end_20} :catchall_a4

    move-result-wide v0

    .line 191
    :try_start_21
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_23} :catch_65
    .catchall {:try_start_21 .. :try_end_23} :catchall_a4

    cmp-long v7, v0, v7

    if-lez v7, :cond_30

    .line 208
    .end local v6    # "time":[Ljava/lang/String;
    :cond_27
    if-eqz v5, :cond_2c

    .line 210
    :try_start_29
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_b5

    :cond_2c
    :goto_2c
    move-object v4, v5

    .line 216
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_2d
    :goto_2d
    return-void

    .line 187
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "time":[Ljava/lang/String;
    :catch_2e
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_a

    .line 194
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_30
    :try_start_30
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v7, v0, v7

    if-ltz v7, :cond_a

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v0, v7

    if-gez v7, :cond_a

    .line 195
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_86

    .line 196
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 197
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_64} :catch_65
    .catchall {:try_start_30 .. :try_end_64} :catchall_a4

    goto :goto_a

    .line 204
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "time":[Ljava/lang/String;
    :catch_65
    move-exception v2

    move-object v4, v5

    .line 205
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_67
    :try_start_67
    const-string v7, "Dumper"

    const-string v8, "readFileLineByLine.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_bf

    .line 208
    if-eqz v4, :cond_2d

    .line 210
    :try_start_79
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_2d

    .line 211
    :catch_7d
    move-exception v2

    .line 212
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "readFileLineByLine.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "time":[Ljava/lang/String;
    :cond_86
    :try_start_86
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a2} :catch_65
    .catchall {:try_start_86 .. :try_end_a2} :catchall_a4

    goto/16 :goto_a

    .line 208
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "time":[Ljava/lang/String;
    :catchall_a4
    move-exception v7

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_a6
    if-eqz v4, :cond_ab

    .line 210
    :try_start_a8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    .line 208
    :cond_ab
    :goto_ab
    throw v7

    .line 211
    :catch_ac
    move-exception v2

    .line 212
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "readFileLineByLine.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    .line 211
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_b5
    move-exception v2

    .line 212
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "readFileLineByLine.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 208
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_bf
    move-exception v7

    goto :goto_a6

    .line 204
    :catch_c1
    move-exception v2

    goto :goto_67
.end method

.method private readFullFile(Ljava/io/File;)V
    .registers 10
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 223
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 224
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_8e
    .catchall {:try_start_1 .. :try_end_e} :catchall_75

    .line 226
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_e
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v5, :cond_5e

    .line 227
    :cond_12
    :goto_12
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_4e

    .line 228
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 229
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3c} :catch_3d
    .catchall {:try_start_e .. :try_end_3c} :catchall_8b

    goto :goto_12

    .line 238
    .end local v2    # "line":Ljava/lang/String;
    :catch_3d
    move-exception v0

    move-object v3, v4

    .line 239
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :goto_3f
    :try_start_3f
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_75

    .line 241
    if-eqz v3, :cond_4d

    .line 243
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_85

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-void

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_4e
    move-object v3, v4

    .line 241
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_4f
    :goto_4f
    if-eqz v3, :cond_4d

    .line 243
    :try_start_51
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_4d

    .line 244
    :catch_55
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Dumper"

    const-string v6, "readFullFile.IOException"

    :goto_5a
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v1, v5, [B

    .line 234
    .local v1, "fileBytes":[B
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 235
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_73} :catch_3d
    .catchall {:try_start_5e .. :try_end_73} :catchall_8b

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4f

    .line 241
    .end local v1    # "fileBytes":[B
    :catchall_75
    move-exception v5

    :goto_76
    if-eqz v3, :cond_7b

    .line 243
    :try_start_78
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 241
    :cond_7b
    :goto_7b
    throw v5

    .line 244
    :catch_7c
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "Dumper"

    const-string v7, "readFullFile.IOException"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :catch_85
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Dumper"

    const-string v6, "readFullFile.IOException"

    goto :goto_5a

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_8b
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_76

    .line 238
    :catch_8e
    move-exception v0

    goto :goto_3f
.end method

.method private selectDumpInterval()V
    .registers 8

    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 146
    .local v1, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 147
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v0, 0x1

    .line 149
    .local v0, "firstFile":Z
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 151
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 153
    .restart local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_8

    .line 156
    if-eqz v0, :cond_2f

    .line 157
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 158
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    .line 159
    const/4 v0, 0x0

    .line 160
    goto :goto_8

    .line 163
    :cond_2f
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_41

    .line 164
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFullFile(Ljava/io/File;)V

    goto :goto_8

    .line 166
    :cond_41
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    .line 171
    :cond_48
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 85
    const/4 v2, 0x0

    .line 88
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_15b
    .catchall {:try_start_3 .. :try_end_e} :catchall_159

    .line 89
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .local v3, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_e
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    .line 93
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 94
    const-string v5, "----------------------------------------------\n"

    .line 95
    .local v5, "separator":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 97
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, "it":Ljava/util/Iterator;
    if-eqz v4, :cond_94

    .line 99
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "temp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_61} :catch_62
    .catchall {:try_start_e .. :try_end_61} :catchall_102

    goto :goto_37

    .line 118
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_62
    move-exception v1

    move-object v2, v3

    .line 119
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_64
    :try_start_64
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 121
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_159

    .line 123
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v7, v8, v9}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 126
    :try_start_80
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v7, :cond_8e

    .line 127
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 128
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8e} :catch_133

    .line 135
    :cond_8e
    :goto_8e
    if-eqz v2, :cond_93

    .line 136
    :try_start_90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_13d

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    :cond_93
    :goto_93
    return-void

    .line 106
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "separator":Ljava/lang/String;
    :cond_94
    :try_start_94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump Log Generated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "dateAndTime":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 109
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 110
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v7, v10

    if-ltz v7, :cond_d6

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v7, v7, v10

    if-gez v7, :cond_fe

    .line 111
    :cond_d6
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 112
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v7, :cond_e0

    .line 113
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_e0} :catch_62
    .catchall {:try_start_94 .. :try_end_e0} :catchall_102

    .line 123
    :cond_e0
    :goto_e0
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v7, v8, v9}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 126
    :try_start_e9
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v7, :cond_f7

    .line 127
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 128
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f7} :catch_147

    .line 135
    :cond_f7
    :goto_f7
    if-eqz v3, :cond_fc

    .line 136
    :try_start_f9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_150

    :cond_fc
    :goto_fc
    move-object v2, v3

    .line 140
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_93

    .line 115
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    :cond_fe
    :try_start_fe
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_62
    .catchall {:try_start_fe .. :try_end_101} :catchall_102

    goto :goto_e0

    .line 123
    .end local v0    # "dateAndTime":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    :catchall_102
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_104
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v8, v9, v10}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 126
    :try_start_10d
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v8, :cond_11b

    .line 127
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 128
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_11b} :catch_121

    .line 135
    :cond_11b
    :goto_11b
    if-eqz v2, :cond_120

    .line 136
    :try_start_11d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_12a

    .line 123
    :cond_120
    :goto_120
    throw v7

    .line 130
    :catch_121
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "run.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_12a
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "run.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_120

    .line 130
    :catch_133
    move-exception v1

    .line 131
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8e

    .line 137
    :catch_13d
    move-exception v1

    .line 138
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v0    # "dateAndTime":Ljava/lang/String;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "separator":Ljava/lang/String;
    :catch_147
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f7

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_150
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc

    .line 123
    .end local v0    # "dateAndTime":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_159
    move-exception v7

    goto :goto_104

    .line 118
    :catch_15b
    move-exception v1

    goto/16 :goto_64
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2
    .param p1, "filter"    # Lcom/android/server/enterprise/auditlog/Filter;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 296
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 81
    return-void
.end method
