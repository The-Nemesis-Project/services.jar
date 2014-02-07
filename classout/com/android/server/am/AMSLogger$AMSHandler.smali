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
    .line 160
    iput-object p1, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->this$0:Lcom/android/server/am/AMSLogger;

    .line 161
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    iput-object p2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    .line 165
    iput-wide p4, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->maxSize:J

    .line 166
    invoke-direct {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 167
    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 212
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 214
    .local v0, "buf":[B
    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_19

    .line 215
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_e

    .line 217
    :cond_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 218
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 219
    return-void
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->maxSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4f

    .line 174
    :try_start_19
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_30

    .line 175
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 176
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_80

    .line 196
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_4c

    .line 197
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 198
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 200
    :try_start_3a
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 201
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_7e

    .line 206
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v2

    .line 182
    :cond_4f
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_5d

    .line 183
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 184
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 186
    :cond_5d
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/AMSLogger$AMSHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "oldFile":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 189
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 190
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_7b} :catch_7c

    goto :goto_30

    .line 192
    .end local v1    # "oldFile":Ljava/io/File;
    :catch_7c
    move-exception v2

    goto :goto_30

    .line 203
    :catch_7e
    move-exception v2

    goto :goto_4c

    .line 178
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
    .line 237
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 240
    :cond_9
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 234
    :cond_9
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/am/AMSLogger$AMSHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 228
    :cond_6
    :goto_6
    return-void

    .line 224
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 225
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6
.end method
