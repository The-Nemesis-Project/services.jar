.class Lcom/android/server/am/AMSLogger$AMSHandler;
.super Ljava/util/logging/Handler;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AMSLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/am/AMSLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .param p2, "newLogFile"    # Ljava/lang/String;
    .param p3, "oldLogFile"    # Ljava/lang/String;
    .param p4, "maxSize"    # J

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->this$0:Lcom/android/server/am/AMSLogger;

    .line 330
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    iput-object p2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    .line 333
    iput-object p3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    .line 334
    iput-wide p4, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->maxSize:J

    .line 335
    invoke-direct {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 336
    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v3, 0x0

    .line 380
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 382
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_50

    .line 383
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_7
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_52

    .line 384
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_e
    new-array v0, v8, [B

    .line 386
    .local v0, "buf":[B
    :goto_10
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_37

    .line 387
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_10

    .line 389
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    :catch_1b
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 391
    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1e
    if-eqz v3, :cond_24

    .line 392
    :try_start_20
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 393
    const/4 v3, 0x0

    .line 395
    :cond_24
    if-eqz v6, :cond_2a

    .line 396
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_3a

    .line 397
    const/4 v6, 0x0

    .line 404
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    if-eqz v3, :cond_30

    .line 405
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 406
    const/4 v3, 0x0

    .line 408
    :cond_30
    if-eqz v6, :cond_36

    .line 409
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_35} :catch_45

    .line 410
    const/4 v6, 0x0

    .line 415
    :cond_36
    :goto_36
    return-void

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_37
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 402
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2a

    .line 399
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v2

    .line 400
    .local v2, "ie":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Couldn\'t close FileInputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 412
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ie":Ljava/io/IOException;
    :catch_45
    move-exception v1

    .line 413
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Couldn\'t close FileInputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    :catch_50
    move-exception v1

    goto :goto_1e

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_52
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1e
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 339
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->maxSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4f

    .line 343
    :try_start_19
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_30

    .line 344
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 345
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_80

    .line 365
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_4c

    .line 366
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 367
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 369
    :try_start_3a
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 370
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_7e

    .line 375
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v2

    .line 351
    :cond_4f
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_5d

    .line 352
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 353
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 355
    :cond_5d
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/AMSLogger$AMSHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, "oldFile":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 358
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 359
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    .line 360
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_7b} :catch_7c

    goto :goto_30

    .line 361
    .end local v1    # "oldFile":Ljava/io/File;
    :catch_7c
    move-exception v2

    goto :goto_30

    .line 372
    :catch_7e
    move-exception v2

    goto :goto_4c

    .line 347
    :catch_80
    move-exception v2

    goto :goto_30
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 435
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 437
    :cond_9
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 429
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 431
    :cond_9
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/am/AMSLogger$AMSHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 425
    :cond_6
    :goto_6
    return-void

    .line 420
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 421
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_6

    .line 422
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->flush()V

    goto :goto_6
.end method
