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
    .registers 12
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

    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    const-string v0, "Dumper"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->TAG:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 68
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 69
    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 70
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 71
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 72
    const-string v0, "Dumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumper/constructor Begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 74
    const-string v0, "Dumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumper/constructor End: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 77
    return-void
.end method

.method private fullDump()V
    .registers 11

    .prologue
    .line 250
    const-string v7, "Dumper"

    const-string v8, "fullDump - Begin"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v5, 0x0

    .line 252
    .local v5, "raf":Ljava/io/RandomAccessFile;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 259
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 261
    .local v4, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const-string v7, "Dumper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DUMPER file name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 264
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_50} :catch_e0
    .catchall {:try_start_f .. :try_end_50} :catchall_bb

    .line 266
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :try_start_50
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_99

    .line 267
    :cond_54
    :goto_54
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_ae

    .line 268
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 269
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
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_7e} :catch_7f
    .catchall {:try_start_50 .. :try_end_7e} :catchall_de

    goto :goto_54

    .line 280
    .end local v3    # "line":Ljava/lang/String;
    :catch_7f
    move-exception v0

    .line 281
    .end local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v0, "e":Ljava/lang/Exception;
    :goto_80
    const/4 v7, 0x0

    :try_start_81
    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 282
    const-string v7, "Dumper"

    const-string v8, "Exception on fullDump"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_81 .. :try_end_93} :catchall_de

    .line 285
    if-eqz v5, :cond_98

    .line 287
    :try_start_95
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_cc

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    return-void

    .line 273
    .restart local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_99
    :try_start_99
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v1, v7, [B

    .line 274
    .local v1, "fileBytes":[B
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v5, v1, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 275
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 277
    .end local v1    # "fileBytes":[B
    :cond_ae
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b1} :catch_7f
    .catchall {:try_start_99 .. :try_end_b1} :catchall_de

    move-object v6, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_f

    .line 285
    .end local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_b4
    if-eqz v6, :cond_b9

    .line 287
    :try_start_b6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_d5

    :cond_b9
    :goto_b9
    move-object v5, v6

    .line 292
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_98

    .line 285
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_bb
    move-exception v7

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :goto_bd
    if-eqz v5, :cond_c2

    .line 287
    :try_start_bf
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 285
    :cond_c2
    :goto_c2
    throw v7

    .line 288
    :catch_c3
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "fullDump - IOException Close"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    :catch_cc
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "fullDump - IOException Close"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 288
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_d5
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "fullDump - IOException Close"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_de
    move-exception v7

    goto :goto_bd

    .line 280
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_e0
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_80
.end method

.method private readFileLineByLine(Ljava/io/File;)V
    .registers 12
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v0, 0x0

    .line 183
    .local v0, "aTime":J
    :try_start_3
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_a4
    .catchall {:try_start_3 .. :try_end_a} :catchall_a2

    .line 185
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :cond_a
    :goto_a
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 186
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_65
    .catchall {:try_start_a .. :try_end_15} :catchall_96

    move-result-object v6

    .line 189
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
    .catchall {:try_start_17 .. :try_end_20} :catchall_96

    move-result-wide v0

    .line 192
    :try_start_21
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_23} :catch_65
    .catchall {:try_start_21 .. :try_end_23} :catchall_96

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
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_a0

    :cond_2c
    :goto_2c
    move-object v4, v5

    .line 214
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_2d
    :goto_2d
    return-void

    .line 190
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "time":[Ljava/lang/String;
    :catch_2e
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_a

    .line 195
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_30
    :try_start_30
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v7, v0, v7

    if-ltz v7, :cond_a

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v0, v7

    if-gez v7, :cond_a

    .line 196
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_78

    .line 197
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 198
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
    .catchall {:try_start_30 .. :try_end_64} :catchall_96

    goto :goto_a

    .line 205
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "time":[Ljava/lang/String;
    :catch_65
    move-exception v2

    move-object v4, v5

    .line 206
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_67
    :try_start_67
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_a2

    .line 208
    if-eqz v4, :cond_2d

    .line 210
    :try_start_72
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_2d

    .line 211
    :catch_76
    move-exception v7

    goto :goto_2d

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "time":[Ljava/lang/String;
    :cond_78
    :try_start_78
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
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_94} :catch_65
    .catchall {:try_start_78 .. :try_end_94} :catchall_96

    goto/16 :goto_a

    .line 208
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "time":[Ljava/lang/String;
    :catchall_96
    move-exception v7

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_98
    if-eqz v4, :cond_9d

    .line 210
    :try_start_9a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 208
    :cond_9d
    :goto_9d
    throw v7

    .line 211
    :catch_9e
    move-exception v8

    goto :goto_9d

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_a0
    move-exception v7

    goto :goto_2c

    .line 208
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_a2
    move-exception v7

    goto :goto_98

    .line 205
    :catch_a4
    move-exception v2

    goto :goto_67
.end method

.method private readFullFile(Ljava/io/File;)V
    .registers 10
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 217
    const/4 v3, 0x0

    .line 221
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 222
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_8e
    .catchall {:try_start_1 .. :try_end_e} :catchall_75

    .line 224
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_e
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v5, :cond_5e

    .line 225
    :cond_12
    :goto_12
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_4e

    .line 226
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 227
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

    .line 236
    .end local v2    # "line":Ljava/lang/String;
    :catch_3d
    move-exception v0

    move-object v3, v4

    .line 237
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

    .line 239
    if-eqz v3, :cond_4d

    .line 241
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_85

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-void

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_4e
    move-object v3, v4

    .line 239
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_4f
    :goto_4f
    if-eqz v3, :cond_4d

    .line 241
    :try_start_51
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_4d

    .line 242
    :catch_55
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Dumper"

    const-string v6, "readFullFile - IOException"

    :goto_5a
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v1, v5, [B

    .line 232
    .local v1, "fileBytes":[B
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 233
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_73} :catch_3d
    .catchall {:try_start_5e .. :try_end_73} :catchall_8b

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4f

    .line 239
    .end local v1    # "fileBytes":[B
    :catchall_75
    move-exception v5

    :goto_76
    if-eqz v3, :cond_7b

    .line 241
    :try_start_78
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 239
    :cond_7b
    :goto_7b
    throw v5

    .line 242
    :catch_7c
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "Dumper"

    const-string v7, "readFullFile - IOException"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    :catch_85
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Dumper"

    const-string v6, "readFullFile - IOException"

    goto :goto_5a

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_8b
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_76

    .line 236
    :catch_8e
    move-exception v0

    goto :goto_3f
.end method

.method private selectDumpInterval()V
    .registers 8

    .prologue
    .line 148
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 149
    .local v1, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 150
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v0, 0x1

    .line 152
    .local v0, "firstFile":Z
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 154
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 156
    .restart local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_8

    .line 159
    if-eqz v0, :cond_2f

    .line 160
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 161
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    .line 162
    const/4 v0, 0x0

    .line 163
    goto :goto_8

    .line 166
    :cond_2f
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_41

    .line 167
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFullFile(Ljava/io/File;)V

    goto :goto_8

    .line 169
    :cond_41
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    .line 174
    :cond_48
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 89
    const/4 v2, 0x0

    .line 92
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_145
    .catchall {:try_start_3 .. :try_end_e} :catchall_143

    .line 93
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .local v3, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_e
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    .line 97
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 98
    const-string v5, "----------------------------------------------\n"

    .line 99
    .local v5, "separator":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 101
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 102
    .local v4, "it":Ljava/util/Iterator;
    if-eqz v4, :cond_9a

    .line 103
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 104
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

    .line 105
    .local v6, "temp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_60} :catch_61
    .catchall {:try_start_e .. :try_end_60} :catchall_10f

    goto :goto_36

    .line 122
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_61
    move-exception v1

    move-object v2, v3

    .line 123
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_63
    :try_start_63
    const-string v7, "Dumper"

    const-string v8, "Exception on Dumper Thread"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 125
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_143

    .line 127
    const-string v7, "Dumper"

    const-string v8, "notifyDumpFinished - Send"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v7, v8, v9}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 131
    :try_start_86
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v7, :cond_94

    .line 132
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 133
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_94} :catch_13e

    .line 139
    :cond_94
    :goto_94
    if-eqz v2, :cond_99

    .line 140
    :try_start_96
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_137

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :cond_99
    :goto_99
    return-void

    .line 110
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "separator":Ljava/lang/String;
    :cond_9a
    :try_start_9a
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

    .line 111
    .local v0, "dateAndTime":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 113
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 114
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v7, v10

    if-ltz v7, :cond_dc

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v7, v7, v10

    if-gez v7, :cond_10b

    .line 115
    :cond_dc
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 116
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v7, :cond_e6

    .line 117
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_e6} :catch_61
    .catchall {:try_start_9a .. :try_end_e6} :catchall_10f

    .line 127
    :cond_e6
    :goto_e6
    const-string v7, "Dumper"

    const-string v8, "notifyDumpFinished - Send"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v7, v8, v9}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 131
    :try_start_f6
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v7, :cond_104

    .line 132
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 133
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_104} :catch_13c

    .line 139
    :cond_104
    :goto_104
    if-eqz v3, :cond_109

    .line 140
    :try_start_106
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_13a

    :cond_109
    :goto_109
    move-object v2, v3

    .line 143
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_99

    .line 119
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    :cond_10b
    :try_start_10b
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_61
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10f

    goto :goto_e6

    .line 127
    .end local v0    # "dateAndTime":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    :catchall_10f
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_111
    const-string v8, "Dumper"

    const-string v9, "notifyDumpFinished - Send"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v8, v9, v10}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 131
    :try_start_121
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v8, :cond_12f

    .line 132
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 133
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_12f} :catch_141

    .line 139
    :cond_12f
    :goto_12f
    if-eqz v2, :cond_134

    .line 140
    :try_start_131
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_135

    .line 127
    :cond_134
    :goto_134
    throw v7

    .line 141
    :catch_135
    move-exception v8

    goto :goto_134

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_137
    move-exception v7

    goto/16 :goto_99

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v0    # "dateAndTime":Ljava/lang/String;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "separator":Ljava/lang/String;
    :catch_13a
    move-exception v7

    goto :goto_109

    .line 135
    :catch_13c
    move-exception v7

    goto :goto_104

    .end local v0    # "dateAndTime":Ljava/lang/String;
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_13e
    move-exception v7

    goto/16 :goto_94

    .end local v1    # "e":Ljava/io/IOException;
    :catch_141
    move-exception v8

    goto :goto_12f

    .line 127
    :catchall_143
    move-exception v7

    goto :goto_111

    .line 122
    :catch_145
    move-exception v1

    goto/16 :goto_63
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
    .line 80
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2
    .param p1, "filter"    # Lcom/android/server/enterprise/auditlog/Filter;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 297
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 85
    return-void
.end method
